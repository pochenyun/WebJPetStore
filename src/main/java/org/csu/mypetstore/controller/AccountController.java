package org.csu.mypetstore.controller;

import org.csu.mypetstore.domain.Account;
import org.csu.mypetstore.domain.MD5;
import org.csu.mypetstore.service.AccountService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.support.SessionStatus;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

@Controller
@RequestMapping("/account")
@SessionAttributes(value = {"account", "checkcode"})
public class AccountController
{
    @Autowired
    private AccountService accountService;

    // 日志
    private final Logger logger = LoggerFactory.getLogger(AccountController.class);

    // 跳往登录界面
    @GetMapping("signOnForm")
    public String signOnForm()
    {
        logger.info("进入登录界面");
        return "account/SignonForm";
    }

    @PostMapping("/signOn")
    public String signOn(String username, String password, String vCode, Model model)
    {
        MD5 md5 = new MD5();
        md5.start(password);
        password = md5.getResultMessage().toUpperCase();

        Account account = accountService.getAccount(username, password);
        String checkcode = (String) model.getAttribute("checkcode");
        //获得输入的验证码值
//       String value1=request.getParameter("vCode");
        /*获取图片的值*/
//       String value2=(String)session.getAttribute("checkcode");
        System.out.println(vCode);
        System.out.println(checkcode);
        System.out.println(username);
        System.out.println(password);

        Boolean isSame = false;
        /*对比两个值（字母不区分大小写）*/
        if (vCode.equalsIgnoreCase(checkcode))
        {
            isSame = true;
        }


        if (account == null || !isSame)
        {
            if (!isSame)
            {
                model.addAttribute("messageSignOn", "Invalid Verification Code.   Signon failed.");
                System.out.println("返回");
            }
            else
            {
                model.addAttribute("messageSignOn", "Invalid username or password.  Signon failed.");

            }
            return "account/SignonForm";
        }
        else
        {
            account.setPassword(null);
            model.addAttribute("account", account);
            System.out.println("成功" + ":   " + account.getBannerName());
            return "catalog/Main";
        }


    }


    @GetMapping("newAccountForm")
    public String newAccountForm()
    {
        return "account/NewAccountForm";
    }


    @PostMapping("newAccount")
    public String newAccount(Account account, String vCode, Model model)
    {

        System.out.println("转入");
        String checkcode = (String) model.getAttribute("checkcode");
        Boolean isSame = false;
        /*对比两个值（字母不区分大小写）*/
        if (vCode.equalsIgnoreCase(checkcode))
        {
            isSame = true;
        }

        System.out.println("验证码为：" + checkcode);

        MD5 md5 = new MD5();
        md5.start(account.getPassword());
        account.setPassword(md5.getResultMessage().toUpperCase());

        Account account1 = new Account();
        account1.setUsername(account.getUsername());
        account1.setPassword(account.getPassword());
        account1.setFirstName(account.getFirstName());
        account1.setLastName(account.getLastName());
        account1.setEmail(account.getEmail());
        account1.setPhone(account.getPhone());
        account1.setAddress1(account.getAddress1());
        account1.setAddress2(account.getAddress2());
        account1.setCity(account.getCity());
        account1.setState(account.getState());
        account1.setZip(account.getZip());
        account1.setCountry(account.getCountry());
        account1.setLanguagePreference(account.getLanguagePreference());
        account1.setFavouriteCategoryId(account.getFavouriteCategoryId());
        account1.setListOption(account.isListOption());
        account1.setBannerOption(account.isBannerOption());
        System.out.println(account.getZip());
        System.out.println(account1);

        if (isSame)
        {
            accountService.insertAccount(account1);
            System.out.println("验证码正确");
            return "catalog/Main";
        }
        else
        {
            model.addAttribute("messageAccount", "Invalid Verification Code.");
            return "account/NewAccountForm";
        }

    }


    @GetMapping("editAccount")
    public String editAccount()
    {
        System.out.println("editaccount");
        return "account/EditAccountForm";
    }


    @PostMapping("saveAccount")
    public String saveAccount(Account account, Model model)
    {

        Account account1 = (Account) model.getAttribute("account");
        account.setUsername(account1.getUsername());

        accountService.updateAccount(account);

        model.addAttribute("account", account);

        return "account/EditAccountForm";
    }

//   @GetMapping("signOff")
//   public String signOff(Model model)
//   {
//
//       System.out.println("正在注销");
//      Account account = null;
//
//       //HttpSession session = request.getSession();
//       account = (Account)model.getAttribute("account");
//               account = null;
//       System.out.println("注销成功");
//       System.out.println(account);
//     return "catalog/Main";
//
//   }

    @GetMapping("signOff")
    public String signOff(Model model, HttpSession session, SessionStatus sessionStatus)
    {
        //BUG已改
        Account account = (Account)session.getAttribute("account");
        account = null;
        session.setAttribute("account",account);
        model.addAttribute("account",account);

//        session.invalidate();
//        sessionStatus.setComplete();

        return "catalog/Main";

    }

    @RequestMapping("verificationCode")
    public void verificationCode(HttpServletRequest request, HttpServletResponse response, Model model) throws IOException
    {
        response.setContentType("image/jpeg");
        HttpSession session = request.getSession();
        int width = 60;
        int height = 20;

        //设置浏览器不要缓存此图片
        response.setHeader("Pragma", "No-cache");
        response.setHeader("Cache-Control", "no-cache");
        response.setDateHeader("Expires", 0);

        //创建内存图像并获得图形上下文
        BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
        Graphics g = image.getGraphics();

        /*
         * 产生随机验证码
         * 定义验证码的字符表
         */
        String chars = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        char[] rands = new char[4];
        for (int i = 0; i < 4; i++)
        {
            int rand = (int) (Math.random() * 36);
            rands[i] = chars.charAt(rand);
        }

        /*
         * 产生图像
         * 画背景
         */
        g.setColor(new Color(0xDCDCDC));
        g.fillRect(0, 0, width, height);

        /*
         * 随机产生120个干扰点
         */

        for (int i = 0; i < 120; i++)
        {
            int x = (int) (Math.random() * width);
            int y = (int) (Math.random() * height);
            int red = (int) (Math.random() * 255);
            int green = (int) (Math.random() * 255);
            int blue = (int) (Math.random() * 255);
            g.setColor(new Color(red, green, blue));
            g.drawOval(x, y, 1, 0);
        }
        g.setColor(Color.BLACK);
        g.setFont(new Font(null, Font.ITALIC | Font.BOLD, 18));

        //在不同高度输出验证码的不同字符
        g.drawString("" + rands[0], 1, 17);
        g.drawString("" + rands[1], 16, 15);
        g.drawString("" + rands[2], 31, 18);
        g.drawString("" + rands[3], 46, 16);
        g.dispose();

        //将图像传到客户端
        ServletOutputStream sos = response.getOutputStream();
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        ImageIO.write(image, "JPEG", baos);
        byte[] buffer = baos.toByteArray();
        response.setContentLength(buffer.length);
        sos.write(buffer);
        baos.close();
        sos.close();


        model.addAttribute("checkcode", new String(rands));
        System.out.println("已放入");
//      session.setAttribute("checkcode", new String(rands));

    }


}

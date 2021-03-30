package org.csu.mypetstore.domain;

import java.io.*;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Log implements Serializable
{
    private static final long serialVersionUID = 6804536240033522156L;

    public final static int OUT_CONSOLE=1;
    public final static int OUT_FILE=2;
    public final static int OUT_BOTH=3;
    public final static int DEBUG_LEVEL=0;
    public final static int LOG_LEVEL=3;
    public final static int INFO_LEVEL=6;
    public final static int WARN_LEVEL=9;
    public final static int ERROR_LEVEL=12;
    public final static int FATAL_LEVEL=15;
    protected static int level=DEBUG_LEVEL;// 输出的级别开关，高于指定级别的输出
    protected static int out=OUT_CONSOLE; //输出模式，输出到控制台，文件或者都输出
    public static String logdir="log";    // 保存日志文件的目录
    protected static BufferedWriter bw =null;
    protected static String currentDate = "";
    protected static Date data=null;
    protected static StringBuilder bb=new StringBuilder();
    protected static String marsk=" [ERROE] ";
    /**
     * 日志函数，不受 level 限制，始终打印，最高级别
     * @param s
     */
    synchronized public static String log(Object ...s) {
        bb.delete(0, bb.length());
        bb.append(time());
        bb.append(marsk);
        // 获取调用的位置
        //StackTraceElement[] stack = new Exception().getStackTrace();
        //bb.append(stack[2].getClassName().replaceAll("\\$\n.$", ""));
        bb.append("  ");

        for(Object str : s) {
            bb.append(str);
            bb.append(" ");
        }
        //out(bb.toString());
        return bb.toString();
    }

    public static String logInfomation(Object ...s){
        marsk = " ";
        return log(s);
    }


    protected static BufferedWriter getWriter() {
        if(currentDate.equals(new SimpleDateFormat("dd").format(data))) {
            return bw;
        }
        File fi=new File(logdir
                +File.separator+new SimpleDateFormat("yyyy年").format(data)
                +File.separator+new SimpleDateFormat("MM月").format(data)
                +File.separator+new SimpleDateFormat("dd").format(data)+"日.log");
        try {
            if(!fi.exists()) {
                if(!fi.getParentFile().exists())
                    fi.getParentFile().mkdirs();
                fi.createNewFile();
            }
            FileOutputStream fiou = new FileOutputStream(fi,true);
            OutputStreamWriter opw = new OutputStreamWriter(fiou, "UTF-8");
            bw= new BufferedWriter(opw);
        }catch(Exception e) {

        }
        return bw;
    }
    protected static String time() {
        data = new Date();
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(data);
    }


    public static void init(int out_put_level,int out2where,String log_dir) {
        level = out_put_level;
        out = out2where;
        logdir = log_dir;
    }

    public static void main(String[] args) {

    }
}

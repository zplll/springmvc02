package com.test;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by zipon on 2016/10/7.
 */
public class filesEach {
    public static List<String> showAllFiles(File dir) throws Exception {
        List<String> resultfs = new ArrayList<String>();

        File[] fs = dir.listFiles();

        for (int i = 0; i < fs.length; i++) {
            //System.out.println(fs[i].getAbsolutePath());
            if (fs[i].getName().endsWith(".jpg")) {
                resultfs.add(fs[i].getAbsolutePath().toString());

            }

        }
        return resultfs;
    }
    public static void  main(String[] args) throws Exception {
        System.out.println(filesEach.showAllFiles(new File("D:\\worktools\\zptest\\douban")));
    }
}
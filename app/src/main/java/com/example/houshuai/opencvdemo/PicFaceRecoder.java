package com.example.houshuai.opencvdemo;

/**
 * Created by HouShuai on 2016/11/7.
 */

public class PicFaceRecoder {
    static {
        System.loadLibrary("Face");
    }

    public  native static int[] getFaceNumber(int[] buffer,String filePath,int w,int h);
}

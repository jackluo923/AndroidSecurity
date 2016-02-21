package com.mixpanel.android.a;

import com.admarvel.android.ads.Constants;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;

public class c {
    public static String a(InputStream inputStream) {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        StringBuilder stringBuilder = new StringBuilder();
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine != null) {
                stringBuilder.append(readLine + Constants.FORMATTER);
            } else {
                bufferedReader.close();
                return stringBuilder.toString();
            }
        }
    }
}
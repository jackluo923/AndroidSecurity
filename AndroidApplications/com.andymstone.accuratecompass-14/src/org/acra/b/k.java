package org.acra.b;

import android.content.Context;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import org.acra.e.a;

class k {
    public static String a(Context context, String str, int i) {
        BufferedReader bufferedReader;
        a aVar = new a(i);
        bufferedReader = str.contains("/") ? new BufferedReader(new InputStreamReader(new FileInputStream(str)), 1024) : new BufferedReader(new InputStreamReader(context.openFileInput(str)), 1024);
        Object readLine = bufferedReader.readLine();
        while (readLine != null) {
            aVar.add(new StringBuilder(String.valueOf(readLine)).append("\n").toString());
            readLine = bufferedReader.readLine();
        }
        return aVar.toString();
    }
}
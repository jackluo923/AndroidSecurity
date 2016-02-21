package org.acra.b;

import android.os.Process;
import android.util.Log;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;
import org.acra.ACRA;

final class h {
    public static String a() {
        StringBuilder stringBuilder = new StringBuilder();
        try {
            List arrayList = new ArrayList();
            arrayList.add("dumpsys");
            arrayList.add("meminfo");
            arrayList.add(Integer.toString(Process.myPid()));
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec((String[]) arrayList.toArray(new String[arrayList.size()])).getInputStream()), 8192);
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    return stringBuilder.toString();
                }
                stringBuilder.append(readLine);
                stringBuilder.append("\n");
            }
        } catch (IOException e) {
            Log.e(ACRA.LOG_TAG, "DumpSysCollector.meminfo could not retrieve data", e);
        }
    }
}
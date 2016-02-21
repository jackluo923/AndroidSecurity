package org.acra.b;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import org.acra.ACRA;

final class p {
    public static String a(Context context) {
        StringBuilder stringBuilder = new StringBuilder();
        Map treeMap = new TreeMap();
        treeMap.put("default", PreferenceManager.getDefaultSharedPreferences(context));
        String[] c = ACRA.getConfig().c();
        if (c != null) {
            int length = c.length;
            int i = 0;
            while (i < length) {
                String str = c[i];
                treeMap.put(str, context.getSharedPreferences(str, 0));
                i++;
            }
        }
        Iterator it = treeMap.keySet().iterator();
        while (it.hasNext()) {
            String str2 = (String) it.next();
            SharedPreferences sharedPreferences = (SharedPreferences) treeMap.get(str2);
            if (sharedPreferences != null) {
                Map all = sharedPreferences.getAll();
                if (all == null || all.size() <= 0) {
                    stringBuilder.append(str2).append('=').append("empty\n");
                } else {
                    Iterator it2 = all.keySet().iterator();
                    while (it2.hasNext()) {
                        String str3 = (String) it2.next();
                        if (!a(str3)) {
                            if (all.get(str3) != null) {
                                stringBuilder.append(str2).append('.').append(str3).append('=').append(all.get(str3).toString()).append("\n");
                            } else {
                                stringBuilder.append(str2).append('.').append(str3).append('=').append("null\n");
                            }
                        }
                    }
                }
            } else {
                stringBuilder.append("null\n");
            }
            stringBuilder.append('\n');
        }
        return stringBuilder.toString();
    }

    private static boolean a(String str) {
        String[] I = ACRA.getConfig().I();
        int length = I.length;
        int i = 0;
        while (i < length) {
            if (str.matches(I[i])) {
                return true;
            }
            i++;
        }
        return false;
    }
}
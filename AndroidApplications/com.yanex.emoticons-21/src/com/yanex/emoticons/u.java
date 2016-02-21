package com.yanex.emoticons;

import android.content.Context;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

public final class u {
    private final Context a;

    public u(Context context) {
        this.a = context;
    }

    public final Map a() {
        Map hashMap = new HashMap();
        b bVar = new b(this.a);
        String a = bVar.a("tabState");
        bVar.a();
        if (a != null) {
            String[] split = a.split("\u0015");
            int i = 0;
            while (i < split.length) {
                String[] split2 = split[i].split("\u0016");
                if (split2.length >= 2 && split2[0].length() > 0 && split2[1].length() > 0) {
                    hashMap.put(split2[0], Boolean.valueOf(!split2[1].equals("0")));
                }
                i++;
            }
        }
        return hashMap;
    }

    public final void a(Map map) {
        StringBuffer stringBuffer = new StringBuffer();
        Iterator it = map.entrySet().iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            if (stringBuffer.length() > 0) {
                stringBuffer.append("\u0015");
            }
            stringBuffer.append(((String) entry.getKey()) + "\u0016" + (((Boolean) entry.getValue()).booleanValue() ? "1" : "0"));
        }
        b bVar = new b(this.a);
        bVar.a("tabState", stringBuffer.toString());
        bVar.a();
    }
}
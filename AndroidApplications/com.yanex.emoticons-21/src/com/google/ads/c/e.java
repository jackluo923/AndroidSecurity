package com.google.ads.c;

import com.google.ads.util.g;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

public abstract class e {
    public final void a(Map map) {
        Map hashMap = new HashMap();
        Field[] fields = getClass().getFields();
        int length = fields.length;
        int i = 0;
        while (i < length) {
            Field field = fields[i];
            g gVar = (g) field.getAnnotation(g.class);
            if (gVar != null) {
                hashMap.put(gVar.a(), field);
            }
            i++;
        }
        if (hashMap.isEmpty()) {
            g.e("No server options fields detected.  To suppress this message either add a field with the @Parameter annotation, or override the load() method");
        }
        Iterator it = map.entrySet().iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            Field field2 = (Field) hashMap.remove(entry.getKey());
            if (field2 != null) {
                try {
                    field2.set(this, entry.getValue());
                } catch (IllegalAccessException e) {
                    g.b(new StringBuilder("Server Option '").append((String) entry.getKey()).append("' could not be set: Illegal Access").toString());
                } catch (IllegalArgumentException e2) {
                    g.b(new StringBuilder("Server Option '").append((String) entry.getKey()).append("' could not be set: Bad Type").toString());
                }
            } else {
                g.e(new StringBuilder("Unexpected Server Option: ").append((String) entry.getKey()).append(" = '").append((String) entry.getValue()).append("'").toString());
            }
        }
        String str = null;
        Iterator it2 = hashMap.values().iterator();
        while (it2.hasNext()) {
            String str2;
            Field field3 = (Field) it2.next();
            if (((g) field3.getAnnotation(g.class)).b()) {
                g.b(new StringBuilder("Required Server Option missing: ").append(((g) field3.getAnnotation(g.class)).a()).toString());
                str2 = (str == null ? "" : str + ", ") + ((g) field3.getAnnotation(g.class)).a();
            } else {
                str2 = str;
            }
            str = str2;
        }
        if (str != null) {
            throw new f(new StringBuilder("Required Server Option(s) missing: ").append(str).toString());
        }
    }
}
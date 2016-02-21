package com.google.ads.mediation;

import com.google.ads.util.b;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

public abstract class MediationServerParameters {

    public class MappingException extends Exception {
        public MappingException(String str) {
            super(str);
        }
    }

    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    public @interface Parameter {
        String a();

        boolean b() default true;
    }

    protected void a() {
    }

    public void a(Map map) {
        Map hashMap = new HashMap();
        Field[] fields = getClass().getFields();
        int length = fields.length;
        int i = 0;
        while (i < length) {
            Field field = fields[i];
            Parameter parameter = (Parameter) field.getAnnotation(Parameter.class);
            if (parameter != null) {
                hashMap.put(parameter.a(), field);
            }
            i++;
        }
        if (hashMap.isEmpty()) {
            b.e("No server options fields detected.  To suppress this message either add a field with the @Parameter annotation, or override the load() method");
        }
        Iterator it = map.entrySet().iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            Field field2 = (Field) hashMap.remove(entry.getKey());
            if (field2 != null) {
                try {
                    field2.set(this, entry.getValue());
                } catch (IllegalAccessException e) {
                    b.b("Server Option '" + ((String) entry.getKey()) + "' could not be set: Illegal Access");
                } catch (IllegalArgumentException e2) {
                    b.b("Server Option '" + ((String) entry.getKey()) + "' could not be set: Bad Type");
                }
            } else {
                b.e("Unexpected Server Option: " + ((String) entry.getKey()) + " = '" + ((String) entry.getValue()) + "'");
            }
        }
        String str = null;
        Iterator it2 = hashMap.values().iterator();
        while (it2.hasNext()) {
            String str2;
            field2 = (Field) it2.next();
            if (((Parameter) field2.getAnnotation(Parameter.class)).b()) {
                b.b("Required Server Option missing: " + ((Parameter) field2.getAnnotation(Parameter.class)).a());
                str2 = (str == null ? "" : str + ", ") + ((Parameter) field2.getAnnotation(Parameter.class)).a();
            } else {
                str2 = str;
            }
            str = str2;
        }
        if (str != null) {
            throw new MappingException("Required Server Option(s) missing: " + str);
        }
        a();
    }
}
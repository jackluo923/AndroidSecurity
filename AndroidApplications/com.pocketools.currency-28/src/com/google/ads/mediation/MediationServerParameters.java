package com.google.ads.mediation;

import com.google.ads.util.b;
import com.pocketools.currency.PocketCurrency;
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

    public static class MappingException extends Exception {
        public MappingException(String message) {
            super(message);
        }
    }

    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    protected static @interface Parameter {
        String name();

        boolean required() default true;
    }

    protected void a() {
    }

    public void load(Map<String, String> parameters) throws MappingException {
        Map hashMap = new HashMap();
        Field[] fields = getClass().getFields();
        int length = fields.length;
        int i = 0;
        while (i < length) {
            Field field = fields[i];
            Parameter parameter = (Parameter) field.getAnnotation(Parameter.class);
            if (parameter != null) {
                hashMap.put(parameter.name(), field);
            }
            i++;
        }
        if (hashMap.isEmpty()) {
            b.e("No server options fields detected.  To suppress this message either add a field with the @Parameter annotation, or override the load() method");
        }
        Iterator it = parameters.entrySet().iterator();
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
            if (((Parameter) field2.getAnnotation(Parameter.class)).required()) {
                b.b("Required Server Option missing: " + ((Parameter) field2.getAnnotation(Parameter.class)).name());
                str2 = (str == null ? PocketCurrency.AD_MOB_KEYWORD_HINT : str + ", ") + ((Parameter) field2.getAnnotation(Parameter.class)).name();
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
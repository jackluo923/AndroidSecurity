package com.google.gson;

import java.lang.reflect.Field;

public enum FieldNamingPolicy implements FieldNamingStrategy {
    IDENTITY {
        public String translateName(Field field) {
            return field.getName();
        }
    },
    UPPER_CAMEL_CASE {
        public String translateName(Field field) {
            return FieldNamingPolicy.access$100(field.getName());
        }
    },
    UPPER_CAMEL_CASE_WITH_SPACES {
        public String translateName(Field field) {
            return FieldNamingPolicy.access$100(FieldNamingPolicy.access$200(field.getName(), " "));
        }
    },
    LOWER_CASE_WITH_UNDERSCORES {
        public String translateName(Field field) {
            return FieldNamingPolicy.access$200(field.getName(), "_").toLowerCase();
        }
    },
    LOWER_CASE_WITH_DASHES {
        public String translateName(Field field) {
            return FieldNamingPolicy.access$200(field.getName(), "-").toLowerCase();
        }
    };

    private static String modifyString(char c, String str, int i) {
        return i < str.length() ? c + str.substring(i) : String.valueOf(c);
    }

    private static String separateCamelCase(String str, String str2) {
        StringBuilder stringBuilder = new StringBuilder();
        int i = 0;
        while (i < str.length()) {
            char charAt = str.charAt(i);
            if (Character.isUpperCase(charAt) && stringBuilder.length() != 0) {
                stringBuilder.append(str2);
            }
            stringBuilder.append(charAt);
            i++;
        }
        return stringBuilder.toString();
    }

    private static String upperCaseFirstLetter(String str) {
        StringBuilder stringBuilder = new StringBuilder();
        int i = 0;
        char charAt = str.charAt(0);
        while (i < str.length() - 1 && !Character.isLetter(charAt)) {
            stringBuilder.append(charAt);
            i++;
            charAt = str.charAt(i);
        }
        if (i == str.length()) {
            return stringBuilder.toString();
        }
        return Character.isUpperCase(charAt) ? str : stringBuilder.append(modifyString(Character.toUpperCase(charAt), str, i + 1)).toString();
    }
}
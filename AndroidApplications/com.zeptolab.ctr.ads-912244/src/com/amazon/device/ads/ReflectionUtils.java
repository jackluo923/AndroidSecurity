package com.amazon.device.ads;

public class ReflectionUtils {
    public static boolean isClassAvailable(String str) {
        try {
            Class.forName(str);
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }
}
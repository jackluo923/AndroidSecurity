package com.IQzone.postitial.obfuscated;

public abstract class a {
    public final String a;
    public final int b;
    public final String c;
    public final String d;

    public a(String str, int i, String str2, String str3) {
        if (str == null) {
            throw new NullPointerException("<GeneralRequest><1>, S cannot be null");
        }
        this.a = str;
        this.b = i;
        this.c = str2;
        this.d = str3;
    }
}
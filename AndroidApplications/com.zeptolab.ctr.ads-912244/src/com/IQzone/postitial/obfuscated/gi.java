package com.IQzone.postitial.obfuscated;

public abstract class gi {
    public final String a;
    public final String b;

    protected gi(String str, String str2, String str3) {
        if (str == null) {
            throw new NullPointerException("<GeneralResponse><1>, S cannot be null");
        } else if (str3 == null) {
            throw new NullPointerException("<GeneralResponse><2>, I cannot be null");
        } else if (str2 == null) {
            throw new NullPointerException("<GeneralResponse><3>, M cannot be null");
        } else {
            this.a = str2;
            this.b = str3;
        }
    }
}
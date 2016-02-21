package me.kiip.internal.c;

public enum i {
    CACHE,
    CONDITIONAL_CACHE,
    NETWORK;

    static {
        a = new i("CACHE", 0);
        b = new i("CONDITIONAL_CACHE", 1);
        c = new i("NETWORK", 2);
        d = new i[]{a, b, c};
    }

    public boolean a() {
        return this == b || this == c;
    }
}
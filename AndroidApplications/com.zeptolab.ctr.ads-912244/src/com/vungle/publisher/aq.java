package com.vungle.publisher;

public enum aq {
    GINGERBREAD(9),
    KITKAT(19);
    public int c;

    static {
        a = new aq("GINGERBREAD", 0, 9);
        b = new aq("KITKAT", 1, 19);
        d = new aq[]{a, b};
    }

    private aq(int i) {
        this.c = i;
    }
}
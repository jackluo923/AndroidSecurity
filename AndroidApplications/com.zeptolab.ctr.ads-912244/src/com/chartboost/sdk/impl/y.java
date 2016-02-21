package com.chartboost.sdk.impl;

import java.nio.ByteOrder;
import java.util.logging.Level;
import java.util.logging.Logger;

public class y extends al {
    static final Logger a;
    static final boolean b;
    public static final ByteOrder c;
    static final int d;
    static final bd e;

    static {
        a = Logger.getLogger("com.mongodb");
        b = Boolean.getBoolean("DEBUG.MONGO");
        if (a.getLevel() == null) {
            if (b) {
                a.setLevel(Level.ALL);
            } else {
                a.setLevel(Level.WARNING);
            }
        }
        c = ByteOrder.LITTLE_ENDIAN;
        d = Integer.parseInt(System.getProperty("MONGO.POOLSIZE", "10"));
        e = new bd(-1, -1, -1);
    }
}
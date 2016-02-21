package com.inmobi.commons;

public enum SexualOrientation {
    STRAIGHT,
    GAY,
    BISEXUAL,
    UNKNOWN;

    static {
        STRAIGHT = new SexualOrientation("STRAIGHT", 0);
        GAY = new SexualOrientation("GAY", 1);
        BISEXUAL = new SexualOrientation("BISEXUAL", 2);
        UNKNOWN = new SexualOrientation("UNKNOWN", 3);
        a = new SexualOrientation[]{STRAIGHT, GAY, BISEXUAL, UNKNOWN};
    }
}
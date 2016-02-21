package com.inmobi.commons;

public enum HasChildren {
    TRUE,
    FALSE,
    UNKNOWN;

    static {
        TRUE = new HasChildren("TRUE", 0);
        FALSE = new HasChildren("FALSE", 1);
        UNKNOWN = new HasChildren("UNKNOWN", 2);
        a = new HasChildren[]{TRUE, FALSE, UNKNOWN};
    }
}
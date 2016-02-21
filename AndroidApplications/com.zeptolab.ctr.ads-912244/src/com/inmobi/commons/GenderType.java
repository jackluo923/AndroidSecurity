package com.inmobi.commons;

public enum GenderType {
    UNKNOWN,
    MALE,
    FEMALE;

    static {
        UNKNOWN = new GenderType("UNKNOWN", 0);
        MALE = new GenderType("MALE", 1);
        FEMALE = new GenderType("FEMALE", 2);
        a = new GenderType[]{UNKNOWN, MALE, FEMALE};
    }
}
package com.inmobi.commons;

public enum MaritalStatus {
    SINGLE,
    RELATIONSHIP,
    ENGAGED,
    DIVORCED,
    UNKNOWN;

    static {
        SINGLE = new MaritalStatus("SINGLE", 0);
        RELATIONSHIP = new MaritalStatus("RELATIONSHIP", 1);
        ENGAGED = new MaritalStatus("ENGAGED", 2);
        DIVORCED = new MaritalStatus("DIVORCED", 3);
        UNKNOWN = new MaritalStatus("UNKNOWN", 4);
        a = new MaritalStatus[]{SINGLE, RELATIONSHIP, ENGAGED, DIVORCED, UNKNOWN};
    }
}
package com.inmobi.commons;

public enum EthnicityType {
    HISPANIC,
    AFRICANAMERICAN,
    ASIAN,
    CAUCASIAN,
    OTHER,
    UNKNOWN;

    static {
        HISPANIC = new EthnicityType("HISPANIC", 0);
        AFRICANAMERICAN = new EthnicityType("AFRICANAMERICAN", 1);
        ASIAN = new EthnicityType("ASIAN", 2);
        CAUCASIAN = new EthnicityType("CAUCASIAN", 3);
        OTHER = new EthnicityType("OTHER", 4);
        UNKNOWN = new EthnicityType("UNKNOWN", 5);
        a = new EthnicityType[]{HISPANIC, AFRICANAMERICAN, ASIAN, CAUCASIAN, OTHER, UNKNOWN};
    }
}
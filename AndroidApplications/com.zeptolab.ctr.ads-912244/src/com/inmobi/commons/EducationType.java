package com.inmobi.commons;

public enum EducationType {
    HIGHSCHOOLORLESS,
    COLLEGEORGRADUATE,
    POSTGRADUATEORABOVE,
    UNKNOWN;

    static {
        HIGHSCHOOLORLESS = new EducationType("HIGHSCHOOLORLESS", 0);
        COLLEGEORGRADUATE = new EducationType("COLLEGEORGRADUATE", 1);
        POSTGRADUATEORABOVE = new EducationType("POSTGRADUATEORABOVE", 2);
        UNKNOWN = new EducationType("UNKNOWN", 3);
        a = new EducationType[]{HIGHSCHOOLORLESS, COLLEGEORGRADUATE, POSTGRADUATEORABOVE, UNKNOWN};
    }
}
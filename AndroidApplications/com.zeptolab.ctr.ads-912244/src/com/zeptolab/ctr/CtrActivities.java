package com.zeptolab.ctr;

public class CtrActivities {
    public static final Class MAIN_ACTIVITY;
    public static final Class VIDEO_ACTIVITY;

    static {
        MAIN_ACTIVITY = CtrApp.class;
        VIDEO_ACTIVITY = CtrVideoActivity.class;
    }
}
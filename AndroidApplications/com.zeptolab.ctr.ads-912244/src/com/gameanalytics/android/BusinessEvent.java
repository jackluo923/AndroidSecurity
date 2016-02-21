package com.gameanalytics.android;

public class BusinessEvent {
    private int amount;
    private String area;
    private String build;
    private String currency;
    private String event_id;
    private String session_id;
    private String user_id;
    private float x;
    private float y;
    private float z;

    public BusinessEvent(String str, String str2, String str3, String str4, String str5, float f, float f2, float f3, String str6, int i) {
        this.user_id = str;
        this.session_id = str2;
        this.build = str3;
        this.event_id = str4;
        this.area = str5;
        this.x = f;
        this.y = f2;
        this.z = f3;
        this.currency = str6;
        this.amount = i;
    }
}
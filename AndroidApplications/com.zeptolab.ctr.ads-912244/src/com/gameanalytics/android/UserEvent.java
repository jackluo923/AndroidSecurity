package com.gameanalytics.android;

public class UserEvent {
    private String area;
    private int birth_year;
    private String build;
    private String event_id;
    private int friend_count;
    private char gender;
    private String session_id;
    private String user_id;
    private float x;
    private float y;
    private float z;

    public UserEvent(String str, String str2, String str3, String str4, String str5, float f, float f2, float f3, char c, int i, int i2) {
        this.user_id = str;
        this.session_id = str2;
        this.build = str3;
        this.event_id = str4;
        this.area = str5;
        this.x = f;
        this.y = f2;
        this.z = f3;
        this.gender = c;
        this.birth_year = i;
        this.friend_count = i2;
    }
}
package com.inmobi.commons.analytics.net;

import java.util.List;

public class AnalyticsPayload {
    private String a;
    private List b;
    private String c;
    private int d;

    public AnalyticsPayload(String str, List list) {
        this.a = str;
        this.b = list;
    }

    public String getCompletePayload() {
        return this.c;
    }

    public String getOnlyEvent() {
        return this.a;
    }

    public int getPayloadSize() {
        return this.d;
    }

    public List getTableIdList() {
        return this.b;
    }

    public void setCompletePayload(String str) {
        this.c = str;
    }

    public void setPayloadSize(int i) {
        this.d = i;
    }
}
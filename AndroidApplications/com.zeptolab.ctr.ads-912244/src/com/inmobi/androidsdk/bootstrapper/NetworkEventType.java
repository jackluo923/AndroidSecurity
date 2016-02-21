package com.inmobi.androidsdk.bootstrapper;

import com.inmobi.commons.metric.EventType;

public enum NetworkEventType implements EventType {
    FETCH_COMPLETE(0),
    RENDER_COMPLETE(1),
    CONNECT_ERROR(2),
    RESPONSE_ERROR(3),
    RENDER_TIMEOUT(4);
    private int a;

    static {
        FETCH_COMPLETE = new NetworkEventType("FETCH_COMPLETE", 0, 0);
        RENDER_COMPLETE = new NetworkEventType("RENDER_COMPLETE", 1, 1);
        CONNECT_ERROR = new NetworkEventType("CONNECT_ERROR", 2, 2);
        RESPONSE_ERROR = new NetworkEventType("RESPONSE_ERROR", 3, 3);
        RENDER_TIMEOUT = new NetworkEventType("RENDER_TIMEOUT", 4, 4);
        b = new NetworkEventType[]{FETCH_COMPLETE, RENDER_COMPLETE, CONNECT_ERROR, RESPONSE_ERROR, RENDER_TIMEOUT};
    }

    private NetworkEventType(int i) {
        this.a = i;
    }

    public int getValue() {
        return this.a;
    }
}
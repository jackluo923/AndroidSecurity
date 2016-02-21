package com.inmobi.commons.analytics.iat.impl.config;

import com.inmobi.commons.metric.EventType;

public enum AdTrackerEventType implements EventType {
    GOAL_SUCCESS(0),
    GOAL_FAILURE(1),
    GOAL_DUMPED(2);
    private int a;

    static {
        GOAL_SUCCESS = new AdTrackerEventType("GOAL_SUCCESS", 0, 0);
        GOAL_FAILURE = new AdTrackerEventType("GOAL_FAILURE", 1, 1);
        GOAL_DUMPED = new AdTrackerEventType("GOAL_DUMPED", 2, 2);
        b = new AdTrackerEventType[]{GOAL_SUCCESS, GOAL_FAILURE, GOAL_DUMPED};
    }

    private AdTrackerEventType(int i) {
        this.a = i;
    }

    public int getValue() {
        return this.a;
    }
}
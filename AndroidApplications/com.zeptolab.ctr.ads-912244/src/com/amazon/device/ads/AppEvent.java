package com.amazon.device.ads;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

class AppEvent {
    private final String a;
    private final long b;
    private final HashMap c;

    protected AppEvent(String str) {
        this(str, -1);
    }

    public AppEvent(String str, long j) {
        this.a = str;
        this.b = j;
        this.c = new HashMap();
    }

    public static AppEvent createAppEventWithTimestamp(AppEvent appEvent, long j) {
        return new AppEvent(appEvent.a, j);
    }

    public String getEventName() {
        return this.a;
    }

    public String getProperty(String str) {
        return (String) this.c.get(str);
    }

    public Set getPropertyEntries() {
        return this.c.entrySet();
    }

    public long getTimestamp() {
        return this.b;
    }

    public AppEvent setProperty(String str, String str2) {
        this.c.put(str, str2);
        return this;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder(65);
        stringBuilder.append("Application Event {Name: ");
        stringBuilder.append(this.a);
        stringBuilder.append(", Timestamp: ");
        stringBuilder.append(this.b);
        Iterator it = this.c.keySet().iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            stringBuilder.append(", ");
            stringBuilder.append(str);
            stringBuilder.append(": ");
            stringBuilder.append((String) this.c.get(str));
        }
        stringBuilder.append("}");
        return stringBuilder.toString();
    }
}
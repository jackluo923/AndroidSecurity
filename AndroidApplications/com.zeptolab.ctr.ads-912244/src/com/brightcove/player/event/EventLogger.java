package com.brightcove.player.event;

import android.util.Log;
import com.brightcove.player.util.ErrorUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map.Entry;

public class EventLogger {
    private static final String DEFAULT_TAG = "EventLogger";
    private int currentListenerToken;
    private EventEmitter emitter;
    private ArrayList excludeList;
    private EventListener genericListener;
    private String tag;
    private boolean verbose;

    public EventLogger(EventEmitter eventEmitter, boolean z) {
        this(eventEmitter, z, DEFAULT_TAG);
    }

    public EventLogger(EventEmitter eventEmitter, boolean z, String str) {
        this.currentListenerToken = 0;
        this.excludeList = new ArrayList();
        this.emitter = eventEmitter;
        this.verbose = z;
        this.tag = str;
        this.excludeList.add(EventType.BUFFERED_UPDATE);
        this.excludeList.add(EventType.PROGRESS);
        start();
    }

    public void addExclude(String str) {
        if (!this.excludeList.contains(str)) {
            this.excludeList.add(str);
        }
    }

    public void clearExcludes() {
        this.excludeList.clear();
    }

    public void removeExclude(String str) {
        this.excludeList.remove(str);
    }

    public void setVerbose(boolean z) {
        this.verbose = z;
    }

    public void start() {
        stop();
        this.genericListener = new EventListener() {
            public void processEvent(Event event) {
                if (!EventLogger.this.excludeList.contains(event.getType())) {
                    StringBuffer stringBuffer = new StringBuffer(event.getType());
                    Object obj = event.properties.get(EMITTER);
                    if (obj != null) {
                        stringBuffer.append(" (");
                        stringBuffer.append(obj);
                        stringBuffer.append(")");
                    }
                    if (EventLogger.this.verbose) {
                        stringBuffer.append(" { ");
                        Iterator it = event.properties.entrySet().iterator();
                        while (it.hasNext()) {
                            Entry entry = (Entry) it.next();
                            stringBuffer.append((String) entry.getKey());
                            stringBuffer.append(": ");
                            stringBuffer.append(entry.getValue());
                            stringBuffer.append(" ");
                        }
                        stringBuffer.append("}");
                    }
                    Log.d(EventLogger.this.tag, stringBuffer.toString());
                    if (ErrorUtil.ERROR.equals(event.getType()) && event.properties.containsKey(ErrorUtil.ERROR)) {
                        Log.e(DEFAULT_TAG, "Unhandled error event", (Throwable) event.properties.get(ErrorUtil.ERROR));
                    }
                }
            }
        };
        this.currentListenerToken = this.emitter.on(EventType.ANY, this.genericListener);
    }

    public void stop() {
        if (this.currentListenerToken > 0) {
            this.emitter.off(EventType.ANY, this.currentListenerToken);
            this.currentListenerToken = 0;
        }
    }
}
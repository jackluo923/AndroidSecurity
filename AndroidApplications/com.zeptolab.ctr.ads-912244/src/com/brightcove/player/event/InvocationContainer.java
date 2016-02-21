package com.brightcove.player.event;

import android.util.Log;
import com.brightcove.player.util.ErrorUtil;
import java.util.concurrent.atomic.AtomicInteger;

class InvocationContainer {
    private static String PROCESS_EVENT_METHOD_NAME;
    private static final String TAG;
    private static AtomicInteger count;
    private int id;
    private boolean isDefault;
    private EventListener listener;
    private boolean shouldRemove;

    static {
        TAG = InvocationContainer.class.getName();
        PROCESS_EVENT_METHOD_NAME = "processEvent";
    }

    public InvocationContainer(EventListener eventListener, boolean z) {
        if (eventListener == null) {
            throw new IllegalArgumentException(ErrorUtil.getMessage(ErrorUtil.LISTENER_REQUIRED));
        }
        if (count == null) {
            count = new AtomicInteger();
        }
        this.id = count.incrementAndGet();
        this.listener = eventListener;
        this.isDefault = isDefaultListener(eventListener);
        this.shouldRemove = z;
    }

    private static boolean isDefaultListener(EventListener eventListener) {
        if (eventListener != null) {
            try {
                return eventListener.getClass().getMethod(PROCESS_EVENT_METHOD_NAME, new Class[]{Event.class}).isAnnotationPresent(Default.class);
            } catch (NoSuchMethodException e) {
                Log.e(TAG, PROCESS_EVENT_METHOD_NAME + " method seems to be missing from this handler!");
                return false;
            }
        } else {
            throw new IllegalArgumentException(ErrorUtil.getMessage(ErrorUtil.LISTENER_REQUIRED));
        }
    }

    public EventListener getListener() {
        return this.listener;
    }

    public int getToken() {
        return this.id;
    }

    public int getTotalCount() {
        return count.get();
    }

    public boolean isDefault() {
        return this.isDefault;
    }

    public boolean shouldRemove() {
        return this.shouldRemove;
    }

    public String toString() {
        return "InvocationContainer (" + this.id + ")";
    }
}
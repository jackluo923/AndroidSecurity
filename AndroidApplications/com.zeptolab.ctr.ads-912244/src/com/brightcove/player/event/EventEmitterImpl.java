package com.brightcove.player.event;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.brightcove.player.util.ErrorUtil;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class EventEmitterImpl implements EventEmitter {
    private static final String EVENT_KEY = "event";
    private static final String PROPERTY_PREFIX_KEY = "prop_";
    private String TAG;
    protected Handler handler;
    private boolean isEnabled;
    private Map listeners;

    @SuppressLint({"HandlerLeak"})
    public EventEmitterImpl() {
        this.TAG = "EventEmitterImpl";
        this.isEnabled = true;
        this.TAG = toString();
        this.handler = new Handler() {
            public void handleMessage(Message message) {
                Map map = (Map) message.obj;
                String str = (String) map.get(EVENT_KEY);
                Event event = new Event(str);
                EventEmitterImpl.this.unpackProperties(map, event);
                EventEmitterImpl.this.invokeListenersForEventType(event, EventType.ANY);
                if (str.equals(EventType.RESPONSE)) {
                    EventEmitterImpl.this.invokeResponseListener(event);
                } else {
                    EventEmitterImpl.this.invokeListenersForEvent(event);
                }
            }
        };
        this.listeners = new HashMap();
    }

    private ArrayList getInvocations(String str) {
        if (this.listeners.containsKey(str)) {
            return (ArrayList) this.listeners.get(str);
        }
        ArrayList arrayList = new ArrayList();
        this.listeners.put(str, arrayList);
        return arrayList;
    }

    private void invokeListenersForEvent(Event event) {
        invokeListenersForEventType(event, event.getType());
    }

    private void invokeListenersForEventType(Event event, String str) {
        ArrayList invocations = getInvocations(str);
        Iterator it = ((List) invocations.clone()).iterator();
        while (it.hasNext()) {
            InvocationContainer invocationContainer = (InvocationContainer) it.next();
            if (!(invocationContainer.isDefault() || event.isStopped()) || (invocationContainer.isDefault() && !event.isPrevented())) {
                try {
                    invocationContainer.getListener().processEvent(event);
                } catch (Throwable th) {
                    Log.e(this.TAG, "processEvent() threw a throwable.", th);
                }
                if (invocationContainer.shouldRemove()) {
                    invocations.remove(invocationContainer);
                }
            }
        }
    }

    private void invokeResponseListener(Event event) {
        List invocations = getInvocations(event.getType());
        int integerProperty = event.getIntegerProperty(REQUEST_TOKEN);
        InvocationContainer invocationContainerByToken = getInvocationContainerByToken(invocations, integerProperty);
        if (invocationContainerByToken != null) {
            try {
                invocationContainerByToken.getListener().processEvent(event);
            } catch (Throwable th) {
                Log.e(this.TAG, "processEvent() threw a throwable.", th);
            }
            off(event.getType(), integerProperty);
        }
    }

    private int on(String str, EventListener eventListener, boolean z) {
        if (!this.isEnabled) {
            return -1;
        }
        if (str == null || eventListener == null) {
            Log.e(this.TAG, "Invalid input provided to on: evenType = " + str + ", listener = " + eventListener);
            throw new IllegalArgumentException(ErrorUtil.getMessage(ErrorUtil.EVENT_TYPE_AND_LISTENER_REQUIRED));
        } else {
            List invocations = getInvocations(str);
            InvocationContainer invocationContainer = new InvocationContainer(eventListener, z);
            if (invocationContainer.isDefault() || invocations.isEmpty() || !((InvocationContainer) invocations.get(invocations.size() - 1)).isDefault()) {
                invocations.add(invocationContainer);
            } else {
                int size = invocations.size();
                int i = 0;
                while (i < size) {
                    if (((InvocationContainer) invocations.get(i)).isDefault()) {
                        invocations.add(i, invocationContainer);
                        break;
                    } else {
                        i++;
                    }
                }
            }
            return invocationContainer.getToken();
        }
    }

    private void packProperties(Map map, Map map2) {
        Iterator it = map.keySet().iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            map2.put(PROPERTY_PREFIX_KEY + str, map.get(str));
        }
    }

    private void unpackProperties(Map map, Event event) {
        int length = PROPERTY_PREFIX_KEY.length();
        Iterator it = map.keySet().iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (str.startsWith(PROPERTY_PREFIX_KEY)) {
                event.properties.put(str.substring(length), map.get(str));
            }
        }
    }

    public void disable() {
        this.isEnabled = false;
    }

    public void emit(String str) {
        emit(str, Collections.emptyMap());
    }

    public void emit(String str, Map map) {
        if (!this.isEnabled) {
            return;
        }
        if (str != null) {
            Message obtain = Message.obtain();
            Map hashMap = new HashMap();
            hashMap.put(EVENT_KEY, str);
            if (!map.isEmpty()) {
                packProperties(map, hashMap);
            }
            obtain.obj = hashMap;
            this.handler.sendMessage(obtain);
        } else {
            Log.e(this.TAG, "Received an emit without an EventType");
            throw new IllegalArgumentException(ErrorUtil.getMessage(ErrorUtil.INVALID_EMIT));
        }
    }

    public void enable() {
        this.isEnabled = true;
    }

    protected InvocationContainer getInvocationContainerByToken(List list, int i) {
        int invocationContainerPositionByToken = getInvocationContainerPositionByToken(list, i);
        return invocationContainerPositionByToken >= 0 ? (InvocationContainer) list.get(invocationContainerPositionByToken) : null;
    }

    protected int getInvocationContainerPositionByToken(List list, int i) {
        int size = list.size();
        int i2 = 0;
        while (i2 < size) {
            if (((InvocationContainer) list.get(i2)).getToken() == i) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    public void off() {
        this.listeners.clear();
    }

    public void off(String str, int i) {
        if (i > -1) {
            List invocations = getInvocations(str);
            int invocationContainerPositionByToken = getInvocationContainerPositionByToken(invocations, i);
            if (invocationContainerPositionByToken > -1) {
                invocations.remove(invocationContainerPositionByToken);
            }
        } else {
            Log.w(this.TAG, "Off attempted for invalid token of " + i);
        }
    }

    public int on(String str, EventListener eventListener) {
        return on(str, eventListener, false);
    }

    public int once(String str, EventListener eventListener) {
        return on(str, eventListener, true);
    }

    public void request(String str, EventListener eventListener) {
        request(str, new HashMap(), eventListener);
    }

    public void request(String str, Map map, EventListener eventListener) {
        Map hashMap;
        if (this.isEnabled) {
            int once = once(EventType.RESPONSE, eventListener);
            hashMap = map == null ? new HashMap() : map;
            try {
                hashMap.put(REQUEST_TOKEN, Integer.valueOf(once));
            } catch (UnsupportedOperationException e) {
                Map hashMap2 = new HashMap(hashMap);
                hashMap2.put(REQUEST_TOKEN, Integer.valueOf(once));
                hashMap = hashMap2;
            }
            emit(str, hashMap);
        }
    }

    public void respond(Event event) {
        respond(event.properties);
    }

    public void respond(Map map) {
        if (!this.isEnabled) {
            return;
        }
        if (map.containsKey(REQUEST_TOKEN)) {
            emit(EventType.RESPONSE, map);
        } else {
            Log.d(this.TAG, "Respond attempted without an requestToken");
        }
    }
}
package com.brightcove.player.event;

import com.brightcove.player.util.ErrorUtil;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public abstract class AbstractComponent implements Component {
    protected EventEmitter eventEmitter;
    protected Map listenerTokens;

    public AbstractComponent(EventEmitter eventEmitter, Class cls) {
        if (eventEmitter == null) {
            throw new IllegalArgumentException(ErrorUtil.getMessage(ErrorUtil.EVENT_EMITTER_REQUIRED));
        }
        this.eventEmitter = RegisteringEventEmitter.build(eventEmitter, cls);
        this.listenerTokens = new HashMap();
    }

    protected void addListener(String str, EventListener eventListener) {
        this.listenerTokens.put(str, Integer.valueOf(this.eventEmitter.on(str, eventListener)));
    }

    public EventEmitter getEventEmitter() {
        return this.eventEmitter;
    }

    protected void removeListeners() {
        Iterator it = this.listenerTokens.keySet().iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            this.eventEmitter.off(str, ((Integer) this.listenerTokens.get(str)).intValue());
        }
        this.listenerTokens.clear();
    }
}
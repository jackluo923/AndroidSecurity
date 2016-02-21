package com.brightcove.player.event;

import android.util.Log;
import com.brightcove.player.util.ErrorUtil;
import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class RegisteringEventEmitter implements EventEmitter {
    private static String ANNOTATION_EVENTS_PROPERTY;
    private String componentType;
    private boolean debug;
    private List emit;
    private EventEmitter emitter;
    private List listenFor;

    static {
        ANNOTATION_EVENTS_PROPERTY = "events";
    }

    public RegisteringEventEmitter(EventEmitter eventEmitter, Class cls) {
        this.debug = false;
        if (eventEmitter == null || cls == null) {
            throw new IllegalArgumentException(ErrorUtil.getMessage(ErrorUtil.EVENT_EMITTER_AND_COMPONENT_REQUIRED));
        }
        this.emitter = eventEmitter;
        this.componentType = cls.getSimpleName();
        this.emit = convertEventsFromAnnotation(cls, Emits.class);
        this.listenFor = convertEventsFromAnnotation(cls, ListensFor.class);
        eventEmitter.on(EventType.DEBUG, new EventListener() {
            public void processEvent(Event event) {
                RegisteringEventEmitter.this.debug = Boolean.parseBoolean(event.properties.get(EventType.DEBUG).toString());
            }
        });
    }

    private Map addEmitterIfDebugging(Map map) {
        if (!this.debug) {
            return map;
        }
        HashMap hashMap = new HashMap(map.size() + 1);
        hashMap.putAll(map);
        hashMap.put(Event.EMITTER, this.componentType);
        return hashMap;
    }

    public static RegisteringEventEmitter build(EventEmitter eventEmitter, Class cls) {
        if (eventEmitter instanceof RegisteringEventEmitter) {
            eventEmitter = ((RegisteringEventEmitter) eventEmitter).getRootEmitter();
        }
        return new RegisteringEventEmitter(eventEmitter, cls);
    }

    private List getAnnotations(Class cls, Class cls2) {
        List arrayList = new ArrayList();
        Class superclass = cls.getSuperclass();
        if (superclass != null) {
            arrayList.addAll(getAnnotations(superclass, cls2));
        }
        Annotation annotation = cls.getAnnotation(cls2);
        if (annotation != null) {
            arrayList.add(annotation);
        }
        return arrayList;
    }

    protected List convertEventsFromAnnotation(Class cls, Class cls2) {
        String[] strArr = new String[0];
        List arrayList = new ArrayList();
        List annotations = getAnnotations(cls, cls2);
        if (annotations == null || annotations.size() <= 0) {
            throw new RuntimeException(String.format(ErrorUtil.getMessage(ErrorUtil.ANNOTATION_REQUIRED), new Object[]{cls2.getName()}));
        } else {
            Iterator it = annotations.iterator();
            String[] strArr2 = strArr;
            while (it.hasNext()) {
                Object[] objArr;
                Annotation annotation = (Annotation) it.next();
                try {
                    strArr = (String[]) annotation.getClass().getMethod(ANNOTATION_EVENTS_PROPERTY, new Class[0]).invoke(annotation, new Object[0]);
                } catch (Exception e) {
                    Log.e("Component", "Error attempting to invoke " + ANNOTATION_EVENTS_PROPERTY + " on annotation " + cls2.getName() + ": " + e.getMessage());
                    objArr = objArr;
                }
                arrayList.addAll(Arrays.asList(objArr));
                Object[] objArr2 = objArr;
            }
            return arrayList;
        }
    }

    public void disable() {
        this.emitter.disable();
    }

    public void emit(String str) {
        Map singletonMap = this.debug ? Collections.singletonMap(Event.EMITTER, this.componentType) : Collections.emptyMap();
        if (this.emit.contains(str)) {
            this.emitter.emit(str, singletonMap);
        } else {
            throw new IllegalArgumentException(String.format(ErrorUtil.getMessage(ErrorUtil.NOT_PERMITTED_TO_EMIT), new Object[]{str}));
        }
    }

    public void emit(String str, Map map) {
        if (this.emit.contains(str)) {
            this.emitter.emit(str, addEmitterIfDebugging(map));
        } else {
            throw new IllegalArgumentException(String.format(ErrorUtil.getMessage(ErrorUtil.NOT_PERMITTED_TO_EMIT), new Object[]{str}));
        }
    }

    public void enable() {
        this.emitter.enable();
    }

    public List getAllowedEmittedEvents() {
        return this.emit;
    }

    public List getAllowedListenEvents() {
        return this.listenFor;
    }

    public EventEmitter getRootEmitter() {
        return this.emitter;
    }

    public void off() {
        this.emitter.off();
    }

    public void off(String str, int i) {
        this.emitter.off(str, i);
    }

    public int on(String str, EventListener eventListener) {
        if (this.listenFor.contains(str)) {
            return this.emitter.on(str, eventListener);
        }
        throw new IllegalArgumentException(String.format(ErrorUtil.getMessage(ErrorUtil.NOT_PERMITTED_TO_LISTEN), new Object[]{str}));
    }

    public int once(String str, EventListener eventListener) {
        if (this.listenFor.contains(str)) {
            return this.emitter.once(str, eventListener);
        }
        throw new IllegalArgumentException(String.format(ErrorUtil.getMessage(ErrorUtil.NOT_PERMITTED_TO_LISTEN), new Object[]{str}));
    }

    public void request(String str, EventListener eventListener) {
        if (this.emit.contains(str)) {
            this.emitter.request(str, eventListener);
        } else {
            throw new IllegalArgumentException(String.format(ErrorUtil.getMessage(ErrorUtil.NOT_PERMITTED_TO_EMIT), new Object[]{str}));
        }
    }

    public void request(String str, Map map, EventListener eventListener) {
        if (this.emit.contains(str)) {
            this.emitter.request(str, map, eventListener);
        } else {
            throw new IllegalArgumentException(String.format(ErrorUtil.getMessage(ErrorUtil.NOT_PERMITTED_TO_EMIT), new Object[]{str}));
        }
    }

    public void respond(Event event) {
        this.emitter.respond(event);
    }

    public void respond(Map map) {
        this.emitter.respond(map);
    }
}
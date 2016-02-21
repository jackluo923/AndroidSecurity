package com.brightcove.player.event;

import java.util.Map;

public interface EventEmitter {
    void disable();

    void emit(String str);

    void emit(String str, Map map);

    void enable();

    void off();

    void off(String str, int i);

    int on(String str, EventListener eventListener);

    int once(String str, EventListener eventListener);

    void request(String str, EventListener eventListener);

    void request(String str, Map map, EventListener eventListener);

    void respond(Event event);

    void respond(Map map);
}
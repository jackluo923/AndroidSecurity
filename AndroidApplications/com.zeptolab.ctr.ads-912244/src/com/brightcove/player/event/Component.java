package com.brightcove.player.event;

@Emits(events = {"sample", "event", "list"})
@ListensFor(events = {"play", "stop"})
public interface Component {
}
package com.inmobi.commons;

public enum AnimationType {
    ANIMATION_OFF,
    ROTATE_HORIZONTAL_AXIS,
    ANIMATION_ALPHA,
    ROTATE_VERTICAL_AXIS;

    static {
        ANIMATION_OFF = new AnimationType("ANIMATION_OFF", 0);
        ROTATE_HORIZONTAL_AXIS = new AnimationType("ROTATE_HORIZONTAL_AXIS", 1);
        ANIMATION_ALPHA = new AnimationType("ANIMATION_ALPHA", 2);
        ROTATE_VERTICAL_AXIS = new AnimationType("ROTATE_VERTICAL_AXIS", 3);
        a = new AnimationType[]{ANIMATION_OFF, ROTATE_HORIZONTAL_AXIS, ANIMATION_ALPHA, ROTATE_VERTICAL_AXIS};
    }
}
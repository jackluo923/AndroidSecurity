package com.zeptolab.ctr.motion;

import android.view.MotionEvent;

public class CtrMultiMotion implements CtrMotion {
    public int getAction(MotionEvent motionEvent) {
        return motionEvent.getAction() & 255;
    }

    public int getActionIndex(MotionEvent motionEvent) {
        return (motionEvent.getAction() & 65280) >> 8;
    }

    public int getPointerCount(MotionEvent motionEvent) {
        return motionEvent.getPointerCount();
    }

    public int getPointerId(MotionEvent motionEvent, int i) {
        return motionEvent.getPointerId(i);
    }

    public float getX(MotionEvent motionEvent, int i) {
        return motionEvent.getX(i);
    }

    public float getY(MotionEvent motionEvent, int i) {
        return motionEvent.getY(i);
    }
}
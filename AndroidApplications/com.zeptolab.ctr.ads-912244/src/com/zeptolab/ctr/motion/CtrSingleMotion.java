package com.zeptolab.ctr.motion;

import android.view.MotionEvent;

public class CtrSingleMotion implements CtrMotion {
    public int getAction(MotionEvent motionEvent) {
        return motionEvent.getAction();
    }

    public int getActionIndex(MotionEvent motionEvent) {
        return 0;
    }

    public int getPointerCount(MotionEvent motionEvent) {
        return 1;
    }

    public int getPointerId(MotionEvent motionEvent, int i) {
        return 0;
    }

    public float getX(MotionEvent motionEvent, int i) {
        return motionEvent.getX();
    }

    public float getY(MotionEvent motionEvent, int i) {
        return motionEvent.getY();
    }
}
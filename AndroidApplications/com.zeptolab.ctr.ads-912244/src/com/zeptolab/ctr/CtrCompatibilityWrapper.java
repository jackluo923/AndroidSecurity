package com.zeptolab.ctr;

import android.view.MotionEvent;

public class CtrCompatibilityWrapper {
    static int getPointerCount(MotionEvent motionEvent) {
        return motionEvent.getPointerCount();
    }

    static int getPointerId(MotionEvent motionEvent, int i) {
        return motionEvent.getPointerId(i);
    }

    static float getX(MotionEvent motionEvent, int i) {
        return motionEvent.getX(i);
    }

    static float getY(MotionEvent motionEvent, int i) {
        return motionEvent.getY(i);
    }
}
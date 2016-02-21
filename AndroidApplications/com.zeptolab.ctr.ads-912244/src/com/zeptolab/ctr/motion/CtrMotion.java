package com.zeptolab.ctr.motion;

import android.view.MotionEvent;

public interface CtrMotion {
    int getAction(MotionEvent motionEvent);

    int getActionIndex(MotionEvent motionEvent);

    int getPointerCount(MotionEvent motionEvent);

    int getPointerId(MotionEvent motionEvent, int i);

    float getX(MotionEvent motionEvent, int i);

    float getY(MotionEvent motionEvent, int i);
}
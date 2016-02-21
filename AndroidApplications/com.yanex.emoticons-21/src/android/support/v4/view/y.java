package android.support.v4.view;

import android.view.MotionEvent;

final class y implements z {
    y() {
    }

    public final int a(MotionEvent motionEvent) {
        return motionEvent.getPointerCount();
    }

    public final int a(MotionEvent motionEvent, int i) {
        return motionEvent.findPointerIndex(i);
    }

    public final int b(MotionEvent motionEvent, int i) {
        return motionEvent.getPointerId(i);
    }

    public final float c(MotionEvent motionEvent, int i) {
        return motionEvent.getX(i);
    }

    public final float d(MotionEvent motionEvent, int i) {
        return motionEvent.getY(i);
    }
}
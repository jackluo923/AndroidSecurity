package android.support.v4.view;

import android.view.MotionEvent;

final class x implements z {
    x() {
    }

    public final int a(MotionEvent motionEvent) {
        return 1;
    }

    public final int a(MotionEvent motionEvent, int i) {
        return i == 0 ? 0 : -1;
    }

    public final int b(MotionEvent motionEvent, int i) {
        if (i == 0) {
            return 0;
        }
        throw new IndexOutOfBoundsException("Pre-Eclair does not support multiple pointers");
    }

    public final float c(MotionEvent motionEvent, int i) {
        if (i == 0) {
            return motionEvent.getX();
        }
        throw new IndexOutOfBoundsException("Pre-Eclair does not support multiple pointers");
    }

    public final float d(MotionEvent motionEvent, int i) {
        if (i == 0) {
            return motionEvent.getY();
        }
        throw new IndexOutOfBoundsException("Pre-Eclair does not support multiple pointers");
    }
}
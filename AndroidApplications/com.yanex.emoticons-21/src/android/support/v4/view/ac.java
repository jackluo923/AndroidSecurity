package android.support.v4.view;

import android.view.VelocityTracker;

final class ac implements ae {
    ac() {
    }

    public final float a(VelocityTracker velocityTracker, int i) {
        return velocityTracker.getXVelocity();
    }

    public final float b(VelocityTracker velocityTracker, int i) {
        return velocityTracker.getYVelocity();
    }
}
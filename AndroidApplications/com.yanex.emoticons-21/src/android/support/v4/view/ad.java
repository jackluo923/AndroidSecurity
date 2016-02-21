package android.support.v4.view;

import android.view.VelocityTracker;

final class ad implements ae {
    ad() {
    }

    public final float a(VelocityTracker velocityTracker, int i) {
        return velocityTracker.getXVelocity(i);
    }

    public final float b(VelocityTracker velocityTracker, int i) {
        return velocityTracker.getYVelocity(i);
    }
}
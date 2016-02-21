package android.support.v4.view;

import android.view.VelocityTracker;

// compiled from: ProGuard
class t implements v {
    t() {
    }

    public float a(VelocityTracker velocityTracker, int i) {
        return velocityTracker.getXVelocity();
    }

    public float b(VelocityTracker velocityTracker, int i) {
        return velocityTracker.getYVelocity();
    }
}
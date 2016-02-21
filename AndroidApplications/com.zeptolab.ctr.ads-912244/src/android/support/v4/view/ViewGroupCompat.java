package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;

public class ViewGroupCompat {
    static final ViewGroupCompatImpl IMPL;

    static interface ViewGroupCompatImpl {
        boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent);

        void setMotionEventSplittingEnabled(ViewGroup viewGroup, boolean z);
    }

    static class ViewGroupCompatStubImpl implements ViewGroupCompatImpl {
        ViewGroupCompatStubImpl() {
        }

        public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            return true;
        }

        public void setMotionEventSplittingEnabled(ViewGroup viewGroup, boolean z) {
        }
    }

    static class ViewGroupCompatHCImpl extends ViewGroupCompatStubImpl {
        ViewGroupCompatHCImpl() {
        }

        public void setMotionEventSplittingEnabled(ViewGroup viewGroup, boolean z) {
            ViewGroupCompatHC.setMotionEventSplittingEnabled(viewGroup, z);
        }
    }

    static class ViewGroupCompatIcsImpl extends ViewGroupCompatHCImpl {
        ViewGroupCompatIcsImpl() {
        }

        public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            return ViewGroupCompatIcs.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
        }
    }

    static {
        int i = VERSION.SDK_INT;
        if (i >= 14) {
            IMPL = new ViewGroupCompatIcsImpl();
        } else if (i >= 11) {
            IMPL = new ViewGroupCompatHCImpl();
        } else {
            IMPL = new ViewGroupCompatStubImpl();
        }
    }

    private ViewGroupCompat() {
    }

    public static boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        return IMPL.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }

    public static void setMotionEventSplittingEnabled(ViewGroup viewGroup, boolean z) {
        IMPL.setMotionEventSplittingEnabled(viewGroup, z);
    }
}
package android.support.v4.view.accessibility;

import android.os.Build.VERSION;
import android.view.accessibility.AccessibilityManager;
import java.util.Collections;
import java.util.List;

public class AccessibilityManagerCompat {
    private static final AccessibilityManagerVersionImpl IMPL;

    static interface AccessibilityManagerVersionImpl {
        boolean addAccessibilityStateChangeListener(AccessibilityManager accessibilityManager, android.support.v4.view.accessibility.AccessibilityManagerCompat.AccessibilityStateChangeListenerCompat accessibilityStateChangeListenerCompat);

        List getEnabledAccessibilityServiceList(AccessibilityManager accessibilityManager, int i);

        List getInstalledAccessibilityServiceList(AccessibilityManager accessibilityManager);

        boolean isTouchExplorationEnabled(AccessibilityManager accessibilityManager);

        Object newAccessiblityStateChangeListener(android.support.v4.view.accessibility.AccessibilityManagerCompat.AccessibilityStateChangeListenerCompat accessibilityStateChangeListenerCompat);

        boolean removeAccessibilityStateChangeListener(AccessibilityManager accessibilityManager, android.support.v4.view.accessibility.AccessibilityManagerCompat.AccessibilityStateChangeListenerCompat accessibilityStateChangeListenerCompat);
    }

    static class AccessibilityManagerStubImpl implements AccessibilityManagerVersionImpl {
        AccessibilityManagerStubImpl() {
        }

        public boolean addAccessibilityStateChangeListener(AccessibilityManager accessibilityManager, android.support.v4.view.accessibility.AccessibilityManagerCompat.AccessibilityStateChangeListenerCompat accessibilityStateChangeListenerCompat) {
            return false;
        }

        public List getEnabledAccessibilityServiceList(AccessibilityManager accessibilityManager, int i) {
            return Collections.emptyList();
        }

        public List getInstalledAccessibilityServiceList(AccessibilityManager accessibilityManager) {
            return Collections.emptyList();
        }

        public boolean isTouchExplorationEnabled(AccessibilityManager accessibilityManager) {
            return false;
        }

        public Object newAccessiblityStateChangeListener(android.support.v4.view.accessibility.AccessibilityManagerCompat.AccessibilityStateChangeListenerCompat accessibilityStateChangeListenerCompat) {
            return null;
        }

        public boolean removeAccessibilityStateChangeListener(AccessibilityManager accessibilityManager, android.support.v4.view.accessibility.AccessibilityManagerCompat.AccessibilityStateChangeListenerCompat accessibilityStateChangeListenerCompat) {
            return false;
        }
    }

    static class AccessibilityManagerIcsImpl extends AccessibilityManagerStubImpl {

        class AnonymousClass_1 implements AccessibilityStateChangeListenerBridge {
            final /* synthetic */ android.support.v4.view.accessibility.AccessibilityManagerCompat.AccessibilityStateChangeListenerCompat val$listener;

            AnonymousClass_1(android.support.v4.view.accessibility.AccessibilityManagerCompat.AccessibilityStateChangeListenerCompat accessibilityStateChangeListenerCompat) {
                this.val$listener = accessibilityStateChangeListenerCompat;
            }

            public void onAccessibilityStateChanged(boolean z) {
                this.val$listener.onAccessibilityStateChanged(z);
            }
        }

        AccessibilityManagerIcsImpl() {
        }

        public boolean addAccessibilityStateChangeListener(AccessibilityManager accessibilityManager, android.support.v4.view.accessibility.AccessibilityManagerCompat.AccessibilityStateChangeListenerCompat accessibilityStateChangeListenerCompat) {
            return AccessibilityManagerCompatIcs.addAccessibilityStateChangeListener(accessibilityManager, accessibilityStateChangeListenerCompat.mListener);
        }

        public List getEnabledAccessibilityServiceList(AccessibilityManager accessibilityManager, int i) {
            return AccessibilityManagerCompatIcs.getEnabledAccessibilityServiceList(accessibilityManager, i);
        }

        public List getInstalledAccessibilityServiceList(AccessibilityManager accessibilityManager) {
            return AccessibilityManagerCompatIcs.getInstalledAccessibilityServiceList(accessibilityManager);
        }

        public boolean isTouchExplorationEnabled(AccessibilityManager accessibilityManager) {
            return AccessibilityManagerCompatIcs.isTouchExplorationEnabled(accessibilityManager);
        }

        public Object newAccessiblityStateChangeListener(android.support.v4.view.accessibility.AccessibilityManagerCompat.AccessibilityStateChangeListenerCompat accessibilityStateChangeListenerCompat) {
            return AccessibilityManagerCompatIcs.newAccessibilityStateChangeListener(new AnonymousClass_1(accessibilityStateChangeListenerCompat));
        }

        public boolean removeAccessibilityStateChangeListener(AccessibilityManager accessibilityManager, android.support.v4.view.accessibility.AccessibilityManagerCompat.AccessibilityStateChangeListenerCompat accessibilityStateChangeListenerCompat) {
            return AccessibilityManagerCompatIcs.removeAccessibilityStateChangeListener(accessibilityManager, accessibilityStateChangeListenerCompat.mListener);
        }
    }

    public static abstract class AccessibilityStateChangeListenerCompat {
        final Object mListener;

        public AccessibilityStateChangeListenerCompat() {
            this.mListener = IMPL.newAccessiblityStateChangeListener(this);
        }

        public abstract void onAccessibilityStateChanged(boolean z);
    }

    static {
        if (VERSION.SDK_INT >= 14) {
            IMPL = new AccessibilityManagerIcsImpl();
        } else {
            IMPL = new AccessibilityManagerStubImpl();
        }
    }

    public static boolean addAccessibilityStateChangeListener(AccessibilityManager accessibilityManager, AccessibilityStateChangeListenerCompat accessibilityStateChangeListenerCompat) {
        return IMPL.addAccessibilityStateChangeListener(accessibilityManager, accessibilityStateChangeListenerCompat);
    }

    public static List getEnabledAccessibilityServiceList(AccessibilityManager accessibilityManager, int i) {
        return IMPL.getEnabledAccessibilityServiceList(accessibilityManager, i);
    }

    public static List getInstalledAccessibilityServiceList(AccessibilityManager accessibilityManager) {
        return IMPL.getInstalledAccessibilityServiceList(accessibilityManager);
    }

    public static boolean isTouchExplorationEnabled(AccessibilityManager accessibilityManager) {
        return IMPL.isTouchExplorationEnabled(accessibilityManager);
    }

    public static boolean removeAccessibilityStateChangeListener(AccessibilityManager accessibilityManager, AccessibilityStateChangeListenerCompat accessibilityStateChangeListenerCompat) {
        return IMPL.removeAccessibilityStateChangeListener(accessibilityManager, accessibilityStateChangeListenerCompat);
    }
}
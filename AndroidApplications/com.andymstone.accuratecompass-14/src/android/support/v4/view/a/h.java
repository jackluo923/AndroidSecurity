package android.support.v4.view.a;

import android.view.accessibility.AccessibilityNodeInfo;

class h {
    public static void a(Object obj, boolean z) {
        ((AccessibilityNodeInfo) obj).setVisibleToUser(z);
    }

    public static boolean a(Object obj) {
        return ((AccessibilityNodeInfo) obj).isVisibleToUser();
    }

    public static void b(Object obj, boolean z) {
        ((AccessibilityNodeInfo) obj).setAccessibilityFocused(z);
    }

    public static boolean b(Object obj) {
        return ((AccessibilityNodeInfo) obj).isAccessibilityFocused();
    }
}
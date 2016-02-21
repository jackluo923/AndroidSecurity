package android.support.v4.view.a;

import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import java.util.List;

final class l extends AccessibilityNodeProvider {
    final /* synthetic */ m a;

    l(m mVar) {
        this.a = mVar;
    }

    public final AccessibilityNodeInfo createAccessibilityNodeInfo(int i) {
        this.a.c();
        return null;
    }

    public final List findAccessibilityNodeInfosByText(String str, int i) {
        return this.a.b();
    }

    public final boolean performAction(int i, int i2, Bundle bundle) {
        return this.a.a();
    }
}
package android.support.v4.a;

import android.content.ComponentName;
import android.content.Intent;

// compiled from: ProGuard
class h implements g {
    h() {
    }

    public Intent a(ComponentName componentName) {
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.setComponent(componentName);
        intent.addCategory("android.intent.category.LAUNCHER");
        return intent;
    }
}
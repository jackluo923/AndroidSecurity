package android.support.v4.content;

import android.content.ComponentName;
import android.content.Intent;

class f implements e {
    f() {
    }

    public Intent a(ComponentName componentName) {
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.setComponent(componentName);
        intent.addCategory("android.intent.category.LAUNCHER");
        return intent;
    }
}
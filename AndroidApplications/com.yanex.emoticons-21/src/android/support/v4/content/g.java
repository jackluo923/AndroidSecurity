package android.support.v4.content;

import android.content.ComponentName;
import android.content.Intent;

class g extends f {
    g() {
    }

    public final Intent a(ComponentName componentName) {
        return Intent.makeMainActivity(componentName);
    }
}
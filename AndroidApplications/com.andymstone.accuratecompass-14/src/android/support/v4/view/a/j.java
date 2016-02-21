package android.support.v4.view.a;

import android.os.Build.VERSION;
import android.os.Bundle;
import java.util.List;

public class j {
    private static final k a;
    private final Object b;

    static {
        if (VERSION.SDK_INT >= 16) {
            a = new l();
        } else {
            a = new n();
        }
    }

    public j() {
        this.b = a.a(this);
    }

    public j(Object obj) {
        this.b = obj;
    }

    public a a(int i) {
        return null;
    }

    public Object a() {
        return this.b;
    }

    public List a(String str, int i) {
        return null;
    }

    public boolean a(int i, int i2, Bundle bundle) {
        return false;
    }
}
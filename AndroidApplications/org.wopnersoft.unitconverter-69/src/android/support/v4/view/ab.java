package android.support.v4.view;

import android.graphics.Paint;
import android.view.View;

// compiled from: ProGuard
class ab extends aa {
    ab() {
    }

    long a() {
        return aj.a();
    }

    public void a(View view, int i, Paint paint) {
        aj.a(view, i, paint);
    }

    public void a(View view, Paint paint) {
        a(view, c(view), paint);
        view.invalidate();
    }

    public int c(View view) {
        return aj.a(view);
    }
}
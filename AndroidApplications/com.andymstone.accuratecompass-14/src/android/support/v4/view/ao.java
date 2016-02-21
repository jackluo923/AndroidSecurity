package android.support.v4.view;

import android.graphics.Paint;
import android.view.View;

class ao extends an {
    ao() {
    }

    long a() {
        return av.a();
    }

    public void a(View view, int i, Paint paint) {
        av.a(view, i, paint);
    }

    public void a(View view, Paint paint) {
        a(view, c(view), paint);
        view.invalidate();
    }

    public int c(View view) {
        return av.a(view);
    }
}
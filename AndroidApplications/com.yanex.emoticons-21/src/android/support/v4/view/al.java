package android.support.v4.view;

import android.graphics.Paint;
import android.view.View;

final class al extends ak {
    al() {
    }

    public final void a(View view, Paint paint) {
        view.setLayerPaint(paint);
    }

    public final int f(View view) {
        return view.getLayoutDirection();
    }
}
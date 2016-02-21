package android.support.v4.view;

import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.actionbarsherlock.internal.widget.IcsLinearLayout;
import com.actionbarsherlock.view.Window;

// compiled from: ProGuard
class y implements ag {
    y() {
    }

    public int a(View view) {
        return IcsLinearLayout.SHOW_DIVIDER_MIDDLE;
    }

    long a() {
        return Window.FEATURE_ACTION_MODE_OVERLAY;
    }

    public void a(View view, int i, int i2, int i3, int i4) {
        view.postInvalidateDelayed(a(), i, i2, i3, i4);
    }

    public void a(View view, int i, Paint paint) {
    }

    public void a(View view, Paint paint) {
    }

    public void a(View view, Runnable runnable) {
        view.postDelayed(runnable, a());
    }

    public boolean a(View view, int i) {
        return false;
    }

    public void b(View view) {
        view.postInvalidateDelayed(a());
    }

    public int c(View view) {
        return 0;
    }

    public int d(View view) {
        return 0;
    }

    public boolean e(View view) {
        Drawable background = view.getBackground();
        return background != null && background.getOpacity() == -1;
    }
}
package android.support.v4.app;

import android.content.Context;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout;

class ae extends FrameLayout {
    public ae(Context context) {
        super(context);
    }

    static ViewGroup a(View view) {
        ViewGroup aeVar = new ae(view.getContext());
        LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams != null) {
            aeVar.setLayoutParams(layoutParams);
        }
        view.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        aeVar.addView(view);
        return aeVar;
    }

    protected void dispatchRestoreInstanceState(SparseArray sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    protected void dispatchSaveInstanceState(SparseArray sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }
}
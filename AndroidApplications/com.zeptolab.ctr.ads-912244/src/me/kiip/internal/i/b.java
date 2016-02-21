package me.kiip.internal.i;

import android.app.Dialog;
import android.content.Context;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import com.zeptolab.ctr.scorer.GoogleScorer;

public abstract class b extends Dialog {
    public b(Context context) {
        super(context);
        a();
    }

    private void a() {
        requestWindowFeature(1);
        Window window = getWindow();
        window.setBackgroundDrawableResource(17170445);
        window.clearFlags(GoogleScorer.CLIENT_PLUS);
    }

    public void show() {
        super.show();
        Window window = getWindow();
        LayoutParams layoutParams = new LayoutParams();
        layoutParams.copyFrom(window.getAttributes());
        layoutParams.width = -1;
        layoutParams.height = -1;
        window.setAttributes(layoutParams);
    }
}
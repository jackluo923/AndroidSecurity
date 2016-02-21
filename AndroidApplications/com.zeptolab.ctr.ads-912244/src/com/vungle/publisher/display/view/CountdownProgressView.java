package com.vungle.publisher.display.view;

import android.content.Context;
import android.graphics.drawable.BitmapDrawable;
import android.widget.TextView;
import com.vungle.log.Logger;
import com.vungle.publisher.image.BitmapFactory;
import com.zeptolab.zbuild.ZBuildConfig;
import java.io.IOException;
import javax.inject.Inject;
import javax.inject.Singleton;

public final class CountdownProgressView extends TextView {
    private int a;
    private int b;

    @Singleton
    static class Factory {
        @Inject
        BitmapFactory a;

        Factory() {
        }
    }

    CountdownProgressView(Context context, BitmapFactory bitmapFactory) {
        super(context);
        setTextColor(-1);
        setTextSize(16.0f);
        setGravity(ZBuildConfig.$targetsdk);
        try {
            setBackgroundDrawable(new BitmapDrawable(getResources(), bitmapFactory.getBitmap("vg_timer.png")));
        } catch (IOException e) {
            Logger.d(Logger.AD_TAG, "error loading countdown progress bar background", e);
        }
    }

    private void a() {
        setText(Integer.toString(this.a - this.b));
        invalidate();
    }

    final void setMax(int i) {
        if (i != this.a) {
            this.a = i;
            a();
        }
    }

    final void setProgress(int i) {
        if (i != this.b) {
            this.b = i;
            a();
        }
    }
}
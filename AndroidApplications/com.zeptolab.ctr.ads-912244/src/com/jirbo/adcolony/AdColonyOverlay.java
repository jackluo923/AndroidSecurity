package com.jirbo.adcolony;

import android.content.res.Configuration;
import android.graphics.Rect;
import android.os.Handler;
import android.view.Display;
import android.view.View;
import android.widget.FrameLayout.LayoutParams;

public class AdColonyOverlay extends ADCVideo {
    Rect bounds;
    int old_seek;

    class AnonymousClass_1 implements Runnable {
        final /* synthetic */ View val$black;

        AnonymousClass_1(View view) {
            this.val$black = view;
        }

        public void run() {
            AdColonyOverlay.this.layout.removeView(this.val$black);
        }
    }

    public AdColonyOverlay() {
        this.bounds = new Rect();
        this.old_seek = 0;
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        Display defaultDisplay = getWindowManager().getDefaultDisplay();
        this.display_width = defaultDisplay.getWidth();
        this.display_height = defaultDisplay.getHeight();
        ADC.layout_changed = true;
        View view = new View(this);
        view.setBackgroundColor(-16777216);
        if (video_finished && this.hud.is_html5) {
            this.web_layout.setLayoutParams(new LayoutParams(this.display_width, this.display_height - this.hud.offset, 17));
            this.layout.addView(view, new LayoutParams(this.display_width, this.display_height, 17));
            new Handler().postDelayed(new AnonymousClass_1(view), 1500);
        }
        this.hud.adjust_size();
    }
}
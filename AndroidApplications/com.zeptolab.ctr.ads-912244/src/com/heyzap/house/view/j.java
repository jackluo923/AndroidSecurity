package com.heyzap.house.view;

import android.text.SpannableString;
import android.util.DisplayMetrics;
import android.view.ViewGroup.LayoutParams;

class j implements Runnable {
    final /* synthetic */ SpannableString a;
    final /* synthetic */ float b;
    final /* synthetic */ DisplayMetrics c;
    final /* synthetic */ VideoControlView d;

    j(VideoControlView videoControlView, SpannableString spannableString, float f, DisplayMetrics displayMetrics) {
        this.d = videoControlView;
        this.a = spannableString;
        this.b = f;
        this.c = displayMetrics;
    }

    public void run() {
        if (this.a != null) {
            this.d.timeTextView.setText(this.a);
        }
        LayoutParams layoutParams = this.d.scrubBar.getLayoutParams();
        layoutParams.width = (int) (this.b * ((float) this.c.widthPixels));
        this.d.scrubBar.setLayoutParams(layoutParams);
    }
}
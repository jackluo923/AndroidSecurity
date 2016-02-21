package com.heyzap.house.view;

import android.os.CountDownTimer;
import android.text.SpannableString;
import android.text.style.StyleSpan;

class m extends CountDownTimer {
    final /* synthetic */ VideoControlView a;

    m(VideoControlView videoControlView, long j, long j2) {
        this.a = videoControlView;
        super(j, j2);
    }

    public void onFinish() {
        this.a.skipButton.setEnabled(true);
        CharSequence spannableString = new SpannableString(this.a.skipButtonText);
        spannableString.setSpan(new StyleSpan(1), 0, spannableString.length(), 0);
        this.a.skipButtonTextView.setText(spannableString);
        this.a.skipButtonTextView.setTextColor(-1);
    }

    public void onTick(long j) {
        int ceil = (int) Math.ceil(((double) j) / 1000.0d);
        CharSequence spannableString = new SpannableString("Skip in " + String.format("%d", new Object[]{Integer.valueOf(ceil)}));
        spannableString.setSpan(new StyleSpan(1), 0, spannableString.length(), 0);
        this.a.skipButtonTextView.setText(spannableString);
    }
}
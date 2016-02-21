package com.IQzone.postitial.obfuscated;

import android.media.AudioManager;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import com.zeptolab.ctr.billing.google.utils.IabHelper;

final class ct implements OnSeekBarChangeListener {
    private /* synthetic */ AudioManager a;
    private /* synthetic */ cl b;

    ct(cl clVar, AudioManager audioManager) {
        this.b = clVar;
        this.a = audioManager;
    }

    public final void onProgressChanged(SeekBar seekBar, int i, boolean z) {
        if (z) {
            this.a.setStreamVolume(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, (int) (((float) this.a.getStreamMaxVolume(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE)) * (((float) i) / 100.0f)), 0);
        }
    }

    public final void onStartTrackingTouch(SeekBar seekBar) {
        cl.e(this.b).execute(new cu(this));
    }

    public final void onStopTrackingTouch(SeekBar seekBar) {
        cl.e(this.b).execute(cl.d(this.b));
    }
}
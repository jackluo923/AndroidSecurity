package com.IQzone.postitial.obfuscated;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import com.zeptolab.ctr.billing.google.utils.IabHelper;

final class qh implements OnCompletionListener {
    private /* synthetic */ qe a;

    qh(qe qeVar) {
        this.a = qeVar;
    }

    public final void onCompletion(MediaPlayer mediaPlayer) {
        qe.c(this.a, (int)IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR);
        qe.d(this.a, (int)IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR);
        if (qe.e(this.a) != null) {
            qe.e(this.a).hide();
        }
        if (qe.j(this.a) != null) {
            qe.j(this.a).onCompletion(qe.d(this.a));
        }
    }
}
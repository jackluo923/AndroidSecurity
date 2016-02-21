package com.inmobi.re.container;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import com.inmobi.commons.internal.Log;
import com.inmobi.re.controller.util.Constants;
import com.zeptolab.ctr.billing.google.utils.IabHelper;

class c implements OnCompletionListener {
    final /* synthetic */ IMWebView a;

    c(IMWebView iMWebView) {
        this.a = iMWebView;
    }

    public void onCompletion(MediaPlayer mediaPlayer) {
        try {
            mediaPlayer.stop();
            IMWebView.i(this.a).setVisibility(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED);
            IMWebView.l(this.a);
            IMWebView.h(this.a).setContentView(IMWebView.n(this.a));
        } catch (Exception e) {
            Log.internal(Constants.RENDERING_LOG_TAG, "Media Player onCompletion", e);
        }
    }
}
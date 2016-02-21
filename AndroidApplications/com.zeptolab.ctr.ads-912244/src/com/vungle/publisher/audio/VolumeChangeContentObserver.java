package com.vungle.publisher.audio;

import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import android.os.Message;
import com.vungle.log.Logger;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import javax.inject.Inject;
import javax.inject.Singleton;

public final class VolumeChangeContentObserver extends ContentObserver {
    private final AudioManager a;
    private final Handler b;
    private volatile int c;

    @Singleton
    public static class Factory {
        @Inject
        public AudioManager a;
    }

    public VolumeChangeContentObserver(AudioManager audioManager, Handler handler) {
        super(handler);
        this.a = audioManager;
        this.b = handler;
        this.c = audioManager.getStreamVolume(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE);
    }

    public final void onChange(boolean z) {
        try {
            super.onChange(z);
            int i = this.c;
            int streamVolume = this.a.getStreamVolume(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE);
            this.c = streamVolume;
            if (streamVolume != i) {
                Logger.v(Logger.DEVICE_TAG, new StringBuilder("volume changed ").append(i).append(" --> ").append(streamVolume).toString());
                Message message = new Message();
                message.arg1 = i;
                message.arg2 = streamVolume;
                this.b.sendMessage(message);
            }
        } catch (Exception e) {
            Logger.e(Logger.DEVICE_TAG, e);
        }
    }
}
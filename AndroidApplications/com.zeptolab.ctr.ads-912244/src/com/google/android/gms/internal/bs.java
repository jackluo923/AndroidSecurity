package com.google.android.gms.internal;

import android.content.Context;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.MediaController;
import android.widget.VideoView;
import com.brightcove.player.media.CuePointFields;
import com.brightcove.player.model.Video.Fields;
import com.brightcove.player.util.ErrorUtil;
import com.google.android.gms.tagmanager.DataLayer;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

public final class bs extends FrameLayout implements OnCompletionListener, OnErrorListener, OnPreparedListener {
    private final MediaController nB;
    private final a nC;
    private final VideoView nD;
    private long nE;
    private String nF;
    private final dd ng;

    private static final class a {
        private final Runnable kW;
        private volatile boolean nG;

        class AnonymousClass_1 implements Runnable {
            private final WeakReference nH;
            final /* synthetic */ bs nI;

            AnonymousClass_1(bs bsVar) {
                this.nI = bsVar;
                this.nH = new WeakReference(this.nI);
            }

            public void run() {
                bs bsVar = (bs) this.nH.get();
                if (!a.this.nG && bsVar != null) {
                    bsVar.az();
                    a.this.aA();
                }
            }
        }

        public a(bs bsVar) {
            this.nG = false;
            this.kW = new AnonymousClass_1(bsVar);
        }

        public void aA() {
            cz.pT.postDelayed(this.kW, 250);
        }

        public void cancel() {
            this.nG = true;
            cz.pT.removeCallbacks(this.kW);
        }
    }

    public bs(Context context, dd ddVar) {
        super(context);
        this.ng = ddVar;
        this.nD = new VideoView(context);
        addView(this.nD, new LayoutParams(-1, -1, 17));
        this.nB = new MediaController(context);
        this.nC = new a(this);
        this.nC.aA();
        this.nD.setOnCompletionListener(this);
        this.nD.setOnPreparedListener(this);
        this.nD.setOnErrorListener(this);
    }

    private static void a(dd ddVar, String str) {
        a(ddVar, str, new HashMap(1));
    }

    public static void a(dd ddVar, String str, String str2) {
        int i = str2 == null ? 1 : 0;
        Map hashMap = new HashMap(i != 0 ? GoogleScorer.CLIENT_PLUS : IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE);
        hashMap.put("what", str);
        if (i == 0) {
            hashMap.put("extra", str2);
        }
        a(ddVar, ErrorUtil.ERROR, hashMap);
    }

    private static void a(dd ddVar, String str, String str2, String str3) {
        Map hashMap = new HashMap(2);
        hashMap.put(str2, str3);
        a(ddVar, str, hashMap);
    }

    private static void a(dd ddVar, String str, Map map) {
        map.put(DataLayer.EVENT_KEY, str);
        ddVar.a("onVideoEvent", map);
    }

    public void ay() {
        if (TextUtils.isEmpty(this.nF)) {
            a(this.ng, "no_src", null);
        } else {
            this.nD.setVideoPath(this.nF);
        }
    }

    public void az() {
        long currentPosition = (long) this.nD.getCurrentPosition();
        if (this.nE != currentPosition) {
            a(this.ng, "timeupdate", CuePointFields.TIME, String.valueOf(((float) currentPosition) / 1000.0f));
            this.nE = currentPosition;
        }
    }

    public void b(MotionEvent motionEvent) {
        this.nD.dispatchTouchEvent(motionEvent);
    }

    public void destroy() {
        this.nC.cancel();
        this.nD.stopPlayback();
    }

    public void i(boolean z) {
        if (z) {
            this.nD.setMediaController(this.nB);
        } else {
            this.nB.hide();
            this.nD.setMediaController(null);
        }
    }

    public void o(String str) {
        this.nF = str;
    }

    public void onCompletion(MediaPlayer mediaPlayer) {
        a(this.ng, "ended");
    }

    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        a(this.ng, String.valueOf(i), String.valueOf(i2));
        return true;
    }

    public void onPrepared(MediaPlayer mediaPlayer) {
        a(this.ng, "canplaythrough", Fields.DURATION, String.valueOf(((float) this.nD.getDuration()) / 1000.0f));
    }

    public void pause() {
        this.nD.pause();
    }

    public void play() {
        this.nD.start();
    }

    public void seekTo(int i) {
        this.nD.seekTo(i);
    }
}
package com.zeptolab.ctr.video.brightcove;

import android.app.Activity;
import android.content.Intent;
import android.opengl.GLSurfaceView;
import java.util.ArrayList;

public class Brightcove {
    private static Brightcove instance_;
    private final Activity activity;
    private final GLSurfaceView view;

    class AnonymousClass_1 implements Runnable {
        final /* synthetic */ long[] val$stringIds;
        final /* synthetic */ String[] val$stringNames;
        final /* synthetic */ String[] val$stringReferenceIds;
        final /* synthetic */ String[] val$stringSponsorIds;
        final /* synthetic */ String[] val$stringUrls;

        AnonymousClass_1(String[] strArr, long[] jArr, String[] strArr2, String[] strArr3, String[] strArr4) {
            this.val$stringUrls = strArr;
            this.val$stringIds = jArr;
            this.val$stringNames = strArr2;
            this.val$stringReferenceIds = strArr3;
            this.val$stringSponsorIds = strArr4;
        }

        public void run() {
            try {
                Intent intent = new Intent(Brightcove.this.activity, BrightcoveView.class);
                intent.putExtra("urls", this.val$stringUrls);
                intent.putExtra("ids", this.val$stringIds);
                intent.putExtra("names", this.val$stringNames);
                intent.putExtra("referenceIds", this.val$stringReferenceIds);
                intent.putExtra("sponsors", this.val$stringSponsorIds);
                Brightcove.this.activity.startActivity(intent);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    class AnonymousClass_3 implements Runnable {
        final /* synthetic */ long val$id;

        AnonymousClass_3(long j) {
            this.val$id = j;
        }

        public void run() {
            Brightcove.this.onViewClosed(this.val$id);
        }
    }

    class AnonymousClass_4 implements Runnable {
        final /* synthetic */ long val$videoId;

        AnonymousClass_4(long j) {
            this.val$videoId = j;
        }

        public void run() {
            Brightcove.this.onVideoStarted(this.val$videoId);
        }
    }

    class AnonymousClass_5 implements Runnable {
        final /* synthetic */ long val$videoId;

        AnonymousClass_5(long j) {
            this.val$videoId = j;
        }

        public void run() {
            Brightcove.this.onVideoEnded(this.val$videoId);
        }
    }

    public Brightcove(Activity activity, GLSurfaceView gLSurfaceView) {
        this.activity = activity;
        this.view = gLSurfaceView;
        instance_ = this;
    }

    public static Brightcove instance() {
        return instance_;
    }

    private native void onAdShown();

    private native void onVideoEnded(long j);

    private native void onVideoStarted(long j);

    private native void onViewClosed(long j);

    private native void onViewOpened();

    public native boolean hasBumper(long j);

    public void onAdShown_() {
        this.view.queueEvent(new Runnable() {
            public void run() {
                Brightcove.this.onAdShown();
            }
        });
    }

    public void onVideoEnded_(long j) {
        this.view.queueEvent(new AnonymousClass_5(j));
    }

    public void onVideoStarted_(long j) {
        this.view.queueEvent(new AnonymousClass_4(j));
    }

    public void onViewClosed_(long j) {
        this.view.queueEvent(new AnonymousClass_3(j));
    }

    public void onViewOpened_() {
        this.view.queueEvent(new Runnable() {
            public void run() {
                Brightcove.this.onViewOpened();
            }
        });
    }

    public void playVideo(ArrayList arrayList) {
        String[] strArr;
        long[] jArr;
        String[] strArr2;
        String[] strArr3;
        String[] strArr4 = null;
        strArr = arrayList != null ? new String[arrayList.size()] : null;
        jArr = arrayList != null ? new long[arrayList.size()] : null;
        strArr2 = arrayList != null ? new String[arrayList.size()] : null;
        strArr3 = arrayList != null ? new String[arrayList.size()] : null;
        if (arrayList != null) {
            strArr4 = new String[arrayList.size()];
        }
        int i = 0;
        while (i < arrayList.size()) {
            BrightcoveVideo brightcoveVideo = (BrightcoveVideo) arrayList.get(i);
            strArr[i] = brightcoveVideo.url;
            jArr[i] = brightcoveVideo.id;
            strArr2[i] = brightcoveVideo.name;
            strArr3[i] = brightcoveVideo.referenceId;
            strArr4[i] = brightcoveVideo.sponsor;
            i++;
        }
        this.activity.runOnUiThread(new AnonymousClass_1(strArr, jArr, strArr2, strArr3, strArr4));
    }

    public native boolean shouldShowAd();
}
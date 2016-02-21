package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaStatus;
import com.inmobi.commons.analytics.db.AnalyticsSQLiteHelper;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class dv extends dp {
    private static final long yi;
    private static final long yj;
    private static final long yk;
    private static final long yl;
    private final Handler mHandler;
    private long ym;
    private MediaStatus yn;
    private final dy yo;
    private final dy yp;
    private final dy yq;
    private final dy yr;
    private final dy ys;
    private final dy yt;
    private final dy yu;
    private final dy yv;
    private final Runnable yw;
    private boolean yx;

    private class a implements Runnable {
        private a() {
        }

        public void run() {
            boolean z = false;
            dv.this.yx = false;
            long elapsedRealtime = SystemClock.elapsedRealtime();
            dv.this.yo.d(elapsedRealtime, IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE);
            dv.this.yp.d(elapsedRealtime, IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE);
            dv.this.yq.d(elapsedRealtime, IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE);
            dv.this.yr.d(elapsedRealtime, IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE);
            dv.this.ys.d(elapsedRealtime, IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE);
            dv.this.yt.d(elapsedRealtime, IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE);
            dv.this.yu.d(elapsedRealtime, IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE);
            dv.this.yv.d(elapsedRealtime, IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE);
            synchronized (dy.yD) {
                if (dv.this.yo.dl() || dv.this.ys.dl() || dv.this.yt.dl() || dv.this.yu.dl() || dv.this.yv.dl()) {
                    z = true;
                }
            }
            dv.this.u(z);
        }
    }

    static {
        yi = TimeUnit.HOURS.toMillis(24);
        yj = TimeUnit.HOURS.toMillis(24);
        yk = TimeUnit.HOURS.toMillis(24);
        yl = TimeUnit.SECONDS.toMillis(1);
    }

    public dv() {
        super("urn:x-cast:com.google.cast.media", "MediaControlChannel");
        this.mHandler = new Handler(Looper.getMainLooper());
        this.yw = new a(null);
        this.yo = new dy(yj);
        this.yp = new dy(yi);
        this.yq = new dy(yi);
        this.yr = new dy(yi);
        this.ys = new dy(yk);
        this.yt = new dy(yi);
        this.yu = new dy(yi);
        this.yv = new dy(yi);
        dj();
    }

    private void a(long j, JSONObject jSONObject) {
        boolean z = 1;
        boolean m = this.yo.m(j);
        int i = this.ys.dl() && !this.ys.m(j);
        if (!this.yt.dl() || this.yt.m(j)) {
            if (!this.yu.dl() || this.yu.m(j)) {
                z = false;
            }
        }
        i = i != 0 ? GoogleScorer.CLIENT_PLUS : 0;
        if (i != 0) {
            i |= 1;
        }
        if (m || this.yn == null) {
            this.yn = new MediaStatus(jSONObject);
            this.ym = SystemClock.elapsedRealtime();
            i = GoogleScorer.CLIENT_ALL;
        } else {
            i = this.yn.a(jSONObject, i);
        }
        if ((i & 1) != 0) {
            this.ym = SystemClock.elapsedRealtime();
            onStatusUpdated();
        }
        if ((i & 2) != 0) {
            this.ym = SystemClock.elapsedRealtime();
            onStatusUpdated();
        }
        if ((i & 4) != 0) {
            onMetadataUpdated();
        }
        this.yo.c(j, 0);
        this.yp.c(j, 0);
        this.yq.c(j, 0);
        this.yr.c(j, 0);
        this.ys.c(j, 0);
        this.yt.c(j, 0);
        this.yu.c(j, 0);
        this.yv.c(j, 0);
    }

    private void dj() {
        u(false);
        this.ym = 0;
        this.yn = null;
        this.yo.clear();
        this.ys.clear();
        this.yt.clear();
    }

    private void u(boolean z) {
        if (this.yx != z) {
            this.yx = z;
            if (z) {
                this.mHandler.postDelayed(this.yw, yl);
            } else {
                this.mHandler.removeCallbacks(this.yw);
            }
        }
    }

    public final void P(String str) {
        int i = GoogleScorer.CLIENT_PLUS;
        int i2 = 0;
        int i3 = 1;
        du duVar = this.xB;
        String str2 = "message received: %s";
        Object[] objArr = new Object[i3];
        objArr[i2] = str;
        duVar.b(str2, objArr);
        try {
            JSONObject jSONObject = new JSONObject(str);
            str2 = jSONObject.getString(AnalyticsSQLiteHelper.EVENT_LIST_TYPE);
            long optLong = jSONObject.optLong("requestId", -1);
            if (str2.equals("MEDIA_STATUS")) {
                JSONArray jSONArray = jSONObject.getJSONArray("status");
                if (jSONArray.length() > 0) {
                    a(optLong, jSONArray.getJSONObject(0));
                } else {
                    this.yn = null;
                    onStatusUpdated();
                    onMetadataUpdated();
                    this.yv.c(optLong, 0);
                }
            } else if (str2.equals("INVALID_PLAYER_STATE")) {
                this.xB.d("received unexpected error: Invalid Player State.", new Object[0]);
                jSONObject = jSONObject.optJSONObject("customData");
                this.yo.b(optLong, 1, jSONObject);
                this.yp.b(optLong, 1, jSONObject);
                this.yq.b(optLong, 1, jSONObject);
                this.yr.b(optLong, 1, jSONObject);
                this.ys.b(optLong, 1, jSONObject);
                this.yt.b(optLong, 1, jSONObject);
                this.yu.b(optLong, 1, jSONObject);
                this.yv.b(optLong, 1, jSONObject);
            } else if (str2.equals("LOAD_FAILED")) {
                this.yo.b(optLong, 1, jSONObject.optJSONObject("customData"));
            } else if (str2.equals("LOAD_CANCELLED")) {
                this.yo.b(optLong, GoogleScorer.CLIENT_PLUS, jSONObject.optJSONObject("customData"));
            } else if (str2.equals("INVALID_REQUEST")) {
                this.xB.d("received unexpected error: Invalid Request.", new Object[0]);
                jSONObject = jSONObject.optJSONObject("customData");
                this.yo.b(optLong, 1, jSONObject);
                this.yp.b(optLong, 1, jSONObject);
                this.yq.b(optLong, 1, jSONObject);
                this.yr.b(optLong, 1, jSONObject);
                this.ys.b(optLong, 1, jSONObject);
                this.yt.b(optLong, 1, jSONObject);
                this.yu.b(optLong, 1, jSONObject);
                this.yv.b(optLong, 1, jSONObject);
            }
        } catch (JSONException e) {
            JSONException jSONException = e;
            du duVar2 = this.xB;
            String str3 = "Message is malformed (%s); ignoring: %s";
            Object[] objArr2 = new Object[i];
            objArr2[i2] = jSONException.getMessage();
            objArr2[i3] = str;
            duVar2.d(str3, objArr2);
        }
    }

    public long a(dx dxVar) {
        JSONObject jSONObject = new JSONObject();
        long cW = cW();
        this.yv.a(cW, dxVar);
        u(true);
        try {
            jSONObject.put("requestId", cW);
            jSONObject.put(AnalyticsSQLiteHelper.EVENT_LIST_TYPE, "GET_STATUS");
            if (this.yn != null) {
                jSONObject.put("mediaSessionId", this.yn.cU());
            }
        } catch (JSONException e) {
        }
        a(jSONObject.toString(), cW, null);
        return cW;
    }

    public long a(dx dxVar, double d, JSONObject jSONObject) {
        if (Double.isInfinite(d) || Double.isNaN(d)) {
            throw new IllegalArgumentException("Volume cannot be " + d);
        }
        JSONObject jSONObject2 = new JSONObject();
        long cW = cW();
        this.yt.a(cW, dxVar);
        u(true);
        try {
            jSONObject2.put("requestId", cW);
            jSONObject2.put(AnalyticsSQLiteHelper.EVENT_LIST_TYPE, "SET_VOLUME");
            jSONObject2.put("mediaSessionId", cU());
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("level", d);
            jSONObject2.put("volume", jSONObject3);
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
        } catch (JSONException e) {
        }
        a(jSONObject2.toString(), cW, null);
        return cW;
    }

    public long a(dx dxVar, long j, int i, JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        long cW = cW();
        this.ys.a(cW, dxVar);
        u(true);
        try {
            jSONObject2.put("requestId", cW);
            jSONObject2.put(AnalyticsSQLiteHelper.EVENT_LIST_TYPE, "SEEK");
            jSONObject2.put("mediaSessionId", cU());
            jSONObject2.put("currentTime", dr.l(j));
            if (i == 1) {
                jSONObject2.put("resumeState", "PLAYBACK_START");
            } else if (i == 2) {
                jSONObject2.put("resumeState", "PLAYBACK_PAUSE");
            }
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
        } catch (JSONException e) {
        }
        a(jSONObject2.toString(), cW, null);
        return cW;
    }

    public long a(dx dxVar, MediaInfo mediaInfo, boolean z, long j, JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        long cW = cW();
        this.yo.a(cW, dxVar);
        u(true);
        try {
            jSONObject2.put("requestId", cW);
            jSONObject2.put(AnalyticsSQLiteHelper.EVENT_LIST_TYPE, "LOAD");
            jSONObject2.put("media", mediaInfo.cT());
            jSONObject2.put("autoplay", z);
            jSONObject2.put("currentTime", dr.l(j));
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
        } catch (JSONException e) {
        }
        a(jSONObject2.toString(), cW, null);
        return cW;
    }

    public long a(dx dxVar, JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        long cW = cW();
        this.yp.a(cW, dxVar);
        u(true);
        try {
            jSONObject2.put("requestId", cW);
            jSONObject2.put(AnalyticsSQLiteHelper.EVENT_LIST_TYPE, "PAUSE");
            jSONObject2.put("mediaSessionId", cU());
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
        } catch (JSONException e) {
        }
        a(jSONObject2.toString(), cW, null);
        return cW;
    }

    public long a(dx dxVar, boolean z, JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        long cW = cW();
        this.yu.a(cW, dxVar);
        u(true);
        try {
            jSONObject2.put("requestId", cW);
            jSONObject2.put(AnalyticsSQLiteHelper.EVENT_LIST_TYPE, "SET_VOLUME");
            jSONObject2.put("mediaSessionId", cU());
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("muted", z);
            jSONObject2.put("volume", jSONObject3);
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
        } catch (JSONException e) {
        }
        a(jSONObject2.toString(), cW, null);
        return cW;
    }

    public void a(long j, int i) {
        this.yo.c(j, i);
        this.yp.c(j, i);
        this.yq.c(j, i);
        this.yr.c(j, i);
        this.ys.c(j, i);
        this.yt.c(j, i);
        this.yu.c(j, i);
        this.yv.c(j, i);
    }

    public long b(dx dxVar, JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        long cW = cW();
        this.yr.a(cW, dxVar);
        u(true);
        try {
            jSONObject2.put("requestId", cW);
            jSONObject2.put(AnalyticsSQLiteHelper.EVENT_LIST_TYPE, "STOP");
            jSONObject2.put("mediaSessionId", cU());
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
        } catch (JSONException e) {
        }
        a(jSONObject2.toString(), cW, null);
        return cW;
    }

    public long c(dx dxVar, JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        long cW = cW();
        this.yq.a(cW, dxVar);
        u(true);
        try {
            jSONObject2.put("requestId", cW);
            jSONObject2.put(AnalyticsSQLiteHelper.EVENT_LIST_TYPE, "PLAY");
            jSONObject2.put("mediaSessionId", cU());
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
        } catch (JSONException e) {
        }
        a(jSONObject2.toString(), cW, null);
        return cW;
    }

    public long cU() {
        if (this.yn != null) {
            return this.yn.cU();
        }
        throw new IllegalStateException("No current media session");
    }

    public void cX() {
        dj();
    }

    public long getApproximateStreamPosition() {
        MediaInfo mediaInfo = getMediaInfo();
        if (mediaInfo == null || this.ym == 0) {
            return 0;
        }
        double playbackRate = this.yn.getPlaybackRate();
        long streamPosition = this.yn.getStreamPosition();
        int playerState = this.yn.getPlayerState();
        if (playbackRate == 0.0d || playerState != 2) {
            return streamPosition;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime() - this.ym;
        long j = elapsedRealtime < 0 ? 0 : elapsedRealtime;
        if (j == 0) {
            return streamPosition;
        }
        elapsedRealtime = mediaInfo.getStreamDuration();
        streamPosition += (long) (((double) j) * playbackRate);
        if (streamPosition <= elapsedRealtime) {
            elapsedRealtime = streamPosition < 0 ? 0 : streamPosition;
        }
        return elapsedRealtime;
    }

    public MediaInfo getMediaInfo() {
        return this.yn == null ? null : this.yn.getMediaInfo();
    }

    public MediaStatus getMediaStatus() {
        return this.yn;
    }

    public long getStreamDuration() {
        MediaInfo mediaInfo = getMediaInfo();
        return mediaInfo != null ? mediaInfo.getStreamDuration() : 0;
    }

    protected void onMetadataUpdated() {
    }

    protected void onStatusUpdated() {
    }
}
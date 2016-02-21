package com.google.android.gms.cast;

import com.google.android.gms.cast.Cast.MessageReceivedCallback;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.dq;
import com.google.android.gms.internal.dv;
import com.google.android.gms.internal.dw;
import com.google.android.gms.internal.dx;
import java.io.IOException;
import org.json.JSONObject;

public class RemoteMediaPlayer implements MessageReceivedCallback {
    public static final int RESUME_STATE_PAUSE = 2;
    public static final int RESUME_STATE_PLAY = 1;
    public static final int RESUME_STATE_UNCHANGED = 0;
    public static final int STATUS_CANCELED = 2;
    public static final int STATUS_FAILED = 1;
    public static final int STATUS_REPLACED = 4;
    public static final int STATUS_SUCCEEDED = 0;
    public static final int STATUS_TIMED_OUT = 3;
    private final Object mg;
    private final dv xg;
    private final a xh;
    private OnMetadataUpdatedListener xi;
    private OnStatusUpdatedListener xj;

    private static abstract class b extends a {
        dx xy;

        class AnonymousClass_2 implements com.google.android.gms.cast.RemoteMediaPlayer.MediaChannelResult {
            final /* synthetic */ Status vb;

            AnonymousClass_2(Status status) {
                this.vb = status;
            }

            public Status getStatus() {
                return this.vb;
            }
        }

        b() {
            this.xy = new dx() {
                public void a(long j, int i, JSONObject jSONObject) {
                    b.this.a(new c(new Status(i), jSONObject));
                }

                public void k(long j) {
                    b.this.a(b.this.j(new Status(4)));
                }
            };
        }

        public /* synthetic */ Result d(Status status) {
            return j(status);
        }

        public com.google.android.gms.cast.RemoteMediaPlayer.MediaChannelResult j(Status status) {
            return new AnonymousClass_2(status);
        }
    }

    class AnonymousClass_2 extends b {
        final /* synthetic */ GoogleApiClient xl;
        final /* synthetic */ MediaInfo xm;
        final /* synthetic */ boolean xn;
        final /* synthetic */ long xo;
        final /* synthetic */ JSONObject xp;

        AnonymousClass_2(GoogleApiClient googleApiClient, MediaInfo mediaInfo, boolean z, long j, JSONObject jSONObject) {
            this.xl = googleApiClient;
            this.xm = mediaInfo;
            this.xn = z;
            this.xo = j;
            this.xp = jSONObject;
        }

        protected void a(dq dqVar) {
            synchronized (RemoteMediaPlayer.this.mg) {
                try {
                    RemoteMediaPlayer.this.xh.b(this.xl);
                    try {
                        RemoteMediaPlayer.this.xg.a(this.xy, this.xm, this.xn, this.xo, this.xp);
                        RemoteMediaPlayer.this.xh.b(null);
                    } catch (IOException e) {
                        a(j(new Status(1)));
                        RemoteMediaPlayer.this.xh.b(null);
                    }
                } catch (Throwable th) {
                }
            }
        }
    }

    class AnonymousClass_3 extends b {
        final /* synthetic */ GoogleApiClient xl;
        final /* synthetic */ JSONObject xp;

        AnonymousClass_3(GoogleApiClient googleApiClient, JSONObject jSONObject) {
            this.xl = googleApiClient;
            this.xp = jSONObject;
        }

        protected void a(dq dqVar) {
            synchronized (RemoteMediaPlayer.this.mg) {
                try {
                    RemoteMediaPlayer.this.xh.b(this.xl);
                    try {
                        RemoteMediaPlayer.this.xg.a(this.xy, this.xp);
                        RemoteMediaPlayer.this.xh.b(null);
                    } catch (IOException e) {
                        a(j(new Status(1)));
                        RemoteMediaPlayer.this.xh.b(null);
                    }
                } catch (Throwable th) {
                }
            }
        }
    }

    class AnonymousClass_4 extends b {
        final /* synthetic */ GoogleApiClient xl;
        final /* synthetic */ JSONObject xp;

        AnonymousClass_4(GoogleApiClient googleApiClient, JSONObject jSONObject) {
            this.xl = googleApiClient;
            this.xp = jSONObject;
        }

        protected void a(dq dqVar) {
            synchronized (RemoteMediaPlayer.this.mg) {
                try {
                    RemoteMediaPlayer.this.xh.b(this.xl);
                    try {
                        RemoteMediaPlayer.this.xg.b(this.xy, this.xp);
                        RemoteMediaPlayer.this.xh.b(null);
                    } catch (IOException e) {
                        a(j(new Status(1)));
                        RemoteMediaPlayer.this.xh.b(null);
                    }
                } catch (Throwable th) {
                }
            }
        }
    }

    class AnonymousClass_5 extends b {
        final /* synthetic */ GoogleApiClient xl;
        final /* synthetic */ JSONObject xp;

        AnonymousClass_5(GoogleApiClient googleApiClient, JSONObject jSONObject) {
            this.xl = googleApiClient;
            this.xp = jSONObject;
        }

        protected void a(dq dqVar) {
            synchronized (RemoteMediaPlayer.this.mg) {
                try {
                    RemoteMediaPlayer.this.xh.b(this.xl);
                    try {
                        RemoteMediaPlayer.this.xg.c(this.xy, this.xp);
                        RemoteMediaPlayer.this.xh.b(null);
                    } catch (IOException e) {
                        a(j(new Status(1)));
                        RemoteMediaPlayer.this.xh.b(null);
                    }
                } catch (Throwable th) {
                }
            }
        }
    }

    class AnonymousClass_6 extends b {
        final /* synthetic */ GoogleApiClient xl;
        final /* synthetic */ JSONObject xp;
        final /* synthetic */ long xq;
        final /* synthetic */ int xr;

        AnonymousClass_6(GoogleApiClient googleApiClient, long j, int i, JSONObject jSONObject) {
            this.xl = googleApiClient;
            this.xq = j;
            this.xr = i;
            this.xp = jSONObject;
        }

        protected void a(dq dqVar) {
            synchronized (RemoteMediaPlayer.this.mg) {
                try {
                    RemoteMediaPlayer.this.xh.b(this.xl);
                    try {
                        RemoteMediaPlayer.this.xg.a(this.xy, this.xq, this.xr, this.xp);
                        RemoteMediaPlayer.this.xh.b(null);
                    } catch (IOException e) {
                        a(j(new Status(1)));
                        RemoteMediaPlayer.this.xh.b(null);
                    }
                } catch (Throwable th) {
                }
            }
        }
    }

    class AnonymousClass_7 extends b {
        final /* synthetic */ GoogleApiClient xl;
        final /* synthetic */ JSONObject xp;
        final /* synthetic */ double xs;

        AnonymousClass_7(GoogleApiClient googleApiClient, double d, JSONObject jSONObject) {
            this.xl = googleApiClient;
            this.xs = d;
            this.xp = jSONObject;
        }

        protected void a(dq dqVar) {
            synchronized (RemoteMediaPlayer.this.mg) {
                try {
                    RemoteMediaPlayer.this.xh.b(this.xl);
                    try {
                        RemoteMediaPlayer.this.xg.a(this.xy, this.xs, this.xp);
                        RemoteMediaPlayer.this.xh.b(null);
                    } catch (IllegalStateException e) {
                        a(j(new Status(1)));
                        RemoteMediaPlayer.this.xh.b(null);
                    } catch (IllegalArgumentException e2) {
                        a(j(new Status(1)));
                        RemoteMediaPlayer.this.xh.b(null);
                    } catch (IOException e3) {
                        a(j(new Status(1)));
                        RemoteMediaPlayer.this.xh.b(null);
                    }
                } catch (Throwable th) {
                }
            }
        }
    }

    class AnonymousClass_8 extends b {
        final /* synthetic */ GoogleApiClient xl;
        final /* synthetic */ JSONObject xp;
        final /* synthetic */ boolean xt;

        AnonymousClass_8(GoogleApiClient googleApiClient, boolean z, JSONObject jSONObject) {
            this.xl = googleApiClient;
            this.xt = z;
            this.xp = jSONObject;
        }

        protected void a(dq dqVar) {
            synchronized (RemoteMediaPlayer.this.mg) {
                try {
                    RemoteMediaPlayer.this.xh.b(this.xl);
                    try {
                        RemoteMediaPlayer.this.xg.a(this.xy, this.xt, this.xp);
                        RemoteMediaPlayer.this.xh.b(null);
                    } catch (IllegalStateException e) {
                        a(j(new Status(1)));
                        RemoteMediaPlayer.this.xh.b(null);
                    } catch (IOException e2) {
                        a(j(new Status(1)));
                        RemoteMediaPlayer.this.xh.b(null);
                    }
                } catch (Throwable th) {
                }
            }
        }
    }

    class AnonymousClass_9 extends b {
        final /* synthetic */ GoogleApiClient xl;

        AnonymousClass_9(GoogleApiClient googleApiClient) {
            this.xl = googleApiClient;
        }

        protected void a(dq dqVar) {
            synchronized (RemoteMediaPlayer.this.mg) {
                try {
                    RemoteMediaPlayer.this.xh.b(this.xl);
                    try {
                        RemoteMediaPlayer.this.xg.a(this.xy);
                        RemoteMediaPlayer.this.xh.b(null);
                    } catch (IOException e) {
                        a(j(new Status(1)));
                        RemoteMediaPlayer.this.xh.b(null);
                    }
                } catch (Throwable th) {
                }
            }
        }
    }

    public static interface MediaChannelResult extends Result {
    }

    public static interface OnMetadataUpdatedListener {
        void onMetadataUpdated();
    }

    public static interface OnStatusUpdatedListener {
        void onStatusUpdated();
    }

    private class a implements dw {
        private GoogleApiClient xu;
        private long xv;

        private final class a implements ResultCallback {
            private final long xw;

            a(long j) {
                this.xw = j;
            }

            public void i(Status status) {
                if (!status.isSuccess()) {
                    a.this.xk.xg.a(this.xw, status.getStatusCode());
                }
            }

            public /* synthetic */ void onResult(Result result) {
                i((Status) result);
            }
        }

        public a() {
            this.xv = 0;
        }

        public void a_(String str, String str2, long j, String str3) {
            if (this.xu == null) {
                throw new IOException("No GoogleApiClient available");
            }
            Cast.CastApi.sendMessage(this.xu, str, str2).setResultCallback(new a(j));
        }

        public void b(GoogleApiClient googleApiClient) {
            this.xu = googleApiClient;
        }

        public long cV() {
            long j = this.xv + 1;
            this.xv = j;
            return j;
        }
    }

    private static final class c implements com.google.android.gms.cast.RemoteMediaPlayer.MediaChannelResult {
        private final Status vl;
        private final JSONObject wP;

        c(Status status, JSONObject jSONObject) {
            this.vl = status;
            this.wP = jSONObject;
        }

        public Status getStatus() {
            return this.vl;
        }
    }

    public RemoteMediaPlayer() {
        this.mg = new Object();
        this.xh = new a();
        this.xg = new dv() {
            protected void onMetadataUpdated() {
                RemoteMediaPlayer.this.onMetadataUpdated();
            }

            protected void onStatusUpdated() {
                RemoteMediaPlayer.this.onStatusUpdated();
            }
        };
        this.xg.a(this.xh);
    }

    private void onMetadataUpdated() {
        if (this.xi != null) {
            this.xi.onMetadataUpdated();
        }
    }

    private void onStatusUpdated() {
        if (this.xj != null) {
            this.xj.onStatusUpdated();
        }
    }

    public long getApproximateStreamPosition() {
        long approximateStreamPosition;
        synchronized (this.mg) {
            approximateStreamPosition = this.xg.getApproximateStreamPosition();
        }
        return approximateStreamPosition;
    }

    public MediaInfo getMediaInfo() {
        MediaInfo mediaInfo;
        synchronized (this.mg) {
            mediaInfo = this.xg.getMediaInfo();
        }
        return mediaInfo;
    }

    public MediaStatus getMediaStatus() {
        MediaStatus mediaStatus;
        synchronized (this.mg) {
            mediaStatus = this.xg.getMediaStatus();
        }
        return mediaStatus;
    }

    public String getNamespace() {
        return this.xg.getNamespace();
    }

    public long getStreamDuration() {
        long streamDuration;
        synchronized (this.mg) {
            streamDuration = this.xg.getStreamDuration();
        }
        return streamDuration;
    }

    public PendingResult load(GoogleApiClient googleApiClient, MediaInfo mediaInfo) {
        return load(googleApiClient, mediaInfo, true, 0, null);
    }

    public PendingResult load(GoogleApiClient googleApiClient, MediaInfo mediaInfo, boolean z) {
        return load(googleApiClient, mediaInfo, z, 0, null);
    }

    public PendingResult load(GoogleApiClient googleApiClient, MediaInfo mediaInfo, boolean z, long j) {
        return load(googleApiClient, mediaInfo, z, j, null);
    }

    public PendingResult load(GoogleApiClient googleApiClient, MediaInfo mediaInfo, boolean z, long j, JSONObject jSONObject) {
        return googleApiClient.b(new AnonymousClass_2(googleApiClient, mediaInfo, z, j, jSONObject));
    }

    public void onMessageReceived(CastDevice castDevice, String str, String str2) {
        this.xg.P(str2);
    }

    public PendingResult pause(GoogleApiClient googleApiClient) {
        return pause(googleApiClient, null);
    }

    public PendingResult pause(GoogleApiClient googleApiClient, JSONObject jSONObject) {
        return googleApiClient.b(new AnonymousClass_3(googleApiClient, jSONObject));
    }

    public PendingResult play(GoogleApiClient googleApiClient) {
        return play(googleApiClient, null);
    }

    public PendingResult play(GoogleApiClient googleApiClient, JSONObject jSONObject) {
        return googleApiClient.b(new AnonymousClass_5(googleApiClient, jSONObject));
    }

    public PendingResult requestStatus(GoogleApiClient googleApiClient) {
        return googleApiClient.b(new AnonymousClass_9(googleApiClient));
    }

    public PendingResult seek(GoogleApiClient googleApiClient, long j) {
        return seek(googleApiClient, j, STATUS_SUCCEEDED, null);
    }

    public PendingResult seek(GoogleApiClient googleApiClient, long j, int i) {
        return seek(googleApiClient, j, i, null);
    }

    public PendingResult seek(GoogleApiClient googleApiClient, long j, int i, JSONObject jSONObject) {
        return googleApiClient.b(new AnonymousClass_6(googleApiClient, j, i, jSONObject));
    }

    public void setOnMetadataUpdatedListener(OnMetadataUpdatedListener onMetadataUpdatedListener) {
        this.xi = onMetadataUpdatedListener;
    }

    public void setOnStatusUpdatedListener(OnStatusUpdatedListener onStatusUpdatedListener) {
        this.xj = onStatusUpdatedListener;
    }

    public PendingResult setStreamMute(GoogleApiClient googleApiClient, boolean z) {
        return setStreamMute(googleApiClient, z, null);
    }

    public PendingResult setStreamMute(GoogleApiClient googleApiClient, boolean z, JSONObject jSONObject) {
        return googleApiClient.b(new AnonymousClass_8(googleApiClient, z, jSONObject));
    }

    public PendingResult setStreamVolume(GoogleApiClient googleApiClient, double d) {
        return setStreamVolume(googleApiClient, d, null);
    }

    public PendingResult setStreamVolume(GoogleApiClient googleApiClient, double d, JSONObject jSONObject) {
        if (!Double.isInfinite(d) && !Double.isNaN(d)) {
            return googleApiClient.b(new AnonymousClass_7(googleApiClient, d, jSONObject));
        }
        throw new IllegalArgumentException("Volume cannot be " + d);
    }

    public PendingResult stop(GoogleApiClient googleApiClient) {
        return stop(googleApiClient, null);
    }

    public PendingResult stop(GoogleApiClient googleApiClient, JSONObject jSONObject) {
        return googleApiClient.b(new AnonymousClass_4(googleApiClient, jSONObject));
    }
}
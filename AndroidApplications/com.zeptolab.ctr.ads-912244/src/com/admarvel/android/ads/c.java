package com.admarvel.android.ads;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnBufferingUpdateListener;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.media.MediaPlayer.OnSeekCompleteListener;
import android.media.MediaPlayer.OnVideoSizeChangedListener;
import android.net.Uri;
import android.os.AsyncTask;
import android.util.Log;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.TextureView;
import android.view.TextureView.SurfaceTextureListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.MediaController.MediaPlayerControl;
import android.widget.RelativeLayout;
import com.admarvel.android.util.Logging;
import com.google.android.gms.games.GamesStatusCodes;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.heyzap.http.AsyncHttpClient;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.net.URL;
import java.net.URLConnection;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

@TargetApi(14)
class c extends TextureView implements SurfaceTextureListener, MediaPlayerControl {
    private static long I;
    private Context A;
    private int B;
    private final WeakReference C;
    private final boolean D;
    private int E;
    private boolean F;
    private boolean G;
    private boolean H;
    private c J;
    private OnCompletionListener K;
    private OnSeekCompleteListener L;
    private OnErrorListener M;
    private OnBufferingUpdateListener N;
    public b a;
    public a b;
    OnVideoSizeChangedListener c;
    OnPreparedListener d;
    private int e;
    private Uri f;
    private final Uri g;
    private int h;
    private boolean i;
    private int j;
    private int k;
    private SurfaceTexture l;
    private Surface m;
    private MediaPlayer n;
    private int o;
    private int p;
    private int q;
    private int r;
    private OnCompletionListener s;
    private OnPreparedListener t;
    private int u;
    private OnErrorListener v;
    private int w;
    private boolean x;
    private boolean y;
    private boolean z;

    public static interface a {
        void a_();
    }

    public static interface b {
        void a();

        void b_();

        void c();

        void d();

        void e();

        void f();

        void g();
    }

    private static class c extends AsyncTask {
        private final String a;
        private final String b;
        private FileOutputStream c;
        private int d;

        public c(String str, String str2, int i) {
            this.d = 0;
            this.a = str;
            this.b = str2;
            this.d = i;
        }

        protected Boolean a(Void... voidArr) {
            if (isCancelled()) {
                return Boolean.valueOf(false);
            }
            File file = new File(this.b + ".PROCESSING");
            if (file.exists()) {
                return Boolean.valueOf(true);
            }
            file.deleteOnExit();
            try {
                if (isCancelled()) {
                    if (file.exists()) {
                        file.delete();
                    }
                    return Boolean.valueOf(false);
                } else {
                    URLConnection openConnection = new URL(this.a).openConnection();
                    openConnection.setConnectTimeout(GamesStatusCodes.STATUS_ACHIEVEMENT_UNLOCK_FAILURE);
                    openConnection.setReadTimeout(AsyncHttpClient.DEFAULT_SOCKET_TIMEOUT);
                    openConnection.connect();
                    if (isCancelled()) {
                        if (file.exists()) {
                            file.delete();
                        }
                        return Boolean.valueOf(false);
                    } else {
                        InputStream inputStream = openConnection.getInputStream();
                        if (inputStream == null) {
                            throw new RuntimeException("stream is null");
                        } else if (isCancelled()) {
                            if (file.exists()) {
                                file.delete();
                            }
                            return Boolean.valueOf(false);
                        } else if (file.exists()) {
                            return Boolean.valueOf(true);
                        } else {
                            this.c = new FileOutputStream(file);
                            byte[] bArr = new byte[4096];
                            while (!isCancelled()) {
                                int read = inputStream.read(bArr);
                                if (read == -1) {
                                    break;
                                }
                                this.c.write(bArr, 0, read);
                            }
                            if (isCancelled()) {
                                if (file.exists()) {
                                    file.delete();
                                }
                                return Boolean.valueOf(false);
                            } else {
                                File file2 = new File(this.b);
                                if (file2.exists()) {
                                    file2.delete();
                                }
                                file.renameTo(file2);
                                if (file.exists()) {
                                    file.delete();
                                }
                                inputStream.close();
                                this.c.flush();
                                this.c = null;
                                return Boolean.valueOf(true);
                            }
                        }
                    }
                }
            } catch (Exception e) {
                Logging.log(Log.getStackTraceString(e));
                if (file.exists()) {
                    file.delete();
                }
                return Boolean.valueOf(false);
            }
        }

        protected void a(Boolean bool) {
            if (!bool.booleanValue() && this.d < 1) {
                if (Version.getAndroidSDKVersion() >= 11) {
                    Logging.log("#### onPostExecute");
                    new c(this.a, this.b, 1).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
                } else {
                    new c(this.a, this.b, 1).execute(new Void[0]);
                }
            }
            super.onPostExecute(bool);
        }

        protected /* synthetic */ Object doInBackground(Object[] objArr) {
            return a((Void[]) objArr);
        }

        protected void onCancelled() {
            File file = new File(this.b);
            if (file.exists()) {
                file.delete();
            }
            super.onCancelled();
        }

        protected /* synthetic */ void onPostExecute(Object obj) {
            a((Boolean) obj);
        }
    }

    class d implements OnPreparedListener {
        d() {
        }

        public void onPrepared(MediaPlayer mediaPlayer) {
            c.this.j = GoogleScorer.CLIENT_PLUS;
            c.this.x = c.this.y = c.this.z = true;
            if (c.this.t != null) {
                c.this.t.onPrepared(c.this.n);
            }
            if (c.this != null) {
                c.this.d();
            }
            int e = c.this.w;
            if (e != 0) {
                c.this.seekTo(e);
            }
            if (c.this.o != 0 && c.this.p != 0) {
                c.this.i();
                if (c.this.k == 3) {
                    c.this.start();
                } else if (!c.this.isPlaying() && e == 0 && c.this.getCurrentPosition() > 0) {
                }
            } else if (c.this.k == 3) {
                c.this.start();
            }
        }
    }

    class e implements OnVideoSizeChangedListener {
        e() {
        }

        public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
            if (c.this.o != 0 && c.this.p != 0) {
                c.this.i();
            }
        }
    }

    static {
        I = 600000;
    }

    public c(Context context, boolean z, String str) {
        super(context);
        this.e = 0;
        this.i = true;
        this.j = 0;
        this.k = 0;
        this.l = null;
        this.m = null;
        this.n = null;
        this.B = 0;
        this.E = 0;
        this.F = false;
        this.G = false;
        this.H = false;
        this.c = new e();
        this.d = new d();
        this.K = new OnCompletionListener() {
            public void onCompletion(MediaPlayer mediaPlayer) {
                c.this.j = IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR;
                c.this.k = IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR;
                c.this.i = false;
                if (c.this.s != null) {
                    c.this.s.onCompletion(c.this.n);
                }
            }
        };
        this.L = new OnSeekCompleteListener() {
            public void onSeekComplete(MediaPlayer mediaPlayer) {
                if (c.this != null) {
                    c.this.d();
                }
            }
        };
        this.M = new OnErrorListener() {
            public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
                c.this.j = -1;
                c.this.k = -1;
                c.this.i = false;
                if (c.this != null) {
                    c.this.d();
                }
                if (!c.this.D) {
                    c.this.c();
                }
                return (c.this.v == null || c.this.v.onError(c.this.n, i, i2)) ? true : true;
            }
        };
        this.N = new OnBufferingUpdateListener() {
            public void onBufferingUpdate(MediaPlayer mediaPlayer, int i) {
                c.this.u = i;
            }
        };
        this.A = context;
        this.C = null;
        this.D = z;
        j();
        this.g = Uri.parse(str);
        this.f = Uri.parse(str);
    }

    private void j() {
        setSurfaceTextureListener(this);
        setWillNotDraw(false);
        this.o = 0;
        this.p = 0;
        setFocusable(true);
        setFocusableInTouchMode(true);
        requestFocus();
        this.j = 0;
        this.k = 0;
    }

    private void k() {
        FileInputStream fileInputStream;
        Throwable th;
        Logging.log("### openVideo");
        if (this.f != null && this.l != null) {
            if (Utils.checkNetworkConnection(this.A)) {
                a(false);
                try {
                    this.n = new MediaPlayer();
                    this.n.setOnPreparedListener(this.d);
                    this.n.setOnVideoSizeChangedListener(this.c);
                    this.h = -1;
                    this.n.setOnCompletionListener(this.K);
                    this.n.setOnErrorListener(this.M);
                    this.n.setOnBufferingUpdateListener(this.N);
                    this.n.setOnSeekCompleteListener(this.L);
                    this.u = 0;
                    if (this.f.toString().startsWith("/")) {
                        try {
                            fileInputStream = new FileInputStream(new File(this.f.toString()));
                            try {
                                this.n.setDataSource(fileInputStream.getFD());
                                if (fileInputStream != null) {
                                    fileInputStream.close();
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                if (fileInputStream != null) {
                                    fileInputStream.close();
                                }
                                throw th;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            fileInputStream = null;
                            if (fileInputStream != null) {
                                fileInputStream.close();
                            }
                            throw th;
                        }
                    } else {
                        this.n.setDataSource(this.A, this.f);
                    }
                    this.m = new Surface(this.l);
                    this.n.setSurface(this.m);
                    this.n.setAudioStreamType(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE);
                    this.n.prepareAsync();
                    this.j = 1;
                } catch (IOException e) {
                    Logging.log(Log.getStackTraceString(e));
                    this.j = -1;
                    this.k = -1;
                    this.M.onError(this.n, 1, 0);
                } catch (IllegalArgumentException e2) {
                    Logging.log(Log.getStackTraceString(e2));
                    this.j = -1;
                    this.k = -1;
                    this.M.onError(this.n, 1, 0);
                }
            } else if (this.a != null) {
                this.a.f();
            }
        }
    }

    private boolean l() {
        return this.n != null && this.j != -1 && this.j != 0 && this.j != 1;
    }

    public Uri a() {
        return this.g;
    }

    String a(String str) {
        Logging.log("#### getCachedVideoUriPath url: " + str);
        File file = new File(getContext().getDir("adm_cache_files", 0).getAbsolutePath() + "/" + d(str));
        if (!file.exists() || System.currentTimeMillis() - file.lastModified() >= I) {
            return null;
        }
        Logging.log("## getCachedVideoUriPath cached: " + file.getPath());
        return file.getPath();
    }

    public void a(int i, int i2, int i3, int i4) {
        this.o = i;
        this.p = i2;
        this.q = i3;
        this.r = i4;
    }

    public void a(OnCompletionListener onCompletionListener) {
        this.s = onCompletionListener;
    }

    public void a(OnErrorListener onErrorListener) {
        this.v = onErrorListener;
    }

    public void a(OnPreparedListener onPreparedListener) {
        this.t = onPreparedListener;
    }

    public void a(Uri uri) {
        try {
            if (this.n != null) {
                this.n.reset();
                this.n.release();
                this.n = null;
            }
            this.f = uri;
            this.w = 0;
            k();
            requestLayout();
            invalidate();
        } catch (Exception e) {
            Throwable th = e;
            if (this.a != null) {
                this.a.g();
            }
            Logging.log(Log.getStackTraceString(th));
        }
    }

    public void a(Uri uri, Boolean bool) {
        try {
            this.f = uri;
            this.w = 0;
            Logging.log("### setVideoURIForMrec");
            k();
            requestLayout();
            invalidate();
        } catch (Exception e) {
            Throwable th = e;
            if (this.a != null) {
                this.a.g();
            }
            Logging.log(Log.getStackTraceString(th));
        }
    }

    public void a(a aVar) {
        this.b = aVar;
    }

    public void a(String str, int i) {
        if (this.E <= 5) {
            this.E++;
            if (!b(str) && !c(str)) {
                String str2 = getContext().getDir("adm_cache_files", 0).getAbsolutePath() + "/" + d(str);
                Logging.log("#### tempPath " + str2);
                if (Version.getAndroidSDKVersion() >= 11) {
                    this.J = new c(str, str2, i);
                    this.J.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
                } else {
                    this.J = new c(str, str2, i);
                    this.J.execute(new Void[0]);
                }
            }
        }
    }

    public void a(String str, Boolean bool) {
        a(Uri.parse(str), bool);
    }

    public void a(boolean z) {
        try {
            if (this.n != null) {
                this.n.reset();
                this.n.release();
                this.n = null;
                this.j = 0;
                if (z) {
                    this.k = 0;
                }
            }
            if (this.m != null) {
                this.m.release();
                this.m = null;
            }
        } catch (Exception e) {
            Throwable th = e;
            if (this.a != null) {
                this.a.g();
            }
            Logging.log(Log.getStackTraceString(th));
        }
    }

    void b() {
        if (this.J != null) {
            this.J.cancel(true);
            this.J = null;
            Logging.log("### " + this.J + " thread interuped ");
        }
    }

    public boolean b(String str) {
        Logging.log("#### isVideoUriCached url: " + str);
        File file = new File(getContext().getDir("adm_cache_files", 0).getAbsolutePath() + "/" + d(str));
        if (!file.exists() || System.currentTimeMillis() - file.lastModified() >= I) {
            return false;
        }
        Logging.log("## file cached: " + file.getPath());
        return true;
    }

    public void c_() {
        try {
            if (this.n != null) {
                this.n.reset();
                this.n.release();
                this.n = null;
                this.j = 0;
                this.k = 0;
                if (this.a != null) {
                    this.a.b();
                }
            }
        } catch (Exception e) {
            Throwable th = e;
            if (this.a != null) {
                this.a.g();
            }
            Logging.log(Log.getStackTraceString(th));
        }
    }

    public boolean c_(String str) {
        Logging.log("#### isVideoUriProcessing url: " + str);
        File file = new File(getContext().getDir("adm_cache_files", 0).getAbsolutePath() + "/" + d(str) + ".PROCESSING");
        if (!file.exists() || System.currentTimeMillis() - file.lastModified() >= I) {
            return false;
        }
        Logging.log("## file processing: " + file.getPath());
        return true;
    }

    public boolean canPause() {
        return this.x;
    }

    public boolean canSeekBackward() {
        return this.y;
    }

    public boolean canSeekForward() {
        return this.z;
    }

    public String d(String str) {
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            instance.update(str.getBytes());
            byte[] digest = instance.digest();
            StringBuffer stringBuffer = new StringBuffer();
            int i = 0;
            while (i < digest.length) {
                stringBuffer.append(Integer.toHexString(digest[i] & 255));
                i++;
            }
            return stringBuffer.toString();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return AdTrackerConstants.BLANK;
        }
    }

    public void d() {
        if (l()) {
            this.n.setVolume(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
        }
    }

    public void e() {
        if (l()) {
            this.n.setVolume(1.0f, 1.0f);
        }
    }

    public void e(String str) {
        this.i = true;
        if (b(str)) {
            Logging.log("##### playWithCacheOrLoad  using cached path: " + a(str));
            a(a(str), Boolean.valueOf(true));
            start();
        } else {
            Logging.log("##### playWithCacheOrLoad: call start to make video play after loading");
            a(str, Boolean.valueOf(true));
            start();
            a(str, 1);
        }
    }

    public void f() {
        this.i = true;
        if (b(this.g.toString())) {
            a(a(this.g.toString()), Boolean.valueOf(false));
            start();
        } else {
            a(this.g, Boolean.valueOf(false));
            start();
            a(this.g.toString(), 1);
        }
    }

    public void g() {
        Logging.log("### ResumeVideoIfPaused");
        if (this.B > 0) {
            if (b(this.g.toString()) && this.i) {
                a(a(this.g.toString()), Boolean.valueOf(false));
                seekTo(this.B);
                this.k = 3;
            } else if (this.i) {
                a(this.g, Boolean.valueOf(false));
                start();
                a(this.g.toString(), 1);
            }
            if (this.a != null) {
                this.a.c();
            }
        } else {
            if (b(this.g.toString())) {
                a(a(this.g.toString()), Boolean.valueOf(false));
            } else {
                a(this.g);
            }
            start();
        }
    }

    public int getBufferPercentage() {
        return this.n != null ? this.u : 0;
    }

    public int getCurrentPosition() {
        if (!l()) {
            return 0;
        }
        int currentPosition = this.n.getCurrentPosition();
        this.e = currentPosition;
        return currentPosition;
    }

    public int getDuration() {
        if (!l()) {
            this.h = -1;
            return this.h;
        } else if (this.h > 0) {
            return this.h;
        } else {
            this.h = this.n.getDuration();
            return this.h;
        }
    }

    public int h() {
        if (!l()) {
            return this.B;
        }
        this.e = this.n.getCurrentPosition();
        this.B = this.e;
        return this.e;
    }

    public void i() {
        LayoutParams layoutParams;
        float f = getContext().getResources().getDisplayMetrics().density;
        layoutParams = (this.o <= 0 || this.p <= 0) ? new RelativeLayout.LayoutParams(-2, -2) : new RelativeLayout.LayoutParams((int) (((float) this.o) * f), (int) (((float) this.p) * f));
        if (this.q >= 0) {
            if (this.r >= 0) {
                layoutParams.leftMargin = (int) (((float) this.q) * f);
                layoutParams.topMargin = (int) (f * ((float) this.r));
            } else {
                layoutParams.leftMargin = (int) (f * ((float) this.q));
                layoutParams.addRule(MMException.REQUEST_BAD_RESPONSE);
            }
        } else if (this.r >= 0) {
            layoutParams.topMargin = (int) (f * ((float) this.r));
            layoutParams.addRule(MMException.REQUEST_NOT_FILLED);
        } else {
            layoutParams.addRule(R.styleable.MapAttrs_zOrderOnTop);
        }
        setLayoutParams(layoutParams);
    }

    public boolean isPlaying() {
        return l() && this.n.isPlaying();
    }

    protected void onAttachedToWindow() {
        Logging.log("#### VideoView - onAttachedToWindow");
        this.F = false;
        super.onAttachedToWindow();
    }

    protected void onDetachedFromWindow() {
        this.F = true;
        super.onDetachedFromWindow();
    }

    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        Logging.log("#### VideoView - onSurfaceTextureAvailable: " + isAvailable());
        this.G = true;
        this.l = surfaceTexture;
        if (this.j != 0) {
            k();
        }
    }

    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        if (this.F && this.b != null) {
            Logging.log("#### VideoView - onSurfaceTextureDestroyed + windowDetached");
            this.b.a();
        }
        Logging.log("#### VideoView - onSurfaceTextureDestroyed");
        this.G = false;
        this.H = false;
        a(true);
        return false;
    }

    @SuppressLint({"NewApi"})
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        Logging.log("#### VideoView - onSurfaceTextureSizeChanged");
    }

    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.a != null) {
            this.a.e();
        }
        return false;
    }

    public boolean onTrackballEvent(MotionEvent motionEvent) {
        return false;
    }

    public void pause() {
        try {
            this.j = 4;
            this.B = getCurrentPosition();
            if (l() && this.n.isPlaying()) {
                if (this.D) {
                    this.n.pause();
                } else {
                    c();
                }
                if (this.a != null) {
                    this.a.a();
                }
            }
            this.k = 4;
        } catch (IllegalStateException e) {
            Throwable th = e;
            if (this.a != null) {
                this.a.g();
            }
            Logging.log(Log.getStackTraceString(th));
        }
    }

    public void seekTo(int i) {
        if (Utils.checkNetworkConnection(this.A)) {
            if (l()) {
                this.n.seekTo(i);
                this.w = 0;
            } else {
                this.w = i;
            }
        } else if (this.a != null) {
            this.a.f();
        }
    }

    public void start() {
        try {
            if (l()) {
                this.n.start();
                this.j = 3;
            }
            this.k = 3;
            this.B = 0;
        } catch (IllegalStateException e) {
            Throwable th = e;
            if (this.a != null) {
                this.a.g();
            }
            Logging.log(Log.getStackTraceString(th));
        }
    }
}
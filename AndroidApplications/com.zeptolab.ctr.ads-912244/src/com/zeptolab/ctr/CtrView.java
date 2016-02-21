package com.zeptolab.ctr;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.opengl.GLSurfaceView;
import android.os.Build.VERSION;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.widget.RelativeLayout;
import com.brightcove.player.event.EventType;
import com.zeptolab.ctr.CtrRenderer.Callback;
import com.zeptolab.ctr.CtrVideoPlayer.PlaybackDelegate;
import com.zeptolab.ctr.ads.AdBanner;
import com.zeptolab.ctr.ads.SwitcherInterstitialBanner;
import com.zeptolab.ctr.billing.BillingInterface;
import com.zeptolab.ctr.billing.google.CtrBillingGoogle;
import com.zeptolab.ctr.mappicker.MapPicker;
import com.zeptolab.ctr.operatortracker.OperatorTracker;
import com.zeptolab.ctr.operatortracker.deutschetelekom.OperatorIdentifierDeutscheTelekom;
import com.zeptolab.ctr.pushes.CtrPushesManagerOL;
import com.zeptolab.ctr.scorer.CtrScorer;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.ctr.threading.ThreadPoolManager;
import com.zeptolab.ctr.video.brightcove.Brightcove;
import com.zeptolab.utils.SystemInfo;
import com.zeptolab.utils.ZipUtils;
import com.zeptolab.zbuild.ZBuildConfig;
import com.zeptolab.zframework.ZJNIManager;
import com.zeptolab.zframework.net.ZHttpClient;

public class CtrView extends GLSurfaceView implements PlaybackDelegate {
    public static final String AnalyticsJNIKey = "analytics";
    public static final String BillingManagerJNIKey = "billing";
    public static final String HttpClientJNIKey = "httpClient";
    public static final String LoaderJNIKey = "loader";
    public static final String PreferencesJNIKey = "preferences";
    public static final String SaveManagerJNIKey = "saveManager";
    public static final String SoundPlayerJNIKey = "soundPlayer";
    public static final String VideoPlayerJNIKey = "videoPlayer";
    public static final String ZipUtilsJNIKey = "zipUtils";
    public static volatile boolean haveSurface;
    private CtrScorer amazonscorer;
    private Brightcove bcove;
    private BillingInterface billing;
    private CtrBillingGoogle billingGoogle;
    private ZJNIManager jniManager;
    private Activity mainActivity;
    private RelativeLayout mainLayout;
    private OperatorIdentifierDeutscheTelekom opDT;
    private OperatorTracker opTrack;
    private CtrRenderer renderer;
    private CtrScorer scoreloopscorer;
    private CtrScorer scorer;
    private CtrSoundManager soundMgr;

    class AnonymousClass_1 implements Callback {
        final /* synthetic */ Context val$context;
        final /* synthetic */ Activity val$finalActivity;
        final /* synthetic */ GLSurfaceView val$fview;
        final /* synthetic */ SharedPreferences val$sprefs;

        AnonymousClass_1(Context context, Activity activity, SharedPreferences sharedPreferences, GLSurfaceView gLSurfaceView) {
            this.val$context = context;
            this.val$finalActivity = activity;
            this.val$sprefs = sharedPreferences;
            this.val$fview = gLSurfaceView;
        }

        public void call() {
            CtrPushesManagerOL.initialize(this.val$context, this.val$finalActivity, this.val$sprefs, this.val$fview);
            ThreadPoolManager.getInstance().scheduleAtFixedRate(new GiftThread(this.val$fview), 0, 300);
        }
    }

    class GiftThread implements Runnable {
        private final GLSurfaceView m_view;

        public GiftThread(GLSurfaceView gLSurfaceView) {
            this.m_view = gLSurfaceView;
        }

        public void run() {
            L.d("OtherLevels", "refreshGifts");
            CtrPushesManagerOL.refreshGifts(this.m_view, "gift");
        }
    }

    static {
        haveSurface = false;
    }

    @SuppressLint({"NewApi"})
    public CtrView(Activity activity, Analytics analytics, AdBanner adBanner, MapPicker mapPicker, RelativeLayout relativeLayout) {
        super(activity);
        this.scoreloopscorer = null;
        this.mainActivity = activity;
        this.mainLayout = relativeLayout;
        this.jniManager = new ZJNIManager();
        this.jniManager.put(PreferencesJNIKey, CtrPreferences.getInstance());
        this.jniManager.put(AnalyticsJNIKey, analytics);
        this.jniManager.put(LoaderJNIKey, new CtrResourceLoader(activity, this, adBanner, mapPicker));
        ZipUtils zipUtils = new ZipUtils(activity);
        ZipUtils.enableLogging(ZBuildConfig.target.contains(EventType.DEBUG));
        this.jniManager.put(ZipUtilsJNIKey, zipUtils);
        this.jniManager.put(HttpClientJNIKey, new ZHttpClient(this));
        this.soundMgr = new CtrSoundManager(activity.getAssets());
        this.jniManager.put(SoundPlayerJNIKey, this.soundMgr);
        this.jniManager.put(SaveManagerJNIKey, new CtrSaveManager(activity));
        this.jniManager.put(VideoPlayerJNIKey, new CtrVideoPlayer(activity));
        this.opTrack = new OperatorTracker(activity);
        this.opDT = new OperatorIdentifierDeutscheTelekom();
        this.opTrack.addOperator(this.opDT.getOpId());
        SwitcherInterstitialBanner.getInstance().setView(this);
        this.billingGoogle = new CtrBillingGoogle(this.mainActivity, this);
        this.billing = this.billingGoogle;
        this.jniManager.put(BillingManagerJNIKey, this.billing);
        if (SystemInfo.isLargeHeap((ActivityManager) CtrApp.getInstance().getSystemService("activity"))) {
            this.scorer = new GoogleScorer(activity, this);
            nativeInitScorer(this.scorer);
        }
        this.bcove = new Brightcove(activity, this);
        nativeInitBrightcove(this.bcove);
        SystemInfo.setStoreTextureInRAM(true);
        if (VERSION.SDK_INT >= 11) {
            try {
                setPreserveEGLContextOnPause(!ZBuildConfig.target.contains(EventType.DEBUG));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        this.renderer = new CtrRenderer(this);
        this.renderer.jniManager = this.jniManager;
        this.renderer.addNativeInitCallback(new AnonymousClass_1(activity.getApplicationContext(), activity, CtrApp.getInstance().getSharedPreferences(ZBuildConfig.prefs_name, 0), this));
        setRenderer(this.renderer);
    }

    private native void nativeInitBrightcove(Brightcove brightcove);

    public void finishJobs() {
        CtrPreferences.getInstance().flush();
    }

    public boolean handleActivityResult(int i, int i2, Intent intent) {
        if (this.scorer != null) {
            ((GoogleScorer) this.scorer).onActivityResult(i, i2, intent);
        }
        boolean z = SwitcherInterstitialBanner.getInstance().handleActivityResult(i, i2, intent);
        if (this.billingGoogle == null) {
            return z;
        }
        return z || this.billingGoogle.handleActivityResult(i, i2, intent);
    }

    public boolean handleNewIntent(Intent intent) {
        return false;
    }

    public void hideSplashScreen() {
        this.mainActivity.runOnUiThread(new Runnable() {
            public void run() {
                if (CtrView.this.mainActivity instanceof CtrApp) {
                    ((CtrApp) CtrView.this.mainActivity).hideSplash();
                }
            }
        });
    }

    public native void nativeInitScorer(CtrScorer ctrScorer);

    public void onBackPressed() {
        queueEvent(new Runnable() {
            public void run() {
                if (!CtrView.this.renderer.onBackPressed() && !CtrView.this.renderer.isPlayback()) {
                    CtrView.this.mainActivity.finish();
                }
            }
        });
    }

    public void onCreate() {
        if (this.scorer != null) {
            ((GoogleScorer) this.scorer).onCreate();
        }
    }

    public void onDestroy() {
        queueEvent(new Runnable() {
            public void run() {
                CtrView.this.renderer.onDestroy();
            }
        });
        if (this.billing != null) {
            this.billing.onDestroy();
        }
        this.soundMgr.onDestroy();
    }

    public void onInterstitialHide() {
        this.renderer.onResume();
    }

    public void onInterstitialShow() {
        queueEvent(new Runnable() {
            public void run() {
                CtrView.this.renderer.onPause();
            }
        });
    }

    public void onMenuPressed() {
        queueEvent(new Runnable() {
            public void run() {
                CtrView.this.renderer.onMenuPressed();
            }
        });
    }

    public void onPause() {
        if (this.billing != null) {
            this.billing.onPause();
        }
        Runnable anonymousClass_3 = new Runnable() {
            public synchronized void run() {
                CtrView.this.renderer.onPause();
                notifyAll();
            }
        };
        if (this.mainActivity.isFinishing()) {
            finishJobs();
        }
        if (this.scorer != null) {
            this.scorer.onPause();
        }
        CtrPushesManagerOL.onPause(this.mainActivity);
        synchronized (anonymousClass_3) {
            queueEvent(anonymousClass_3);
            try {
                anonymousClass_3.wait();
            } catch (Exception e) {
            }
        }
        super.onPause();
    }

    public void onPlaybackFinished() {
        this.renderer.onPlaybackFinished();
    }

    public void onPlaybackStarted() {
        this.renderer.onPlaybackStarted();
    }

    public void onPrePause() {
        this.renderer.onPrePause();
    }

    public void onResume() {
        this.renderer.onResume();
        super.onResume();
        if (this.billing != null) {
            this.billing.onResume();
        }
        if (this.scorer != null) {
            this.scorer.onResume();
        }
        CtrPushesManagerOL.onResume(this.mainActivity);
    }

    public void onStart() {
        if (this.billing != null) {
            this.billing.onStart();
        }
        if (this.opTrack != null) {
            this.opTrack.track();
        }
        if (this.scorer != null) {
            ((GoogleScorer) this.scorer).onStart();
        }
    }

    public void onStop() {
        if (this.scorer != null) {
            ((GoogleScorer) this.scorer).onStop();
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        return this.renderer.onTouch(motionEvent);
    }

    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        super.surfaceCreated(surfaceHolder);
        haveSurface = true;
    }

    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        super.surfaceDestroyed(surfaceHolder);
        haveSurface = false;
    }
}
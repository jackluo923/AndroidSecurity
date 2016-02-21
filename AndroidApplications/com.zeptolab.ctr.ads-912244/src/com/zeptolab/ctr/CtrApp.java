package com.zeptolab.ctr;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Debug.MemoryInfo;
import android.support.v4.app.FragmentActivity;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.view.KeyEvent;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.brightcove.player.event.EventType;
import com.zeptolab.ctr.ads.AdBanner;
import com.zeptolab.ctr.ads.AdMarvelBanner;
import com.zeptolab.ctr.ads.AdMarvelBannerController;
import com.zeptolab.ctr.ads.AdMarvelNativeBanner;
import com.zeptolab.ctr.ads.AdMarvelPostitial;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.ads.R.drawable;
import com.zeptolab.ctr.ads.SwitcherInterstitialBanner;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.chartboost.ChartboostManager;
import com.zeptolab.ctr.mappicker.MapPicker;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.ctr.threading.ThreadPoolManager;
import com.zeptolab.zbuild.ZBuildConfig;
import com.zeptolab.zbuild.ZR;
import java.io.BufferedReader;
import java.io.FileReader;
import java.lang.Thread.UncaughtExceptionHandler;
import java.lang.ref.WeakReference;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class CtrApp extends FragmentActivity implements UncaughtExceptionHandler {
    private static boolean activityCreated;
    private static WeakReference instance;
    private static boolean main;
    private static int memSize;
    private KillActivityOnScreenOff activityKiller;
    private AdMarvelNativeBanner admarvel;
    private Analytics analytics;
    private AdBanner banner;
    private ChartboostManager chartboostMgr;
    private SwitcherInterstitialBanner interbanner;
    private boolean isFinishing;
    private boolean isMainActivity;
    private RelativeLayout layout;
    private MapPicker mappicker;
    final MemoryInfo meminfo;
    private Rewards rewards;
    private ImageView splashView;
    private CtrView view;

    class AlphaAnimationListener implements AnimationListener {
        AlphaAnimationListener() {
        }

        public void onAnimationEnd(Animation animation) {
            L.d("AlphaAnimationListener", "splash hide animation finished");
            CtrApp.this.layout.removeView(CtrApp.this.splashView);
        }

        public void onAnimationRepeat(Animation animation) {
            L.d("AlphaAnimationListener", "splash hide animation repeated");
        }

        public void onAnimationStart(Animation animation) {
            L.d("AlphaAnimationListener", "splash hide animation started");
        }
    }

    static {
        activityCreated = false;
        main = false;
        if (ZBuildConfig.target.contains(EventType.DEBUG) || ZBuildConfig.target.contains(EventType.TEST)) {
            L.LOG = true;
        }
        System.loadLibrary("ctr-jni");
        memSize = 0;
    }

    public CtrApp() {
        this.splashView = null;
        this.isMainActivity = false;
        this.isFinishing = false;
        this.meminfo = new MemoryInfo();
        if (!activityCreated) {
            instance = new WeakReference(this);
        }
    }

    private void forceFinish() {
        System.runFinalization();
        System.exit(0);
    }

    public static Context getContext() {
        try {
            return getInstance().getApplicationContext();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static CtrApp getInstance() {
        return (CtrApp) instance.get();
    }

    public static String humanReadableByteCount(long j) {
        if (j < ((long) true)) {
            return j + " B";
        }
        char charAt = "KMGTPE".charAt(((int) (Math.log((double) j) / Math.log((double) true))) - 1);
        return String.format(Locale.US, "%.1f %cB", new Object[]{Double.valueOf(((double) j) / Math.pow((double) true, (double) i)), Character.valueOf(charAt)});
    }

    public static boolean isLowMem() {
        if (ZBuildConfig.device.equals(ZBuildConfig.device)) {
            return memSize > 0 && memSize <= 294912;
        } else if (memSize <= 0 || memSize > 557056) {
            return false;
        } else {
            return true;
        }
    }

    public static void showMsg(String str) {
        try {
            AlertDialog create = new Builder(getInstance()).create();
            create.setTitle("Alert");
            create.setMessage(str);
            create.show();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void disableRewards() {
        this.rewards = null;
    }

    public void finish() {
        L.i(ZBuildConfig.prefs_name, "finish");
        if (this.isMainActivity) {
            L.i(ZBuildConfig.prefs_name, "finish mainActivity");
            this.isFinishing = true;
        }
        super.finish();
    }

    public void hideBanner() {
        if (this.banner != null) {
            this.banner.hideBanner();
        }
    }

    public void hideSplash() {
        Animation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        alphaAnimation.setDuration(200);
        alphaAnimation.setAnimationListener(new AlphaAnimationListener());
        this.splashView.startAnimation(alphaAnimation);
    }

    public void interstitialHide() {
        if (this.isMainActivity) {
            this.view.onInterstitialHide();
        }
    }

    public void interstitialShow() {
        if (this.isMainActivity) {
            this.view.onInterstitialShow();
        }
    }

    public native void nativeInitAdMarvelAds(AdMarvelNativeBanner adMarvelNativeBanner);

    public native void nativeInitRewards(Rewards rewards);

    protected void onActivityResult(int i, int i2, Intent intent) {
        if (!this.view.handleActivityResult(i, i2, intent)) {
            super.onActivityResult(i, i2, intent);
        }
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        L.i(ZBuildConfig.prefs_name, "onCreate " + getInstance() + ' ' + activityCreated);
        if (activityCreated) {
            L.i(ZBuildConfig.prefs_name, "destroying half-blood activity");
            forceFinish();
        } else {
            this.isMainActivity = true;
            main = true;
            activityCreated = true;
            requestWindowFeature(1);
            getWindow().addFlags(AccessibilityNodeInfoCompat.ACTION_NEXT_HTML_ELEMENT);
            Thread.setDefaultUncaughtExceptionHandler(this);
            setVolumeControlStream(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE);
            this.analytics = new Analytics(this);
            this.interbanner = SwitcherInterstitialBanner.getInstance();
            AdMarvelBannerController.onStart(this);
            this.banner = new AdMarvelBanner(this);
            AdMarvelPostitial.checkDisabled();
            if (ZBuildConfig.target.equals(EventType.DEBUG)) {
                this.mappicker = new MapPicker(this);
            }
            this.layout = new RelativeLayout(this);
            this.view = new CtrView(this, this.analytics, this.banner, this.mappicker, this.layout);
            this.layout.addView(this.view);
            this.banner.setView(this.view);
            this.splashView = new ImageView(this);
            ImageView imageView = this.splashView;
            drawable com_zeptolab_ctr_ads_R_drawable = ZR.drawable;
            imageView.setImageResource(R.drawable.zeptolab_logo);
            this.splashView.setBackgroundColor(-1);
            this.layout.addView(this.splashView, -1, -1);
            this.chartboostMgr = ChartboostManager.initialize(this.view, this);
            this.rewards = new Rewards(this, this.view);
            nativeInitRewards(this.rewards);
            if (this.banner != null) {
                this.banner.setLayout(this.layout);
            }
            this.interbanner.setLayout(this.layout);
            if (this.mappicker != null) {
                this.mappicker.setLayout(this.layout);
            }
            setContentView(this.layout);
            CtrVideoPlayer.setPlaybackDelegate(this.view);
            this.view.onCreate();
            this.admarvel = new AdMarvelNativeBanner(this, this.layout);
            this.admarvel.setView(this.view);
            nativeInitAdMarvelAds(this.admarvel);
            Runnable anonymousClass_1 = new Runnable() {
                public void run() {
                    CtrApp.this.analytics.trackInstall();
                }
            };
        }
    }

    protected void onDestroy() {
        if (this.isMainActivity) {
            L.i(ZBuildConfig.prefs_name, "onDestroy");
            if (this.activityKiller != null) {
                unregisterReceiver(this.activityKiller);
            }
            this.view.onDestroy();
            AdMarvelBannerController.onDestroy(this);
            if (this.analytics != null) {
                this.analytics.onDestroy();
            }
            if (this.banner != null) {
                this.banner.onDestroy();
            }
            this.interbanner.onDestroy();
            if (this.chartboostMgr != null) {
                this.chartboostMgr.onDestroy(this);
            }
            ThreadPoolManager.getInstance().shutdown();
            super.onDestroy();
            if (AdMarvelPostitial.isDisabled()) {
                forceFinish();
            }
        } else {
            super.onDestroy();
        }
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        switch (i) {
            case GoogleScorer.CLIENT_APPSTATE:
                this.view.onBackPressed();
                return true;
            case 82:
                this.view.onMenuPressed();
                return true;
            default:
                return super.onKeyDown(i, keyEvent);
        }
    }

    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        switch (i) {
            case GoogleScorer.CLIENT_APPSTATE:
                return true;
            default:
                return super.onKeyUp(i, keyEvent);
        }
    }

    protected void onNewIntent(Intent intent) {
        if (!this.view.handleNewIntent(intent)) {
            super.onNewIntent(intent);
        }
    }

    protected void onPause() {
        if (this.isMainActivity) {
            this.view.onPause();
            if (this.banner != null) {
                this.banner.onPause();
            }
            this.interbanner.onPause();
            super.onPause();
            AdMarvelPostitial.onPause(this);
        } else {
            L.i(ZBuildConfig.prefs_name, "half-blood onPause");
            super.onPause();
        }
    }

    protected void onResume() {
        super.onResume();
        if (this.isMainActivity) {
            this.view.onResume();
            AdMarvelPostitial.onResume(this);
            if (this.banner != null) {
                this.banner.onResume();
            }
            this.interbanner.onResume();
        } else {
            L.i(ZBuildConfig.prefs_name, "half-blood onResume");
        }
    }

    public boolean onSearchRequested() {
        return true;
    }

    protected void onStart() {
        L.i(ZBuildConfig.prefs_name, "onStart");
        super.onStart();
        if (this.analytics != null) {
            this.analytics.onStartSession(ZBuildConfig.id_flurry);
            this.analytics.startZendeskSession();
        }
        if (this.rewards != null) {
            this.rewards.onStartSession();
        }
        if (this.chartboostMgr != null) {
            this.chartboostMgr.onStart(this);
        }
        try {
            Pattern compile = Pattern.compile("MemTotal: *([0-9]+).*");
            BufferedReader bufferedReader = new BufferedReader(new FileReader("/proc/meminfo"));
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                Matcher matcher = compile.matcher(readLine.trim());
                if (matcher.matches()) {
                    memSize = Integer.parseInt(matcher.group(1));
                }
            }
            bufferedReader.close();
        } catch (Exception e) {
        }
        this.view.onStart();
    }

    protected void onStop() {
        super.onStop();
        if (this.analytics != null) {
            this.analytics.onEndSession();
        }
        if (this.rewards != null) {
            this.rewards.onEndSession();
        }
        if (this.chartboostMgr != null) {
            this.chartboostMgr.onStop(this);
        }
        this.view.onStop();
    }

    public void tryFinish() {
        if (this.isFinishing) {
            this.isFinishing = false;
            forceFinish();
        }
    }

    public void uncaughtException(Thread thread, Throwable th) {
        th.printStackTrace();
    }
}
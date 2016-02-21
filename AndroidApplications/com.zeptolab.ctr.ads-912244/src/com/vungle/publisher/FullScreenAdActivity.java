package com.vungle.publisher;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentTransaction;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnSystemUiVisibilityChangeListener;
import com.google.android.gms.drive.DriveFile;
import com.vungle.log.Logger;
import com.vungle.publisher.ad.AdManager;
import com.vungle.publisher.db.model.Ad;
import com.vungle.publisher.db.model.LocalAd;
import com.vungle.publisher.db.model.Video;
import com.vungle.publisher.display.view.AdFragment;
import com.vungle.publisher.display.view.PostRollFragment;
import com.vungle.publisher.display.view.VideoFragment;
import com.vungle.publisher.display.view.VideoFragment.Factory;
import com.vungle.publisher.env.SdkState;
import com.vungle.publisher.inject.Injector;
import com.vungle.publisher.reporting.AdReportEventListener;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.io.File;
import javax.inject.Inject;

public class FullScreenAdActivity extends FragmentActivity {
    public static final String AD_CONFIG_EXTRA_KEY = "adConfig";
    public static final String AD_ID_EXTRA_KEY = "adId";
    @Inject
    AdManager a;
    @Inject
    AdReportEventListener b;
    @Inject
    as c;
    @Inject
    cj d;
    @Inject
    Factory e;
    @Inject
    SdkState f;
    private Ad g;
    private AdFragment h;
    private PostRollFragment i;
    private View j;
    private VideoFragment k;

    final class AnonymousClass_1 implements OnSystemUiVisibilityChangeListener {
        final /* synthetic */ a a;

        AnonymousClass_1(a aVar) {
            this.a = aVar;
        }

        public final void onSystemUiVisibilityChange(int i) {
            if ((i & 4) == 0) {
                FullScreenAdActivity.this.a(this.a);
            }
        }
    }

    static /* synthetic */ class AnonymousClass_2 {
        static final /* synthetic */ int[] a;

        static {
            a = new int[Orientation.values().length];
            try {
                a[Orientation.autoRotate.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            a[Orientation.matchVideo.ordinal()] = 2;
        }
    }

    class a extends com.vungle.publisher.display.view.PostRollFragment.a {
        a() {
        }

        public final void a_() {
            Logger.v(Logger.AD_TAG, "postRoll.onCancel()");
            FullScreenAdActivity.this.a(false);
        }

        public final void b() {
            Logger.v(Logger.AD_TAG, "postRoll.onCta()");
            FullScreenAdActivity.this.b.a(com.vungle.publisher.db.model.EventTracking.a.i);
            FullScreenAdActivity.this.b.a(com.vungle.publisher.db.model.AdReportEvent.a.d, null);
            FullScreenAdActivity.this.c();
        }

        public final void c() {
            Logger.v(Logger.AD_TAG, "postRoll.onRepeat()");
            FullScreenAdActivity.this.b();
            AdReportEventListener adReportEventListener = FullScreenAdActivity.this.b;
            try {
                adReportEventListener.a(com.vungle.publisher.db.model.AdReportEvent.a.h, null);
                FullScreenAdActivity.this = adReportEventListener.b.r();
            } catch (Exception e) {
                Logger.w(Logger.REPORT_TAG, "error reporting replay", e);
            }
        }
    }

    class b implements com.vungle.publisher.display.view.VideoFragment.a {
        b() {
        }

        public final void a() {
            Logger.v(Logger.AD_TAG, "video.onCancel()");
            FullScreenAdActivity.this.a();
        }

        public final void b_() {
            Logger.v(Logger.AD_TAG, "video.onCta()");
            FullScreenAdActivity.this.b.a(com.vungle.publisher.db.model.AdReportEvent.a.e, null);
            FullScreenAdActivity.this.c();
        }

        public final void c() {
            Logger.v(Logger.AD_TAG, "video.onNext()");
            FullScreenAdActivity.this.a();
        }
    }

    class c implements com.vungle.publisher.ao.a {
        c() {
        }

        public final void a() {
            FullScreenAdActivity.this.a(false);
        }
    }

    private void a(AdFragment adFragment) {
        if (adFragment != this.h) {
            FragmentTransaction beginTransaction = getSupportFragmentManager().beginTransaction();
            beginTransaction.setCustomAnimations(17432576, 17432577);
            this.h = adFragment;
            beginTransaction.replace(16908290, adFragment, adFragment.b());
            beginTransaction.commit();
        }
    }

    final void a() {
        if (this.i == null) {
            a(false);
        } else {
            this.b.a(com.vungle.publisher.db.model.EventTracking.a.j);
            a(this.i);
        }
    }

    final void a(a aVar) {
        if (this.c.a(aq.b) && aVar.isImmersiveMode()) {
            this.j.setSystemUiVisibility(5894);
            this.j.setOnSystemUiVisibilityChangeListener(new AnonymousClass_1(aVar));
        }
    }

    final void a(boolean z) {
        try {
            this.d.b(new ag(this.g, z));
            finish();
        } catch (Exception e) {
            Logger.w(Logger.AD_TAG, new StringBuilder("error exiting ad ").append(this.g == null ? null : this.g.x()).toString());
            finish();
        }
    }

    final void b() {
        if (this.k == null) {
            a();
        } else {
            a(this.k);
        }
    }

    final void c() {
        try {
            String f = this.g.f();
            Logger.v(Logger.AD_TAG, new StringBuilder("call to action destination ").append(f).toString());
            if (f != null) {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(f));
                intent.addFlags(DriveFile.MODE_READ_ONLY);
                startActivity(intent);
                String[] strArr = new String[]{this.g.g()};
                this.b.g.a(null, strArr);
            }
        } catch (Exception e) {
            Logger.e(Logger.AD_TAG, new StringBuilder("error loading call-to-action URL ").append(null).toString(), e);
        }
        a(true);
    }

    public void onBackPressed() {
        try {
            Logger.v(Logger.AD_TAG, "back button pressed");
            this.b.a(com.vungle.publisher.db.model.AdReportEvent.a.a, null);
            this.h.a();
        } catch (Exception e) {
            Logger.w(Logger.AD_TAG, "exception in onBackPressed", e);
        }
    }

    protected void onCreate(Bundle bundle) {
        boolean z = false;
        try {
            Logger.d(Logger.AD_TAG, "interstital ad");
            super.onCreate(bundle);
            Injector.getInstance().a.a(this);
            Intent intent = getIntent();
            a aVar = (a) intent.getParcelableExtra(AD_CONFIG_EXTRA_KEY);
            String stringExtra = intent.getStringExtra(AD_ID_EXTRA_KEY);
            AdManager adManager = this.a;
            Ad a = adManager.g.a(stringExtra);
            if (a == null) {
                a = adManager.m.a(stringExtra);
            }
            this.g = a;
            if (a == null) {
                Logger.w(Logger.AD_TAG, "no ad in activity");
                this.d.b(new ad());
                finish();
            } else {
                int i;
                int i2;
                this.j = getWindow().getDecorView();
                Video j = a.j();
                this.b.b();
                i = bundle != null ? true : z;
                if (i == 0) {
                    this.d.b(new t(a, aVar));
                }
                Factory factory = this.e;
                VideoFragment videoFragment = (VideoFragment) getSupportFragmentManager().findFragmentByTag("videoFragment");
                AdReportEventListener adReportEventListener = this.b;
                com.vungle.publisher.display.view.VideoFragment.a bVar = new b();
                this.k = videoFragment == null ? Factory.a((VideoFragment) factory.a.get(), a, aVar, adReportEventListener, bVar) : Factory.a(videoFragment, a, aVar, adReportEventListener, bVar);
                if (a instanceof LocalAd && ((LocalAd) a).r() != null) {
                    this.i = (PostRollFragment) getSupportFragmentManager().findFragmentByTag("postRollFragment");
                    if (this.i == null) {
                        stringExtra = new File(ba.a(new Object[]{localArchive.r(), "index.html"})).toURI().toString();
                        Logger.d(Logger.AD_TAG, new StringBuilder("post-roll URL: ").append(stringExtra).toString());
                        this.i = new PostRollFragment(stringExtra, new a(), new c());
                    } else {
                        this.i.a(new a(), new c());
                    }
                }
                a(aVar);
                Orientation orientation = aVar.getOrientation();
                switch (AnonymousClass_2.a[orientation.ordinal()]) {
                    case GoogleScorer.CLIENT_GAMES:
                        Logger.d(Logger.AD_TAG, new StringBuilder("ad orientation ").append(orientation).toString());
                        i2 = 10;
                        break;
                    default:
                        i2 = (j.k == null || j.u == null || j.u.intValue() <= j.k.intValue()) ? z : true;
                        if (i2 != 0) {
                            Logger.d(Logger.AD_TAG, new StringBuilder("ad orientation ").append(orientation).append(" (landscape)").toString());
                            i2 = IabHelper.BILLING_RESPONSE_RESULT_ERROR;
                        } else {
                            i2 = (j.k == null || j.u == null || j.k.intValue() <= j.u.intValue()) ? z : true;
                            if (i2 != 0) {
                                Logger.d(Logger.AD_TAG, new StringBuilder("ad orientation ").append(orientation).append(" (portrait)").toString());
                                i2 = GoogleScorer.CLIENT_ALL;
                            } else {
                                Logger.d(Logger.AD_TAG, new StringBuilder("ad orientation ").append(orientation).append(" (unknown) --> auto-rotate").toString());
                                i2 = 10;
                            }
                        }
                        break;
                }
                setRequestedOrientation(i2);
                if ("postRollFragment".equals(i != 0 ? bundle.getString("currentFragment") : null)) {
                    a();
                } else {
                    b();
                }
            }
        } catch (Exception e) {
            Logger.e(Logger.AD_TAG, "error playing ad", e);
            a(z);
        }
    }

    protected void onDestroy() {
        try {
            super.onDestroy();
            this.b.d();
        } catch (Exception e) {
            Logger.w(Logger.AD_TAG, "exception in onDestroy()", e);
        }
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        this.h.a(i);
        return super.onKeyDown(i, keyEvent);
    }

    protected void onPause() {
        try {
            super.onPause();
            this.f.d();
        } catch (Exception e) {
            Logger.w(Logger.AD_TAG, "exception in onPause()", e);
        }
    }

    protected void onResume() {
        try {
            super.onResume();
            this.f.c();
        } catch (Exception e) {
            Logger.w(Logger.AD_TAG, "exception in onResume()", e);
        }
    }

    protected void onSaveInstanceState(Bundle bundle) {
        try {
            super.onSaveInstanceState(bundle);
            bundle.putString("currentFragment", this.h.b());
        } catch (Exception e) {
            Logger.w(Logger.AD_TAG, "exception in onSaveInstanceState", e);
        }
    }

    public void onWindowFocusChanged(boolean z) {
        try {
            super.onWindowFocusChanged(z);
            this.h.a(z);
        } catch (Exception e) {
            Logger.w(Logger.AD_TAG, "exception in onWindowFocusChanged", e);
        }
    }
}
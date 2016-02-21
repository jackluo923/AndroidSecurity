package com.admarvel.android.ads;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Typeface;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.PowerManager;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.ViewSwitcher;
import com.admarvel.android.util.Logging;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventType;
import com.brightcove.player.model.Video.Fields;
import com.google.android.gms.plus.PlusShare;
import com.google.android.gms.tagmanager.DataLayer;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.io.ByteArrayInputStream;
import java.io.ObjectInputStream;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;

public class AdMarvelVideoActivity extends Activity implements OnCompletionListener, OnErrorListener, OnPreparedListener, com.admarvel.android.ads.m.a {
    static int a;
    static int b;
    static int c;
    private static Activity l;
    private boolean A;
    private boolean B;
    private boolean C;
    private RelativeLayout D;
    private long E;
    private boolean F;
    private boolean G;
    private boolean H;
    private boolean I;
    private String J;
    private ImageView K;
    private m L;
    private WeakReference M;
    private Handler N;
    private Utils O;
    private String P;
    private Map Q;
    private List R;
    private List S;
    private TextView T;
    private LinearLayout U;
    private i V;
    private i W;
    private i X;
    private i Y;
    private i Z;
    private long aa;
    private boolean ab;
    private BroadcastReceiver ac;
    private int ad;
    private Runnable ae;
    private Runnable af;
    private Runnable ag;
    private Runnable ah;
    private Runnable ai;
    private OnTouchListener aj;
    private OnTouchListener ak;
    public boolean d;
    AdMarvelXMLReader e;
    AdMarvelXMLElement f;
    LinearLayout g;
    WeakReference h;
    public k i;
    public m j;
    public int k;
    private WeakReference m;
    private AdMarvelAd n;
    private RelativeLayout o;
    private String p;
    private boolean q;
    private boolean r;
    private boolean s;
    private boolean t;
    private boolean u;
    private boolean v;
    private int w;
    private String x;
    private String y;
    private boolean z;

    private class a implements Runnable {
        private WeakReference b;

        public a(ImageView imageView) {
            this.b = null;
            this.b = new WeakReference(imageView);
        }

        public void run() {
            ImageView imageView = (ImageView) this.b.get();
            if (imageView != null && imageView.getDrawable() != null) {
                imageView.getDrawable().setAlpha(MMException.AD_BROKEN_REFERENCE);
                if (AdMarvelVideoActivity.this.Z != null && AdMarvelVideoActivity.this.Z.c()) {
                    AdMarvelVideoActivity.this.Z.b();
                }
            }
        }
    }

    public static class b extends RelativeLayout {
        TextView a;
        ProgressBar b;
        private final Context c;
        private boolean d;
        private boolean e;
        private boolean f;
        private int g;
        private final WeakReference h;

        public b(Context context, AdMarvelVideoActivity adMarvelVideoActivity) {
            super(context);
            this.d = false;
            this.e = true;
            this.f = true;
            this.g = 0;
            this.h = new WeakReference(adMarvelVideoActivity);
            this.c = context;
            LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams.addRule(R.styleable.MapAttrs_zOrderOnTop);
            setLayoutParams(layoutParams);
            setBackgroundColor(getResources().getColor(17170445));
            int a = a(100.0f);
            this.a = new TextView(context);
            LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
            this.a.setLayoutParams(layoutParams2);
            if (Version.getAndroidSDKVersion() < 9) {
                this.b = new ProgressBar(this.c, null, 16842872);
                layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            } else {
                this.b = new ProgressBar(this.c, null, 16843401);
                layoutParams = new RelativeLayout.LayoutParams(a(50.0f), a(50.0f));
            }
            this.b.setId(189523436);
            this.b.setVisibility(0);
            layoutParams.addRule(R.styleable.MapAttrs_zOrderOnTop);
            addView(this.b, layoutParams);
            layoutParams2.addRule(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, this.b.getId());
            layoutParams2.addRule(MMException.REQUEST_NOT_FILLED);
            layoutParams2.addRule(R.styleable.MapAttrs_zOrderOnTop);
            addView(this.a);
        }

        private int a(float f) {
            return (int) TypedValue.applyDimension(1, f, getResources().getDisplayMetrics());
        }

        private void e() {
            AdMarvelVideoActivity adMarvelVideoActivity = (AdMarvelVideoActivity) this.h.get();
            if (adMarvelVideoActivity != null) {
                LinearLayout linearLayout = (LinearLayout) adMarvelVideoActivity.findViewById(c);
                if (linearLayout != null) {
                    linearLayout.setVisibility(0);
                }
                if (((LinearLayout) adMarvelVideoActivity.findViewById(b)) != null && adMarvelVideoActivity.t && adMarvelVideoActivity.s) {
                    adMarvelVideoActivity.b(true);
                }
            }
        }

        public boolean a() {
            return this.f;
        }

        public void b_() {
            setShowing(true);
            this.b.setVisibility(0);
            setVisibility(0);
        }

        public void c() {
            this.d = true;
        }

        public void d() {
            setShowing(false);
            this.b.setVisibility(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED);
            setVisibility(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED);
        }

        public int getProgress() {
            return this.g;
        }

        public void setCancelable(boolean z) {
            this.e = z;
        }

        public void setMessage(String str) {
            this.a.setText(str);
        }

        public void setProgress(int i) {
            this.g = i;
            this.b.setProgress(i);
            if (i >= 100) {
                d();
            }
            this.a.setText("Loading..." + i + "% ");
            this.a.invalidate();
        }

        public void setShowing(boolean z) {
            this.f = z;
        }
    }

    private class c extends AsyncTask {
        ImageView a;

        public c(ImageView imageView) {
            this.a = imageView;
        }

        protected Bitmap a(String... strArr) {
            Bitmap bitmap = null;
            try {
                return BitmapFactory.decodeStream(new URL(strArr[0]).openStream());
            } catch (Exception e) {
                Logging.log(Log.getStackTraceString(e));
                return bitmap;
            }
        }

        protected void a(Bitmap bitmap) {
            this.a.setImageBitmap(bitmap);
        }

        protected /* synthetic */ Object doInBackground(Object[] objArr) {
            return a((String[]) objArr);
        }

        protected /* synthetic */ void onPostExecute(Object obj) {
            a((Bitmap) obj);
        }
    }

    private class d implements Runnable {
        private final WeakReference b;
        private final WeakReference c;

        public d(ImageView imageView, String str) {
            this.b = new WeakReference(str);
            this.c = new WeakReference(imageView);
        }

        public void run() {
            if (this.c.get() != null && this.b.get() != null) {
                new c((ImageView) this.c.get()).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[]{(String) this.b.get()});
            }
        }
    }

    public static class e implements Runnable {
        private final AdMarvelAd a;
        private final Context b;

        public e(AdMarvelAd adMarvelAd, Context context) {
            this.a = adMarvelAd;
            this.b = context;
        }

        public void run() {
            if (this.a != null) {
                this.a.setResponseJson();
            }
            com.admarvel.android.util.a b = com.admarvel.android.util.a.b(this.b);
            if (b != null && this.a != null) {
                int a = b.a(this.b);
                this.a.setAdHistoryCounter(a);
                b.a(this.a.getAdHistoryDumpString(), a);
            }
        }
    }

    private static class f {
        static void a(Activity activity) {
            activity.getWindow().setFlags(16777216, 16777216);
        }
    }

    class g {
        public int a;
        public List b;

        public g(int i, List list) {
            this.b = new ArrayList();
            this.a = i;
            this.b = list;
        }
    }

    class h extends BroadcastReceiver {
        h() {
        }

        public void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("android.intent.action.SCREEN_OFF")) {
                if (AdMarvelVideoActivity.this.h != null) {
                    com.admarvel.android.ads.AdMarvelVideoActivity.b bVar = (com.admarvel.android.ads.AdMarvelVideoActivity.b) AdMarvelVideoActivity.this.h.get();
                    if (!(bVar == null || !bVar.a() || AdMarvelVideoActivity.this.H)) {
                        bVar.d();
                        AdMarvelVideoActivity.this.c();
                    }
                }
                if (AdMarvelVideoActivity.this.F && AdMarvelVideoActivity.this.i == com.admarvel.android.ads.AdMarvelVideoActivity.k.g && AdMarvelVideoActivity.this.L != null) {
                    AdMarvelVideoActivity.this.i = com.admarvel.android.ads.AdMarvelVideoActivity.k.b;
                    AdMarvelVideoActivity.this.F = false;
                }
                if (AdMarvelVideoActivity.this.G && AdMarvelVideoActivity.this.i == com.admarvel.android.ads.AdMarvelVideoActivity.k.g && AdMarvelVideoActivity.this.L != null) {
                    AdMarvelVideoActivity.this.L.pause();
                    AdMarvelVideoActivity.this.i = com.admarvel.android.ads.AdMarvelVideoActivity.k.c;
                    AdMarvelVideoActivity.this.G = false;
                }
            }
        }
    }

    static class i {
        private Handler a;
        private Runnable b;
        private int c;
        private boolean d;
        private boolean e;
        private Runnable f;

        public i(Handler handler, Runnable runnable, int i) {
            this.d = false;
            this.e = false;
            this.f = new Runnable() {
                public void run() {
                    if (i.this.d) {
                        i.this.post(i.this.b);
                        if (i.this.e) {
                            i.this.d = false;
                        } else {
                            i.this.postDelayed(i.this.f, (long) i.this.c);
                        }
                    }
                }
            };
            this.a = handler;
            this.b = runnable;
            this.c = i;
        }

        public i(Handler handler, Runnable runnable, int i, boolean z) {
            this(handler, runnable, i);
            this.e = z;
        }

        public void a() {
            if (!this.d && this.c >= 1) {
                this.d = true;
                this.a.postDelayed(this.f, (long) this.c);
            }
        }

        public void b() {
            if (this.d) {
                this.d = false;
                this.a.removeCallbacks(this.b);
                this.a.removeCallbacks(this.f);
            }
        }

        public boolean c() {
            return this.d;
        }
    }

    class j {
        private final ArrayList b;

        public class a {
            public String a;
            public List b;

            public a(String str, String str2) {
                this.a = str;
                this.b = new ArrayList();
                this.b.add(URLDecoder.decode(str2));
            }

            public String a_() {
                return this.a;
            }

            public void a_(String str) {
                this.b.add(URLDecoder.decode(str));
            }
        }

        public j() {
            this.b = new ArrayList();
        }

        public List a() {
            return this.b;
        }

        public void a(String str) {
            int indexOf = str.indexOf(63);
            b(indexOf >= 0 ? str.substring(indexOf + 1) : AdTrackerConstants.BLANK);
        }

        protected void a(String str, String str2) {
            int i = 0;
            while (i < this.b.size()) {
                if (((a) this.b.get(i)).a().equalsIgnoreCase(str)) {
                    ((a) this.b.get(i)).a(str2);
                    return;
                } else {
                    i++;
                }
            }
            this.b.add(new a(str, str2));
        }

        public void b(String str) {
            StringTokenizer stringTokenizer = new StringTokenizer(str, "&");
            while (stringTokenizer.hasMoreElements()) {
                String nextToken = stringTokenizer.nextToken();
                if (nextToken.length() > 0) {
                    int indexOf = nextToken.indexOf(61);
                    if (indexOf < 0) {
                        a(nextToken, AdTrackerConstants.BLANK);
                    } else {
                        a(nextToken.substring(0, indexOf), nextToken.substring(indexOf + 1));
                    }
                }
            }
        }
    }

    public enum k {
        Loading,
        Playing,
        Paused,
        Stopped,
        Finished,
        PausedByToolbar,
        PausedBySystem;

        static {
            a = new com.admarvel.android.ads.AdMarvelVideoActivity.k("Loading", 0);
            b = new com.admarvel.android.ads.AdMarvelVideoActivity.k("Playing", 1);
            c = new com.admarvel.android.ads.AdMarvelVideoActivity.k("Paused", 2);
            d = new com.admarvel.android.ads.AdMarvelVideoActivity.k("Stopped", 3);
            e = new com.admarvel.android.ads.AdMarvelVideoActivity.k("Finished", 4);
            f = new com.admarvel.android.ads.AdMarvelVideoActivity.k("PausedByToolbar", 5);
            g = new com.admarvel.android.ads.AdMarvelVideoActivity.k("PausedBySystem", 6);
            h = new com.admarvel.android.ads.AdMarvelVideoActivity.k[]{a, b, c, d, e, f, g};
        }
    }

    public enum l {
        START,
        COMPLETE,
        PAUSE,
        RESUME,
        CLOSE,
        STOP;

        static {
            a = new com.admarvel.android.ads.AdMarvelVideoActivity.l("START", 0);
            b = new com.admarvel.android.ads.AdMarvelVideoActivity.l("COMPLETE", 1);
            c = new com.admarvel.android.ads.AdMarvelVideoActivity.l("PAUSE", 2);
            d = new com.admarvel.android.ads.AdMarvelVideoActivity.l("RESUME", 3);
            e = new com.admarvel.android.ads.AdMarvelVideoActivity.l("CLOSE", 4);
            f = new com.admarvel.android.ads.AdMarvelVideoActivity.l("STOP", 5);
            g = new com.admarvel.android.ads.AdMarvelVideoActivity.l[]{a, b, c, d, e, f};
        }
    }

    public enum m {
        Mute,
        UnMute,
        Unknown;

        static {
            a = new com.admarvel.android.ads.AdMarvelVideoActivity.m("Mute", 0);
            b = new com.admarvel.android.ads.AdMarvelVideoActivity.m("UnMute", 1);
            c = new com.admarvel.android.ads.AdMarvelVideoActivity.m("Unknown", 2);
            d = new com.admarvel.android.ads.AdMarvelVideoActivity.m[]{a, b, c};
        }
    }

    static {
        a = 103444;
        b = 123124;
        c = 23232;
    }

    public AdMarvelVideoActivity() {
        this.q = false;
        this.s = false;
        this.t = false;
        this.u = true;
        this.v = false;
        this.w = -1;
        this.z = false;
        this.A = false;
        this.B = false;
        this.C = false;
        this.D = null;
        this.F = false;
        this.G = false;
        this.H = false;
        this.I = false;
        this.d = false;
        this.j = m.c;
        this.T = null;
        this.U = null;
        this.k = -1;
        this.ab = false;
        this.ad = 0;
        this.ae = new Runnable() {
            public void run() {
                if (AdMarvelVideoActivity.this.L != null && !AdMarvelVideoActivity.this.A) {
                    AdMarvelVideoActivity.this.a(AdMarvelVideoActivity.this.k - AdMarvelVideoActivity.this.a((long) (AdMarvelVideoActivity.this.L.getCurrentPosition() == 0 ? AdMarvelVideoActivity.this.L.f() : AdMarvelVideoActivity.this.L.getCurrentPosition())), AdMarvelVideoActivity.this.T);
                    AdMarvelVideoActivity.this.a(AdMarvelVideoActivity.this.a((long) AdMarvelVideoActivity.this.L.getCurrentPosition()));
                    if (!AdMarvelVideoActivity.this.q) {
                        AdMarvelVideoActivity.this.g();
                        AdMarvelVideoActivity.this.q = true;
                    }
                }
            }
        };
        this.af = new Runnable() {
            public void run() {
                try {
                    if (AdMarvelVideoActivity.this.M != null) {
                        x xVar = (x) AdMarvelVideoActivity.this.M.get();
                        if (xVar != null && xVar instanceof LinearLayout) {
                            if (xVar != null && AdMarvelVideoActivity.this.s) {
                                int i = 0;
                                while (i < xVar.getChildCount()) {
                                    if (xVar.getChildAt(i) instanceof d) {
                                        d dVar = (d) xVar.getChildAt(i);
                                        if (dVar != null && dVar.c.equalsIgnoreCase("done")) {
                                            dVar.setClickable(true);
                                            dVar.setEnabled(true);
                                            if (dVar.getChildAt(0) instanceof ImageView) {
                                                if (AdMarvelVideoActivity.this.Z != null && AdMarvelVideoActivity.this.Z.c()) {
                                                    AdMarvelVideoActivity.this.Z.b();
                                                }
                                                ImageView imageView = (ImageView) dVar.getChildAt(0);
                                                if (imageView.getDrawable() != null) {
                                                    imageView.getDrawable().setAlpha(MotionEventCompat.ACTION_MASK);
                                                    imageView.invalidate();
                                                }
                                            }
                                        }
                                    }
                                    i++;
                                }
                            }
                            AdMarvelVideoActivity.this.v = false;
                            if (AdMarvelVideoActivity.this.X != null) {
                                AdMarvelVideoActivity.this.X.b();
                                AdMarvelVideoActivity.this.C = false;
                                AdMarvelVideoActivity.this.D.setVisibility(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED);
                                AdMarvelVideoActivity.this.o();
                            }
                        }
                    }
                } catch (Exception e) {
                    Logging.log(Log.getStackTraceString(e));
                }
            }
        };
        this.ag = new Runnable() {
            public void run() {
                try {
                    com.admarvel.android.ads.AdMarvelVideoActivity.b bVar = (com.admarvel.android.ads.AdMarvelVideoActivity.b) AdMarvelVideoActivity.this.h.get();
                    if (bVar != null) {
                        bVar.d();
                    }
                } catch (Exception e) {
                    Logging.log(Log.getStackTraceString(e));
                }
            }
        };
        this.ah = new Runnable() {
            public void run() {
                if (AdMarvelVideoActivity.this.C && AdMarvelVideoActivity.this.D != null) {
                    try {
                        CharSequence replace;
                        AdMarvelVideoActivity.this.D.setVisibility(0);
                        int l = AdMarvelVideoActivity.this.w - AdMarvelVideoActivity.this.a(System.currentTimeMillis() - AdMarvelVideoActivity.this.E);
                        replace = (AdMarvelVideoActivity.this.J == null || AdMarvelVideoActivity.this.J.length() <= 0 || !AdMarvelVideoActivity.this.J.contains("@seconds")) ? "You Can Skip Ad in " + l + " seconds" : AdMarvelVideoActivity.this.J.replace("@seconds", String.valueOf(l));
                        ((TextView) AdMarvelVideoActivity.this.D.getChildAt(0)).setText(replace);
                    } catch (Exception e) {
                        Logging.log(Log.getStackTraceString(e));
                    }
                }
            }
        };
        this.ai = new Runnable() {
            public void run() {
                LinearLayout linearLayout = (LinearLayout) AdMarvelVideoActivity.this.findViewById(b);
                if (AdMarvelVideoActivity.this.s && linearLayout != null && linearLayout.getVisibility() == 0 && System.currentTimeMillis() - AdMarvelVideoActivity.this.aa >= 3000) {
                    AdMarvelVideoActivity.this.b(false);
                }
                AdMarvelVideoActivity.this.Y.b();
            }
        };
        this.aj = new OnTouchListener() {
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() == 0) {
                    AdMarvelVideoActivity.this.onUserInteraction();
                }
                return false;
            }
        };
        this.ak = new OnTouchListener() {
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() == 0) {
                    LinearLayout linearLayout = (LinearLayout) AdMarvelVideoActivity.this.findViewById(b);
                    if (!(!AdMarvelVideoActivity.this.s || linearLayout == null || !AdMarvelVideoActivity.this.u || AdMarvelVideoActivity.this.i == com.admarvel.android.ads.AdMarvelVideoActivity.k.d || AdMarvelVideoActivity.this.i == com.admarvel.android.ads.AdMarvelVideoActivity.k.e)) {
                        AdMarvelVideoActivity.this.onUserInteraction();
                    }
                }
                return false;
            }
        };
    }

    private int a(long j) {
        return ((int) j) / 1000;
    }

    private void a(int i) {
        if (this.R != null && this.O != null) {
            while (this.R.size() > 0) {
                int i2 = ((g) this.R.get(0)).a;
                if (i != i2) {
                    return;
                }
                if (i == i2) {
                    List list = ((g) this.R.get(0)).b;
                    if (list != null) {
                        Iterator it = list.iterator();
                        while (it.hasNext()) {
                            this.O.firePixel((String) it.next());
                        }
                        this.R.remove(0);
                    } else {
                        return;
                    }
                }
            }
        }
    }

    private void a(int i, TextView textView) {
        CharSequence charSequence;
        int i2 = i / 60;
        int i3 = i % 60;
        if (i == 0) {
            charSequence = " 00:00";
        } else {
            charSequence = "-" + (i2 < 10 ? "0" + i2 : Integer.valueOf(i2)) + ":" + (i3 < 10 ? "0" + i3 : Integer.valueOf(i3));
        }
        if (textView != null) {
            if (!(textView.getVisibility() == 0 && this.U.getVisibility() == 0)) {
                textView.setVisibility(0);
                this.U.setVisibility(0);
            }
            textView.setText(charSequence);
        }
    }

    private void a(LinearLayout linearLayout, boolean z) {
        Animation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        alphaAnimation.setInterpolator(new DecelerateInterpolator());
        alphaAnimation.setDuration(800);
        Animation alphaAnimation2 = new AlphaAnimation(1.0f, 0.0f);
        alphaAnimation2.setInterpolator(new AccelerateInterpolator());
        alphaAnimation2.setDuration(500);
        if (z) {
            linearLayout.setAnimation(alphaAnimation);
        } else {
            linearLayout.setAnimation(alphaAnimation2);
        }
    }

    private void a(RelativeLayout relativeLayout) {
        this.D = new RelativeLayout(this);
        LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(R.styleable.MapAttrs_uiZoomControls);
        layoutParams.addRule(R.styleable.MapAttrs_uiZoomGestures);
        this.D.setLayoutParams(layoutParams);
        this.D.setBackgroundColor(0);
        View textView = new TextView(this);
        LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(R.styleable.MapAttrs_uiZoomGestures);
        textView.setLayoutParams(layoutParams2);
        textView.setTypeface(Typeface.DEFAULT_BOLD);
        this.D.addView(textView);
        this.D.setVisibility(GoogleScorer.CLIENT_APPSTATE);
        relativeLayout.addView(this.D);
    }

    private void a(AdMarvelXMLElement adMarvelXMLElement, l lVar) {
        if (this.Q != null && adMarvelXMLElement != null && adMarvelXMLElement.getChildren().containsKey("pixel")) {
            ArrayList arrayList = (ArrayList) adMarvelXMLElement.getChildren().get("pixel");
            List arrayList2 = new ArrayList();
            arrayList2.clear();
            int i = 0;
            while (i < arrayList.size()) {
                arrayList2.add(((AdMarvelXMLElement) arrayList.get(i)).getData());
                i++;
            }
            this.Q.put(lVar, arrayList2);
        }
    }

    private void b(RelativeLayout relativeLayout) {
        this.K = new ImageView(this);
        LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(R.styleable.MapAttrs_zOrderOnTop);
        this.K.setLayoutParams(layoutParams);
        if (Version.getAndroidSDKVersion() >= 11) {
            this.N.post(new d(this.K, this.y));
        } else {
            new c(this.K).execute(new String[]{this.y});
        }
        if (this.S == null || this.S.size() <= 0) {
            this.K.setVisibility(0);
        } else if (this.S.contains(k.a)) {
            this.K.setVisibility(0);
        } else {
            this.K.setVisibility(GoogleScorer.CLIENT_APPSTATE);
        }
        relativeLayout.addView(this.K);
    }

    private LinearLayout e(String str) {
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setId(b);
        linearLayout.setGravity(80);
        View xVar = new x(this.L, this, this, str, this.P);
        this.M = new WeakReference(xVar);
        linearLayout.addView(xVar);
        LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(R.styleable.MapAttrs_useViewLifecycle);
        linearLayout.setLayoutParams(layoutParams);
        return linearLayout;
    }

    private String f(String str) {
        if (str == null || str.length() <= 0) {
            return null;
        }
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        List list = null;
        j jVar = new j();
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("<videoTrackingEvents>");
        String str7 = "<toolbar > <item type=\"SystemItem\" ><action type=\"done\"/></item> <item type=\"Toggle\"> <subitem type=\"SystemItem\" > <action type=\"pause\"/> </subitem> <subitem type=\"SystemItem\" > <action type=\"resume\"/> </subitem> </item> <item type=\"SystemItem\" subtype=\"UIBarButtonSystemItemFlexibleSpace\"  /> <item type=\"SystemItem\" subtype=\"UIBarButtonSystemItemFlexibleSpace\"  /> <item type=\"SystemItem\" subtype=\"UIBarButtonSystemItemFlexibleSpace\"  /> <item type=\"SystemItem\" subtype=\"UIBarButtonSystemItemFlexibleSpace\"  /> <item type=\"Timer\"/> </toolbar>";
        String str8 = "<toolbar > <item type=\"SystemItem\" ><action type=\"done\"/></item> <item type=\"Toggle\"> <subitem type=\"SystemItem\" > <action type=\"pause\"/> </subitem> <subitem type=\"SystemItem\" > <action type=\"resume\"/> </subitem> </item> <item type=\"SystemItem\" >%s<action type=\"open_url\">%s</action></item> <item type=\"SystemItem\" subtype=\"UIBarButtonSystemItemFlexibleSpace\"  /> <item type=\"SystemItem\" subtype=\"UIBarButtonSystemItemFlexibleSpace\"  /> <item type=\"SystemItem\" subtype=\"UIBarButtonSystemItemFlexibleSpace\"  /> <item type=\"Timer\"/> </toolbar>";
        String str9 = "<customad type=\"video\"><video duration=\"%s\" forcequit=\"%s\">%s</video>%s%s%s</customad>";
        jVar.a(str);
        if (jVar == null) {
            return null;
        }
        String str10;
        Object obj;
        Iterator it = jVar.a().iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            if ("xml".equalsIgnoreCase(aVar.a)) {
                return (String) aVar.b.get(0);
            }
            String str11;
            List list2;
            List list3;
            if (Event.VIDEO.equalsIgnoreCase(aVar.a)) {
                list3 = list;
                str11 = str6;
                str6 = str5;
                str5 = str4;
                str4 = str3;
                str3 = d((String) aVar.b.get(0));
                list2 = list3;
            } else if (Fields.DURATION.equalsIgnoreCase(aVar.a)) {
                str3 = str2;
                str = str6;
                str6 = str5;
                str5 = str4;
                str4 = (String) aVar.b.get(0);
                list2 = list;
                str11 = str;
            } else if ("poster".equalsIgnoreCase(aVar.a)) {
                str5 = str4;
                str4 = str3;
                str3 = str2;
                list3 = list;
                str11 = str6;
                str6 = (String) aVar.b.get(0);
                list2 = list3;
            } else if ("force_quit".equalsIgnoreCase(aVar.a)) {
                str4 = str3;
                str3 = str2;
                str = str5;
                str5 = (String) aVar.b.get(0);
                list2 = list;
                str11 = str6;
                str6 = str;
            } else if ("open_url".equalsIgnoreCase(aVar.a)) {
                str6 = str5;
                str5 = str4;
                str4 = str3;
                str3 = str2;
                list3 = list;
                str11 = (String) aVar.b.get(0);
                list2 = list3;
            } else {
                Iterator it2;
                if (aVar.a.startsWith("track_") && aVar.a.startsWith("track_pr_")) {
                    stringBuffer.append("<videoTracking event=\"progress\" offset=\"" + aVar.a.replaceFirst("track_pr_", AdTrackerConstants.BLANK) + "\"><pixels>");
                    it2 = aVar.b.iterator();
                    while (it2.hasNext()) {
                        str10 = (String) it2.next();
                        if (str10 != null && str10.length() > 0) {
                            stringBuffer.append("<pixel>" + str10 + "</pixel>");
                        }
                    }
                    stringBuffer.append("</pixels></videoTracking>");
                    list2 = list;
                    str11 = str6;
                    str6 = str5;
                    str5 = str4;
                    str4 = str3;
                    str3 = str2;
                } else if ("track_open_url".equalsIgnoreCase(aVar.a)) {
                    list2 = aVar.b;
                    str11 = str6;
                    str6 = str5;
                    str5 = str4;
                    str4 = str3;
                    str3 = str2;
                } else {
                    stringBuffer.append("<videoTracking event=\"" + aVar.a.replaceFirst("track_", AdTrackerConstants.BLANK) + "\" ><pixels>");
                    it2 = aVar.b.iterator();
                    while (it2.hasNext()) {
                        str10 = (String) it2.next();
                        if (str10 != null && str10.length() > 0) {
                            stringBuffer.append("<pixel>" + str10 + "</pixel>");
                        }
                    }
                    stringBuffer.append("</pixels></videoTracking>");
                }
                list2 = list;
                str11 = str6;
                str6 = str5;
                str5 = str4;
                str4 = str3;
                str3 = str2;
            }
            str2 = str3;
            str3 = str4;
            str4 = str5;
            str5 = str6;
            str6 = str11;
            list = list2;
        }
        stringBuffer.append("</videoTrackingEvents>");
        obj = (str5 == null || str5.length() <= 0) ? AdTrackerConstants.BLANK : "<loadingimage>" + str5 + "</loadingimage>";
        if (str6 == null || str6.length() <= 0) {
            str10 = str7;
        } else {
            StringBuffer stringBuffer2 = new StringBuffer();
            if (list != null && list.size() > 0) {
                stringBuffer2.append("<clickTracking><pixels>");
                Iterator it3 = list.iterator();
                while (it3.hasNext()) {
                    str10 = (String) it3.next();
                    if (str10 != null && str10.length() > 0) {
                        stringBuffer2.append("<pixel>" + str10 + "</pixel>");
                    }
                }
                stringBuffer2.append("</pixels></clickTracking>");
            }
            str10 = stringBuffer2.length() > 0 ? String.format(str8, new Object[]{stringBuffer2.toString(), str6}) : String.format(str8, new Object[]{AdTrackerConstants.BLANK, str6});
        }
        Object[] objArr = new Object[6];
        if (str3 == null) {
            str3 = AdTrackerConstants.BLANK;
        }
        objArr[0] = str3;
        if (str4 == null) {
            str4 = "NO";
        }
        objArr[1] = str4;
        if (str2 == null) {
            str2 = AdTrackerConstants.BLANK;
        }
        objArr[2] = str2;
        objArr[3] = obj;
        objArr[4] = str10;
        objArr[5] = stringBuffer.toString();
        return String.format(str9, objArr);
    }

    private void o() {
        if (this.o != null) {
            this.o.setVisibility(0);
        }
    }

    private void p() {
        if (this.o != null) {
            this.o.setVisibility(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED);
        }
    }

    private boolean q() {
        if (this.M == null) {
            return false;
        }
        x xVar = (x) this.M.get();
        if (xVar == null || !(xVar instanceof LinearLayout)) {
            return false;
        }
        int i = 0;
        while (i < xVar.getChildCount()) {
            d dVar;
            if (xVar.getChildAt(i) instanceof ViewSwitcher) {
                ViewSwitcher viewSwitcher = (ViewSwitcher) xVar.getChildAt(i);
                d dVar2 = (d) viewSwitcher.getCurrentView();
                dVar = (d) viewSwitcher.getNextView();
                if (dVar2 == null || !dVar2.c.equalsIgnoreCase("unmute")) {
                    if (dVar != null && dVar.c.equalsIgnoreCase("unmute")) {
                    }
                }
                return true;
            } else if (xVar.getChildAt(i) instanceof d) {
                dVar = (d) xVar.getChildAt(i);
                if (dVar != null && dVar.c.equalsIgnoreCase("unmute")) {
                    return true;
                }
            }
            i++;
        }
        return false;
    }

    private void r() {
        if (this.M != null) {
            x xVar = (x) this.M.get();
            if (xVar != null && xVar instanceof LinearLayout) {
                int i = 0;
                while (i < xVar.getChildCount()) {
                    if (xVar.getChildAt(i) instanceof ViewSwitcher) {
                        ViewSwitcher viewSwitcher = (ViewSwitcher) xVar.getChildAt(i);
                        d dVar = (d) viewSwitcher.getCurrentView();
                        d dVar2 = (d) viewSwitcher.getNextView();
                        if (dVar != null && dVar.c.equalsIgnoreCase("mute") && dVar2 != null && dVar2.c.equalsIgnoreCase("unmute")) {
                            viewSwitcher.showNext();
                        }
                    }
                    i++;
                }
            }
        }
    }

    private void s() {
        if (this.W != null) {
            this.W.b();
        }
        if (this.V != null) {
            this.V.b();
        }
        if (this.Y != null) {
            this.Y.b();
        }
        if (this.X != null) {
            this.X.b();
        }
    }

    public Handler a() {
        return this.N;
    }

    public void a(l lVar) {
        if (this.Q != null) {
            List list = (List) this.Q.get(lVar);
            if (list != null && this.O != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    this.O.firePixel((String) it.next());
                }
                if (lVar == l.a || lVar == l.b) {
                    this.Q.remove(lVar);
                }
            }
        }
    }

    public void a(m mVar) {
        if (mVar.getVisibility() != 0) {
            mVar.setVisibility(0);
        }
        if (this.z && this.K != null && this.K.getVisibility() == 0) {
            this.K.setVisibility(GoogleScorer.CLIENT_APPSTATE);
        }
        if (this.k > 0 && !this.A) {
            LinearLayout linearLayout = (LinearLayout) findViewById(b);
            if (linearLayout != null && this.s && this.T == null) {
                this.U = (LinearLayout) linearLayout.findViewWithTag(this.P + "TIMER_BUTTON_LAYOUT");
                if (this.U != null) {
                    this.T = (TextView) this.U.getChildAt(0);
                }
            }
            if (this.R != null && this.R.size() > 0) {
                Collections.sort(this.R, new Comparator() {
                    public int a(g gVar, g gVar2) {
                        return AdMarvelVideoActivity.this - AdMarvelVideoActivity.this;
                    }

                    public /* synthetic */ int compare(Object obj, Object obj2) {
                        return a((g) obj, (g) obj2);
                    }
                });
            }
            if (this.W == null) {
                this.W = new i(this.N, this.ae, 500);
                this.W.a();
            } else if (!this.W.c()) {
                this.W.a();
            }
        }
        mVar.start();
        this.i = k.b;
    }

    public void a(String str) {
        if (this.h == null) {
            View bVar = new b(this, this);
            bVar.setMessage(str);
            bVar.b();
            this.h = new WeakReference(bVar);
            bVar.setTag("ADM__VIDEO_DIALOG");
            addContentView(bVar, bVar.getLayoutParams());
        } else {
            b bVar2 = (b) this.h.get();
            if (bVar2 != null) {
                bVar2.setMessage(str);
                bVar2.b();
            } else {
                bVar2 = new b(this, this);
                bVar2.setMessage(str);
                bVar2.b();
                this.h.clear();
                this.h = new WeakReference(bVar2);
            }
        }
    }

    public void a(List list) {
        if (list != null && this.O != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                this.O.firePixel((String) it.next());
            }
        }
    }

    public void a(boolean z) {
        if (this.L != null && this.i == k.b) {
            this.L.pause();
            if (z) {
                this.i = k.f;
            } else {
                this.i = k.c;
            }
        }
    }

    public void b(String str) {
        AdMarvelXMLElement adMarvelXMLElement;
        String str2;
        String str3;
        this.e = new AdMarvelXMLReader();
        this.e.parseXMLString(str);
        this.f = this.e.getParsedXMLData();
        if (this.f.getChildren().containsKey(Event.VIDEO)) {
            adMarvelXMLElement = (AdMarvelXMLElement) ((ArrayList) this.f.getChildren().get(Event.VIDEO)).get(0);
            if (adMarvelXMLElement != null) {
                this.x = d(adMarvelXMLElement.getData());
                str2 = (String) adMarvelXMLElement.getAttributes().get("forcequit");
                if (str2 != null && str2.equalsIgnoreCase("YES")) {
                    this.B = true;
                }
                str2 = (String) adMarvelXMLElement.getAttributes().get(Fields.DURATION);
                if (str2 != null && Integer.parseInt(str2) > 0) {
                    this.k = Integer.parseInt(str2);
                }
                str2 = (String) adMarvelXMLElement.getAttributes().get("lockOrientation");
                if (str2 != null) {
                    if (str2.equalsIgnoreCase("LandscapeLeft")) {
                        setRequestedOrientation(0);
                    } else if (str2.equalsIgnoreCase("Portrait")) {
                        setRequestedOrientation(1);
                    } else if (Version.getAndroidSDKVersion() >= 11) {
                        u.a(this, str2);
                    }
                }
                str2 = (String) adMarvelXMLElement.getAttributes().get("initialMute");
                if (str2 != null && str2.equalsIgnoreCase("YES")) {
                    this.ab = true;
                }
                str2 = (String) adMarvelXMLElement.getAttributes().get("enableVideoPlayOnScreenLock");
                if (str2 != null && str2.equalsIgnoreCase("YES")) {
                    this.H = true;
                }
                str3 = (String) adMarvelXMLElement.getAttributes().get("quitVideoInBackground");
                if (str3 != null && str3.equalsIgnoreCase("YES")) {
                    this.I = true;
                }
            }
        }
        if (this.f.getChildren().containsKey("loadingimage")) {
            adMarvelXMLElement = (AdMarvelXMLElement) ((ArrayList) this.f.getChildren().get("loadingimage")).get(0);
            if (adMarvelXMLElement != null) {
                this.y = adMarvelXMLElement.getData();
                this.z = true;
                str3 = (String) adMarvelXMLElement.getAttributes().get("displayEvent");
                if (str3 != null) {
                    String[] split = str3.split(",");
                    if (split != null && split.length > 0) {
                        this.S = new ArrayList();
                        int i = 0;
                        while (i < split.length) {
                            if (split[i].equalsIgnoreCase("loading")) {
                                this.S.add(k.a);
                            } else if (split[i].equalsIgnoreCase(Constants.NATIVE_AD_COMPLETE_ELEMENT)) {
                                this.S.add(k.d);
                                this.S.add(k.e);
                            }
                            i++;
                        }
                    }
                }
            }
        }
        if (this.f.getChildren().containsKey("toolbar")) {
            adMarvelXMLElement = (AdMarvelXMLElement) ((ArrayList) this.f.getChildren().get("toolbar")).get(0);
            str2 = adMarvelXMLElement == null ? null : (String) adMarvelXMLElement.getAttributes().get("initiallyVisible");
            if (str2 != null && str2.equalsIgnoreCase("YES")) {
                this.t = true;
            }
            str2 = adMarvelXMLElement == null ? null : (String) adMarvelXMLElement.getAttributes().get("toggleToolbar");
            if (str2 != null && str2.equalsIgnoreCase("NO")) {
                this.u = false;
            }
            str2 = adMarvelXMLElement == null ? null : (String) adMarvelXMLElement.getAttributes().get("delayDisplayDoneButton");
            if (str2 != null) {
                this.v = true;
                this.C = true;
                this.w = Integer.parseInt(str2);
                str2 = (String) adMarvelXMLElement.getAttributes().get("showSkipMessage");
                if (str2 != null && str2.equalsIgnoreCase("NO")) {
                    this.C = false;
                }
                str2 = (String) adMarvelXMLElement.getAttributes().get("skipText");
                if (str2 != null && str2.length() > 0 && str2.contains("@seconds")) {
                    this.J = str2;
                }
            }
            if (adMarvelXMLElement != null && adMarvelXMLElement.getChildren().containsKey("item") && ((ArrayList) adMarvelXMLElement.getChildren().get("item")).size() > 0) {
                this.s = true;
            }
        }
        if (this.f.getChildren().containsKey("videoTrackingEvents")) {
            this.R = new ArrayList();
            this.Q = new HashMap();
            adMarvelXMLElement = (AdMarvelXMLElement) ((ArrayList) this.f.getChildren().get("videoTrackingEvents")).get(0);
            if (adMarvelXMLElement != null && adMarvelXMLElement.getChildren().containsKey("videoTracking")) {
                ArrayList arrayList = (ArrayList) adMarvelXMLElement.getChildren().get("videoTracking");
                int i2 = 0;
                while (i2 < arrayList.size()) {
                    AdMarvelXMLElement adMarvelXMLElement2 = (AdMarvelXMLElement) arrayList.get(i2);
                    String str4 = (String) adMarvelXMLElement2.getAttributes().get(DataLayer.EVENT_KEY);
                    int parseInt;
                    ArrayList arrayList2;
                    List arrayList3;
                    int i3;
                    if (EventType.PROGRESS.equalsIgnoreCase(str4)) {
                        str4 = (String) adMarvelXMLElement2.getAttributes().get("offset");
                        if (str4 != null) {
                            parseInt = str4.endsWith("%") ? (Integer.parseInt(str4.replace("%", AdTrackerConstants.BLANK)) * this.k) / 100 : Integer.parseInt(str4);
                            adMarvelXMLElement2 = (AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement2.getChildren().get("pixels")).get(0);
                            if (adMarvelXMLElement2 != null && adMarvelXMLElement2.getChildren().containsKey("pixel")) {
                                arrayList2 = (ArrayList) adMarvelXMLElement2.getChildren().get("pixel");
                                arrayList3 = new ArrayList();
                                arrayList3.clear();
                                i3 = 0;
                                while (i3 < arrayList2.size()) {
                                    arrayList3.add(((AdMarvelXMLElement) arrayList2.get(i3)).getData());
                                    i3++;
                                }
                                this.R.add(new g(parseInt, arrayList3));
                            }
                        }
                    } else if ("firstQuartile".equalsIgnoreCase(str4) && this.k > 0) {
                        i3 = this.k / 4;
                        if (i3 > 0) {
                            adMarvelXMLElement2 = (AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement2.getChildren().get("pixels")).get(0);
                            if (adMarvelXMLElement2 != null && adMarvelXMLElement2.getChildren().containsKey("pixel")) {
                                arrayList2 = (ArrayList) adMarvelXMLElement2.getChildren().get("pixel");
                                arrayList3 = new ArrayList();
                                arrayList3.clear();
                                parseInt = 0;
                                while (parseInt < arrayList2.size()) {
                                    arrayList3.add(((AdMarvelXMLElement) arrayList2.get(parseInt)).getData());
                                    parseInt++;
                                }
                                this.R.add(new g(i3, arrayList3));
                            }
                        }
                    } else if ("midpoint".equalsIgnoreCase(str4) && this.k > 0) {
                        i3 = this.k / 2;
                        if (i3 > 0) {
                            adMarvelXMLElement2 = (AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement2.getChildren().get("pixels")).get(0);
                            if (adMarvelXMLElement2 != null && adMarvelXMLElement2.getChildren().containsKey("pixel")) {
                                arrayList2 = (ArrayList) adMarvelXMLElement2.getChildren().get("pixel");
                                arrayList3 = new ArrayList();
                                arrayList3.clear();
                                parseInt = 0;
                                while (parseInt < arrayList2.size()) {
                                    arrayList3.add(((AdMarvelXMLElement) arrayList2.get(parseInt)).getData());
                                    parseInt++;
                                }
                                this.R.add(new g(i3, arrayList3));
                            }
                        }
                    } else if ("thirdQuartile".equalsIgnoreCase(str4) && this.k > 0) {
                        i3 = (this.k / 4) * 3;
                        if (i3 > 0) {
                            adMarvelXMLElement2 = (AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement2.getChildren().get("pixels")).get(0);
                            if (adMarvelXMLElement2 != null && adMarvelXMLElement2.getChildren().containsKey("pixel")) {
                                arrayList2 = (ArrayList) adMarvelXMLElement2.getChildren().get("pixel");
                                arrayList3 = new ArrayList();
                                arrayList3.clear();
                                parseInt = 0;
                                while (parseInt < arrayList2.size()) {
                                    arrayList3.add(((AdMarvelXMLElement) arrayList2.get(parseInt)).getData());
                                    parseInt++;
                                }
                                this.R.add(new g(i3, arrayList3));
                            }
                        }
                    } else if ("start".equalsIgnoreCase(str4)) {
                        a((AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement2.getChildren().get("pixels")).get(0), l.a);
                    } else if (Constants.NATIVE_AD_COMPLETE_ELEMENT.equalsIgnoreCase(str4)) {
                        a((AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement2.getChildren().get("pixels")).get(0), l.b);
                    } else if (EventType.PAUSE.equalsIgnoreCase(str4)) {
                        a((AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement2.getChildren().get("pixels")).get(0), l.c);
                    } else if ("resume".equalsIgnoreCase(str4)) {
                        a((AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement2.getChildren().get("pixels")).get(0), l.d);
                    } else if ("close".equalsIgnoreCase(str4)) {
                        a((AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement2.getChildren().get("pixels")).get(0), l.e);
                    } else if (EventType.STOP.equalsIgnoreCase(str4)) {
                        a((AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement2.getChildren().get("pixels")).get(0), l.f);
                    }
                    i2++;
                }
            }
        }
    }

    public void b(boolean z) {
        LinearLayout linearLayout = (LinearLayout) findViewById(b);
        if (this.s && linearLayout != null) {
            if (linearLayout.getVisibility() != 0) {
                if (z) {
                    a(linearLayout, z);
                    linearLayout.setVisibility(0);
                    linearLayout.bringToFront();
                    linearLayout.requestLayout();
                    if (this.Y != null && !this.Y.c()) {
                        this.aa = System.currentTimeMillis();
                        this.Y.b();
                        this.Y.a();
                    }
                }
            } else if (!z) {
                a(linearLayout, z);
                linearLayout.setVisibility(GoogleScorer.CLIENT_APPSTATE);
            }
        }
    }

    boolean b() {
        return this.r;
    }

    public void c() {
        s();
        a(l.e);
        if (this.R != null && this.R.size() > 0) {
            this.R.clear();
        }
        if (this.Q != null && this.Q.size() > 0) {
            this.Q.clear();
        }
        if (b()) {
            if (AdMarvelInterstitialAds.getListener() != null) {
                AdMarvelInterstitialAds.getListener().b();
                this.ad++;
            }
            if (this.ad > 2) {
                finish();
            } else {
                finish();
            }
        } else {
            finish();
        }
    }

    public void c(String str) {
        if (this.L != null) {
            if (this.L.isPlaying()) {
                this.L.a();
                this.i = k.d;
            }
            if (this.L.getVisibility() != 0) {
                this.L.setVisibility(0);
                this.L.requestFocus();
            }
            if (this.z && this.K != null) {
                if (this.S == null || this.S.size() <= 0) {
                    this.K.setVisibility(0);
                } else if (this.S.contains(k.a)) {
                    this.K.setVisibility(0);
                }
            }
            if (this.R != null && this.R.size() > 0) {
                this.R.clear();
            }
            if (this.Q != null && this.Q.size() > 0) {
                Map hashMap = new HashMap();
                hashMap.putAll(this.Q);
                Iterator it = hashMap.keySet().iterator();
                while (it.hasNext()) {
                    l lVar = (l) it.next();
                    if (lVar != l.e) {
                        this.Q.remove(lVar);
                    }
                }
            }
            a("Loading Next Video...");
            if (this.B) {
                this.B = false;
            }
            this.A = true;
            if (this.T != null) {
                this.T.setVisibility(GoogleScorer.CLIENT_APPSTATE);
            }
            this.L.a(Uri.parse(str));
            this.L.requestFocus();
            this.i = k.a;
        }
    }

    public void c(boolean z) {
        if (this.M != null) {
            x xVar = (x) this.M.get();
            if (xVar != null && xVar instanceof LinearLayout) {
                int i = 0;
                while (i < xVar.getChildCount()) {
                    if (xVar.getChildAt(i) instanceof ViewSwitcher) {
                        ViewSwitcher viewSwitcher = (ViewSwitcher) xVar.getChildAt(i);
                        d dVar = (d) viewSwitcher.getCurrentView();
                        if (z || dVar == null || !dVar.c.equalsIgnoreCase(EventType.PAUSE)) {
                            if (z || dVar == null || !dVar.c.equalsIgnoreCase(EventType.STOP)) {
                                if (z && dVar != null && dVar.c.equalsIgnoreCase("replay")) {
                                    if (viewSwitcher.getDisplayedChild() == 0) {
                                        viewSwitcher.showNext();
                                    } else {
                                        viewSwitcher.showPrevious();
                                    }
                                } else if (z && dVar != null && dVar.c.equalsIgnoreCase("resume")) {
                                    if (viewSwitcher.getDisplayedChild() == 0) {
                                        viewSwitcher.showNext();
                                    } else {
                                        viewSwitcher.showPrevious();
                                    }
                                }
                            } else if (viewSwitcher.getDisplayedChild() == 0) {
                                viewSwitcher.showNext();
                            } else {
                                viewSwitcher.showPrevious();
                            }
                        } else if (viewSwitcher.getDisplayedChild() == 0) {
                            viewSwitcher.showNext();
                        } else {
                            viewSwitcher.showPrevious();
                        }
                    }
                    i++;
                }
            }
        }
    }

    String d(String str) {
        if (str == null || str.length() <= 0) {
            return str;
        }
        String str2 = str;
        while (true) {
            try {
                Utils utils = new Utils(this, this.N);
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str2).openConnection();
                httpURLConnection.setRequestMethod("GET");
                httpURLConnection.setDoInput(true);
                httpURLConnection.setUseCaches(false);
                httpURLConnection.setRequestProperty("User-Agent", utils.getUserAgent());
                httpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
                httpURLConnection.setRequestProperty("Content-Length", "0");
                httpURLConnection.setConnectTimeout(4000);
                httpURLConnection.setReadTimeout(AdTrackerConstants.WEBVIEW_NOERROR);
                httpURLConnection.setInstanceFollowRedirects(false);
                httpURLConnection.connect();
                int responseCode = httpURLConnection.getResponseCode();
                if (responseCode == 301 || responseCode == 302) {
                    str2 = httpURLConnection.getHeaderField("Location");
                } else if (str2 == null || str2.length() <= 0) {
                    return str;
                } else {
                    return str2;
                }
            } catch (Exception e) {
            }
        }
    }

    public void d() {
        if (this.L != null) {
            this.L.a();
            this.i = k.d;
        }
    }

    public void e() {
        if (this.L != null) {
            if (this.i == k.f || this.i == k.c) {
                a("Resuming Video...");
                this.L.e();
                this.i = k.b;
            } else if (this.i == k.d || this.i == k.e) {
                f();
            }
        }
    }

    public void f() {
        if (this.L != null) {
            if (this.i == k.e || this.i == k.d || this.i == k.c || this.i == k.f) {
                if (this.i == k.c || this.i == k.f) {
                    this.L.a();
                    this.i = k.d;
                }
                if (this.L.getVisibility() != 0) {
                    this.L.setVisibility(0);
                }
                if (this.z && this.K != null) {
                    if (this.S == null || this.S.size() <= 0) {
                        this.K.setVisibility(0);
                    } else if (this.S.contains(k.a)) {
                        this.K.setVisibility(0);
                    }
                }
                if (this.R != null && this.R.size() > 0) {
                    this.R.clear();
                }
                if (this.Q != null && this.Q.size() > 0) {
                    Map hashMap = new HashMap();
                    hashMap.putAll(this.Q);
                    Iterator it = hashMap.keySet().iterator();
                    while (it.hasNext()) {
                        l lVar = (l) it.next();
                        if (lVar != l.e) {
                            this.Q.remove(lVar);
                        }
                    }
                }
                if (this.B) {
                    this.B = false;
                }
                a("Replaying Video...");
                if (this.x != null && this.x.length() > 0) {
                    this.L.a(Uri.parse(this.x));
                    this.i = k.a;
                }
                this.A = false;
                this.L.requestFocus();
            }
        }
    }

    public void g() {
        this.N.postDelayed(new e(this.n, this), 3000);
    }

    public void h() {
        a(l.c);
    }

    public void i() {
        a(l.f);
        if (this.W != null) {
            this.W.b();
        }
        if (this.Y != null) {
            this.Y.b();
        }
        if (this.z && this.K != null) {
            if (this.S == null || this.S.size() <= 0) {
                this.K.setVisibility(0);
            } else if (this.S.contains(k.d)) {
                this.K.setVisibility(0);
            }
        }
        if (this.L != null) {
            this.L.setVisibility(GoogleScorer.CLIENT_APPSTATE);
        }
        LinearLayout linearLayout = (LinearLayout) findViewById(b);
        if (!(!this.s || linearLayout == null || linearLayout.getVisibility() == 0)) {
            a(linearLayout, true);
            linearLayout.setVisibility(0);
            linearLayout.bringToFront();
            linearLayout.requestLayout();
        }
        if (this.k > 0 && this.T != null && this.T.getVisibility() == 0) {
            a(0, this.T);
        }
        c(false);
    }

    public void j() {
        a(l.d);
        this.i = k.b;
    }

    public void k() {
        if (this.N != null) {
            this.N.post(this.ag);
        }
        if (!(this.W == null || this.A || this.i == k.e || this.i == k.d)) {
            this.W.a();
        }
        if (this.z && this.K != null && this.K.getVisibility() == 0) {
            this.K.setVisibility(GoogleScorer.CLIENT_APPSTATE);
        }
    }

    public void l() {
        if (this.N != null) {
            this.N.post(this.ag);
        }
        Toast.makeText(this, "Network Connection Unavailable", 0).show();
    }

    public void m() {
        c();
    }

    public void n() {
    }

    public void onCompletion(MediaPlayer mediaPlayer) {
        boolean b;
        this.i = k.e;
        a(l.b);
        s();
        LinearLayout linearLayout = (LinearLayout) findViewById(b);
        Logging.log("Video onCompletion is called");
        if (this.z && this.K != null) {
            if (this.S == null || this.S.size() <= 0) {
                this.K.setVisibility(0);
            } else if (this.S.contains(k.d)) {
                this.K.setVisibility(0);
            }
        }
        if (this.L != null) {
            this.L.setVisibility(GoogleScorer.CLIENT_APPSTATE);
        }
        if (!(!this.s || linearLayout == null || linearLayout.getVisibility() == 0)) {
            a(linearLayout, true);
            linearLayout.setVisibility(0);
            linearLayout.bringToFront();
            linearLayout.requestLayout();
        }
        if (this.k > 0 && this.T != null && this.T.getVisibility() == 0) {
            a(0, this.T);
        }
        c(false);
        if (this.M != null) {
            x xVar = (x) this.M.get();
            if (xVar != null) {
                b = xVar.b();
                if (!this.s || !z || this.B) {
                    if (this.L != null) {
                        this.L.a(true);
                    }
                    c();
                } else {
                    return;
                }
            }
        }
        b = false;
        if (this.L != null) {
            this.L.a(true);
        }
        c();
    }

    protected void onCreate(Bundle bundle) {
        x xVar;
        super.onCreate(bundle);
        if (l == null) {
            l = this;
        } else {
            l.finish();
            l = this;
        }
        if (Build.MODEL.contains("Kindle") || Build.PRODUCT.contains("Kindle")) {
            getWindow().addFlags(AccessibilityNodeInfoCompat.ACTION_NEXT_AT_MOVEMENT_GRANULARITY);
            getWindow().clearFlags(AccessibilityNodeInfoCompat.ACTION_NEXT_HTML_ELEMENT);
        } else {
            getWindow().setFlags(AccessibilityNodeInfoCompat.ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY, AccessibilityNodeInfoCompat.ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY);
        }
        if (Version.getAndroidSDKVersion() >= 11) {
            f.a(this);
        }
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            byte[] byteArray = extras.getByteArray("serialized_admarvelad");
            if (byteArray != null) {
                try {
                    this.n = (AdMarvelAd) new ObjectInputStream(new ByteArrayInputStream(byteArray)).readObject();
                    if (this.n != null) {
                        this.m = new WeakReference(this.n);
                    }
                } catch (Exception e) {
                    Logging.log(Log.getStackTraceString(e));
                }
            }
            if (extras.getBoolean("isCustomUrl")) {
                this.p = f(extras.getString(PlusShare.KEY_CALL_TO_ACTION_URL));
                this.P = extras.getString("GUID");
                this.r = false;
            } else if (extras.containsKey(Constants.HTML)) {
                this.p = extras.getString(Constants.HTML);
                this.P = extras.getString("GUID");
                if (this.p == null || this.p.length() <= 0) {
                    this.r = false;
                } else {
                    this.r = true;
                }
            } else {
                finish();
            }
        }
        this.i = k.a;
        RelativeLayout relativeLayout = new RelativeLayout(this);
        relativeLayout.setId(a);
        relativeLayout.setLayoutParams(new LayoutParams(-1, -1));
        setContentView(relativeLayout);
        View linearLayout = new LinearLayout(this);
        linearLayout.setId(c);
        LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        layoutParams.weight = 10.0f;
        linearLayout.setLayoutParams(layoutParams);
        linearLayout.setOnTouchListener(this.ak);
        linearLayout.setBackgroundColor(-16777216);
        View relativeLayout2 = new RelativeLayout(this);
        relativeLayout2.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        linearLayout.addView(relativeLayout2);
        LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams2.addRule(R.styleable.MapAttrs_zOrderOnTop);
        this.L = new m(this, this);
        this.L.setLayoutParams(layoutParams2);
        this.L.a((com.admarvel.android.ads.m.a)this);
        relativeLayout2.addView(this.L);
        this.N = new Handler();
        this.O = new Utils(this, this.N);
        try {
            b(this.p);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (this.s) {
            this.g = e(this.p);
            this.g.setVisibility(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED);
        }
        relativeLayout.addView(linearLayout);
        if (this.x == null || this.x.length() <= 0) {
            finish();
        } else {
            try {
                this.L.a(Uri.parse(this.x));
            } catch (Exception e3) {
                Logging.log("Exception in setting URI on videoView " + e3.getMessage());
                finish();
            }
        }
        this.L.a((OnCompletionListener)this);
        this.L.a((OnPreparedListener)this);
        this.L.a((OnErrorListener)this);
        this.L.requestFocus();
        if (this.r && AdMarvelInterstitialAds.getListener() != null) {
            AdMarvelInterstitialAds.getListener().a(this);
        }
        if (this.z && this.y != null && this.y.length() > 0) {
            b(relativeLayout);
        }
        if (this.s && this.g != null) {
            relativeLayout.addView(this.g);
        }
        if (this.M != null) {
            xVar = (x) this.M.get();
            if (xVar != null) {
                this.o = new RelativeLayout(this);
                LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
                layoutParams3.addRule(R.styleable.MapAttrs_uiZoomControls);
                layoutParams3.addRule(R.styleable.MapAttrs_uiZoomGestures);
                this.o.setLayoutParams(layoutParams3);
                this.o.setBackgroundColor(0);
                layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
                layoutParams3.setMargins(MMException.DISPLAY_AD_NOT_READY, MMException.DISPLAY_AD_NOT_READY, MMException.DISPLAY_AD_NOT_READY, MMException.DISPLAY_AD_NOT_READY);
                layoutParams3.addRule(R.styleable.MapAttrs_uiZoomGestures);
                if (xVar.a() != null) {
                    this.o.addView(xVar.a(), layoutParams3);
                    TextView textView = (TextView) this.o.findViewWithTag(Constants.ADM_VIDEO_CUSTOM_DONE_BUTTON);
                    this.o.setOnClickListener(new OnClickListener() {
                        public void onClick(View view) {
                            AdMarvelVideoActivity.this.c();
                        }
                    });
                    this.o.setClickable(true);
                    relativeLayout.addView(this.o);
                }
            }
        }
        if (this.C) {
            a(relativeLayout);
            p();
        }
        if (this.v && this.w > 0 && this.M != null) {
            xVar = (x) this.M.get();
            if (xVar != null && xVar instanceof LinearLayout && xVar != null && this.s) {
                int i = 0;
                while (i < xVar.getChildCount()) {
                    if (xVar.getChildAt(i) instanceof d) {
                        d dVar = (d) xVar.getChildAt(i);
                        if (dVar != null && dVar.c.equalsIgnoreCase("done")) {
                            dVar.setClickable(false);
                            dVar.setEnabled(false);
                            if (dVar.getChildAt(0) instanceof ImageView) {
                                ImageView imageView = (ImageView) dVar.getChildAt(0);
                                if (imageView != null && imageView.getDrawable() != null) {
                                    imageView.getDrawable().setAlpha(MMException.AD_BROKEN_REFERENCE);
                                } else if (imageView != null) {
                                    if (this.Z == null) {
                                        this.Z = new i(this.N, new a(imageView), 1000);
                                        this.Z.a();
                                    }
                                }
                            }
                        }
                    }
                    i++;
                }
                this.V = new i(this.N, this.af, this.w * 1000);
                this.V.a();
                if (this.C && this.X == null) {
                    this.E = System.currentTimeMillis();
                    this.X = new i(this.N, this.ah, 500, false);
                    this.X.a();
                }
            }
        }
        relativeLayout.setOnTouchListener(this.aj);
        a("Loading Video...");
        IntentFilter intentFilter = new IntentFilter("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        this.ac = new h();
        registerReceiver(this.ac, intentFilter);
    }

    protected void onDestroy() {
        super.onDestroy();
        s();
        if (this.ac != null) {
            unregisterReceiver(this.ac);
            this.ac = null;
        }
    }

    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        c(false);
        this.i = k.e;
        LinearLayout linearLayout = (LinearLayout) findViewById(b);
        if (!(!this.s || linearLayout == null || linearLayout.getVisibility() == 0)) {
            a(linearLayout, true);
            linearLayout.setVisibility(0);
        }
        if (mediaPlayer != null) {
            mediaPlayer.reset();
            mediaPlayer.release();
        }
        return false;
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() == 0) {
            switch (i) {
                case GoogleScorer.CLIENT_APPSTATE:
                    boolean b;
                    if (this.M != null) {
                        x xVar = (x) this.M.get();
                        if (xVar != null) {
                            b = xVar.b();
                            if (!(this.s && z && this.v)) {
                                c();
                            }
                            return true;
                        }
                    }
                    b = false;
                    c();
                    return true;
            }
        }
        return super.onKeyDown(i, keyEvent);
    }

    protected void onPause() {
        super.onPause();
        if (!isFinishing()) {
            try {
                AdMarvelAnalyticsAdapterInstances.getInstance(Constants.MOLOGIQ_ANALYTICS_ADAPTER_FULL_CLASSNAME, this).start();
            } catch (Exception e) {
            }
            Logging.log("Video Activity onPause is called");
            if (this.i == k.b) {
                if (this.L != null) {
                    if (this.H) {
                        this.L.d();
                        this.F = true;
                        this.i = k.g;
                    } else if (this.I) {
                        this.L.d();
                        this.G = true;
                        this.i = k.g;
                    } else {
                        this.L.pause();
                        this.i = k.c;
                    }
                }
            } else if (!((this.i != k.d && this.i != k.e) || this.L == null || this.L.isPlaying())) {
                this.L.a(true);
            }
        }
        if (this.Y != null && this.Y.c()) {
            this.Y.b();
        }
    }

    public void onPrepared(MediaPlayer mediaPlayer) {
        try {
            if (this.h != null) {
                b bVar = (b) this.h.get();
                if (bVar != null && bVar.a()) {
                    bVar.d();
                    bVar.e();
                }
            }
        } catch (Exception e) {
            Logging.log(Log.getStackTraceString(e));
        }
        if (this.u) {
            if (this.Y == null) {
                this.Y = new i(this.N, this.ai, 3100, true);
            }
            LinearLayout linearLayout = (LinearLayout) findViewById(b);
            if (this.s && linearLayout != null && linearLayout.getVisibility() == 0) {
                this.Y.a();
                this.aa = System.currentTimeMillis();
            }
        }
        if (this.j == m.a) {
            this.L.b();
        }
        if (this.ab) {
            if (q()) {
                this.L.b();
                this.j = m.a;
                r();
            }
            this.ab = false;
        }
        c(true);
        if (this.L != null) {
            a(this.L);
            a(l.a);
        }
    }

    protected void onResume() {
        super.onResume();
        try {
            AdMarvelAnalyticsAdapterInstances.getInstance(Constants.MOLOGIQ_ANALYTICS_ADAPTER_FULL_CLASSNAME, this).start();
        } catch (Exception e) {
        }
        if (this.L != null) {
            if (this.i == k.c || (!this.L.isPlaying() && this.i == k.g)) {
                a("Resuming Video...");
                this.L.e();
                if (this.Y != null) {
                    this.Y.a();
                }
            }
        }
        this.F = false;
        this.d = false;
    }

    protected void onStart() {
        super.onStart();
        try {
            AdMarvelAnalyticsAdapterInstances.getInstance(Constants.MOLOGIQ_ANALYTICS_ADAPTER_FULL_CLASSNAME, this).start();
        } catch (Exception e) {
        }
    }

    protected void onStop() {
        super.onStop();
        try {
            AdMarvelAnalyticsAdapterInstances.getInstance(Constants.MOLOGIQ_ANALYTICS_ADAPTER_FULL_CLASSNAME, this).start();
        } catch (Exception e) {
        }
        Logging.log("Video Activity onStop is called");
        if (!(this.L == null || this.L.isPlaying() || this.i != k.g || this.I)) {
            a(l.c);
        }
        PowerManager powerManager = (PowerManager) getSystemService("power");
        Logging.log("Video Activity onStop isScreenOn: " + (powerManager != null ? Boolean.valueOf(powerManager.isScreenOn()) : "powermanager null"));
        if (!isFinishing() && this.F && this.i == k.g && this.L != null && this.L.isPlaying() && powerManager != null && !powerManager.isScreenOn()) {
            this.i = k.b;
            this.F = false;
        } else if (!(isFinishing() || !this.I || this.d)) {
            c();
        }
        if (this.W != null) {
            if (!(this.H && this.L.isPlaying() && !powerManager.isScreenOn())) {
                this.W.b();
            }
        }
        b bVar = this.h != null ? (b) this.h.get() : null;
        if (bVar != null) {
            bVar.c();
            bVar.e();
        }
    }

    public void onUserInteraction() {
        LinearLayout linearLayout = (LinearLayout) findViewById(b);
        if (this.s && linearLayout != null) {
            if (linearLayout.getVisibility() == 0) {
                this.aa = System.currentTimeMillis();
                if (this.Y != null && this.Y.c()) {
                    this.Y.b();
                    this.Y.a();
                }
            } else {
                b(true);
            }
        }
    }
}
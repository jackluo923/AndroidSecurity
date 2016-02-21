package com.amazon.device.ads;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnKeyListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.URLUtil;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.amazon.device.ads.AdVideoPlayer.AdVideoPlayerListener;
import com.amazon.device.ads.Controller.Dimensions;
import com.amazon.device.ads.Controller.PlayerProperties;
import com.amazon.device.ads.MraidView.OnCloseListener;
import com.amazon.device.ads.MraidView.ViewState;
import com.google.android.gms.plus.PlusShare;
import com.inmobi.re.container.IMWebView;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.ArrayList;

class MraidDisplayController extends MraidAbstractController {
    private static final String f = "MraidDisplayController";
    private static final int g = 50;
    private double A;
    private int B;
    private int C;
    private int D;
    private int E;
    protected float a;
    protected int b;
    protected int c;
    FrameLayout d;
    protected int e;
    private ViewState h;
    private final ExpansionStyle i;
    private final NativeCloseButtonStyle j;
    private MraidView k;
    private FrameLayout l;
    private AdVideoPlayer m;
    private boolean n;
    private boolean o;
    private final int p;
    private BroadcastReceiver q;
    private ImageView r;
    private boolean s;
    private int t;
    private int u;
    private int v;
    private boolean w;
    private Context x;
    private int y;
    private int z;

    MraidDisplayController(MraidView mraidView, ExpansionStyle expansionStyle, NativeCloseButtonStyle nativeCloseButtonStyle) {
        int i = -1;
        super(mraidView);
        this.h = ViewState.HIDDEN;
        this.n = false;
        this.q = new BroadcastReceiver() {
            private int b;

            public void onReceive(Context context, Intent intent) {
                try {
                    if (intent.getAction().equals("android.intent.action.CONFIGURATION_CHANGED")) {
                        int a = MraidDisplayController.this.q();
                        if (a != this.b) {
                            this.b = a;
                            MraidDisplayController.this.b(this.b);
                        }
                    }
                } catch (Exception e) {
                    Exception exception = e;
                    Log.d(f, "Orientation broadcast receiver got exception while executing: %s", new Object[]{exception.getLocalizedMessage()});
                }
            }
        };
        this.b = -1;
        this.c = -1;
        this.w = false;
        this.B = 0;
        this.e = 0;
        this.C = 0;
        this.D = 1131261513;
        this.E = 50;
        this.i = expansionStyle;
        this.j = nativeCloseButtonStyle;
        this.z = mraidView.d();
        this.y = mraidView.c();
        this.A = mraidView.e();
        this.x = getView().getContext();
        if (this.x instanceof Activity) {
            i = ((Activity) this.x).getRequestedOrientation();
        }
        this.p = i;
        c();
    }

    private void b(int i) {
        e();
        if (this.w) {
            getView().a(MraidScreenSizeProperty.createWithSize(this.b, this.c));
        }
    }

    private void c(boolean z) {
        try {
            ((Activity) getView().getContext()).setRequestedOrientation(z ? Utils.determineCanonicalScreenOrientation() : this.p);
        } catch (Exception e) {
            Log.d(f, "Unable to modify device orientation.");
        }
    }

    private int q() {
        return AndroidTargetUtils.getOrientation(((WindowManager) getView().getContext().getSystemService("window")).getDefaultDisplay());
    }

    private void r() {
        FrameLayout frameLayout = (FrameLayout) a(this.e);
        RelativeLayout relativeLayout = (RelativeLayout) a(this.B);
        a(false);
        frameLayout.removeAllViewsInLayout();
        this.l.removeView(relativeLayout);
        getView().requestLayout();
        ViewGroup viewGroup = (ViewGroup) this.d.getParent();
        viewGroup.addView(getView(), this.t, new LayoutParams(this.u, this.v));
        viewGroup.removeView(this.d);
        viewGroup.invalidate();
    }

    private void s() {
        ViewGroup o = o();
        if (o != null) {
            this.d = new FrameLayout(getView().getContext());
            int childCount = o.getChildCount();
            int i = 0;
            while (i < childCount && o.getChildAt(i) != getView()) {
                i++;
            }
            this.t = i;
            this.v = m();
            this.u = n();
            o.addView(this.d, i, new LayoutParams(getView().getWidth(), getView().getHeight()));
            o.removeView(getView());
        }
    }

    private int t() {
        boolean z = 0;
        int i;
        if (this.l == null) {
            Log.w(f, "Could not find root view. View ID may not be unique.");
            i = this.D;
            this.D = i + 1;
            return i;
        } else {
            this.D++;
            int i2 = 0;
            while (i2 < 100 && i == 0) {
                if (this.l.findViewById(this.D) == null) {
                    z = 1;
                } else {
                    this.D += this.E;
                }
                i2++;
            }
            if (i != 0) {
                return this.D;
            }
            throw new IllegalArgumentException();
        }
    }

    private void u() {
        if (this.B == 0) {
            this.B = t();
            this.e = t();
            this.C = t();
        }
    }

    protected View a(int i) {
        return this.l.findViewById(i);
    }

    protected ViewGroup a(View view, int i, int i2) {
        int i3 = (int) (50.0f * this.a + 0.5f);
        if (i < i3) {
            i = i3;
        }
        if (i2 < i3) {
            i2 = i3;
        }
        ViewGroup relativeLayout = new RelativeLayout(getView().getContext());
        relativeLayout.setId(this.B);
        View view2 = new View(getView().getContext());
        view2.setBackgroundColor(0);
        view2.setOnTouchListener(new OnTouchListener() {
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        });
        relativeLayout.addView(view2, new RelativeLayout.LayoutParams(-1, -1));
        view2 = new FrameLayout(getView().getContext());
        view2.setId(this.e);
        view2.addView(view, new RelativeLayout.LayoutParams(-1, -1));
        LayoutParams layoutParams = new RelativeLayout.LayoutParams(i, i2);
        layoutParams.addRule(R.styleable.MapAttrs_zOrderOnTop);
        relativeLayout.addView(view2, layoutParams);
        return relativeLayout;
    }

    protected void a() {
        if (!this.w) {
            this.w = true;
            getView().getContext().registerReceiver(this.q, new IntentFilter("android.intent.action.CONFIGURATION_CHANGED"));
        }
    }

    protected void a(ViewGroup viewGroup, LayoutParams layoutParams) {
        this.l.addView(viewGroup, layoutParams);
    }

    protected void a(FrameLayout frameLayout) {
        this.l = frameLayout;
    }

    protected void a(MraidView mraidView) {
        mraidView.getWebView().requestFocus();
        mraidView.getWebView().setOnKeyListener(new OnKeyListener() {
            public boolean onKey(View view, int i, KeyEvent keyEvent) {
                if (i != 4 || keyEvent.getRepeatCount() != 0) {
                    return false;
                }
                MraidDisplayController.this.h();
                return true;
            }
        });
    }

    protected void a(String str, int i, int i2, boolean z, boolean z2) {
        if (this.i != ExpansionStyle.DISABLED && this.h != ViewState.EXPANDED) {
            if (k()) {
                Log.e(f, "Expansion failed because ad loading is currently in progress.");
            } else if (str != null && !URLUtil.isValidUrl(str)) {
                getView().a("expand", "URL passed to expand() was invalid.");
            } else if (l()) {
                try {
                    u();
                    b(z);
                    c(z2);
                    s();
                    View view = getView();
                    view.a(-1, -1);
                    if (str != null) {
                        MraidRenderer mraidRenderer = (MraidRenderer) view.f();
                        this.k = new MraidView(mraidRenderer, this.y, this.z, this.A, mraidRenderer.g, WebViewFactory.getInstance().createWebView(mraidRenderer.g), ExpansionStyle.DISABLED, NativeCloseButtonStyle.AD_CONTROLLED, PlacementType.INLINE);
                        this.k.setOnCloseListener(new OnCloseListener() {
                            public void onClose(MraidView mraidView, ViewState viewState) {
                                MraidDisplayController.this.h();
                            }
                        });
                        this.k.loadUrlForTwoPartExpansionView(str);
                        view = this.k;
                    }
                    a(a((View)mraidView, (int) (((float) i) * this.a), (int) (((float) i2) * this.a)), new RelativeLayout.LayoutParams(-1, -1));
                    a(mraidView);
                    if (this.j == NativeCloseButtonStyle.ALWAYS_VISIBLE || !(this.s || this.j == NativeCloseButtonStyle.ALWAYS_HIDDEN)) {
                        a(true);
                    }
                    this.h = ViewState.EXPANDED;
                    getView().a(MraidStateProperty.createWithViewState(this.h));
                    if (getView().getOnExpandListener() != null) {
                        getView().getOnExpandListener().onExpand(getView());
                    }
                } catch (IllegalArgumentException e) {
                    getView().a("expand", "Could not find available view ID.");
                    Log.e(f, "Expansion failed because available view ID could not be found.");
                }
            } else {
                getView().a("expand", "Root view could not be found.");
                Log.e(f, "Expansion failed because root view could not be found.");
            }
        }
    }

    protected void a(String str, Dimensions dimensions, PlayerProperties playerProperties) {
        Log.d(f, "in playVideo");
        if (!this.n) {
            if (playerProperties.isFullScreen()) {
                Bundle bundle = new Bundle();
                bundle.putString(PlusShare.KEY_CALL_TO_ACTION_URL, str);
                bundle.putParcelable("player_dimensions", dimensions);
                bundle.putParcelable(IMWebView.PLAYER_PROPERTIES, playerProperties);
                try {
                    Intent intent = new Intent(getView().getContext(), AdActivity.class);
                    intent.putExtra("adapter", VideoActionHandler.class.getName());
                    intent.putExtras(bundle);
                    getView().getContext().startActivity(intent);
                } catch (ActivityNotFoundException e) {
                    Log.e(f, "Failed to open VideoAction activity");
                }
            } else {
                if (this.m == null) {
                    this.m = new AdVideoPlayer(this.x);
                }
                this.m.setPlayData(new PlayerProperties(), str);
                this.m.setListener(new AdVideoPlayerListener() {
                    public void onComplete() {
                        Log.d(f, "videoplayback complete");
                        MraidDisplayController.this.n = false;
                        FrameLayout frameLayout = (FrameLayout) MraidDisplayController.this.l.findViewById(MraidDisplayController.this.C);
                        frameLayout.setVisibility(GoogleScorer.CLIENT_APPSTATE);
                        MraidDisplayController.this.l.removeView(frameLayout);
                    }

                    public void onError() {
                        onComplete();
                    }
                });
                LayoutParams layoutParams = new FrameLayout.LayoutParams(dimensions.width, dimensions.height);
                layoutParams.topMargin = dimensions.x;
                layoutParams.bottomMargin = dimensions.y;
                this.m.setLayoutParams(layoutParams);
                View frameLayout = new FrameLayout(getView().getContext());
                frameLayout.setId(this.C);
                frameLayout.setPadding(dimensions.x, dimensions.y, 0, 0);
                this.m.setViewGroup(frameLayout);
                this.l.addView(frameLayout, -1, -1);
                this.n = true;
                this.m.playVideo();
            }
        }
    }

    protected void a(boolean z) {
        if (this.l != null) {
            FrameLayout frameLayout = (FrameLayout) this.l.findViewById(this.e);
            if (z) {
                if (this.r == null) {
                    Drawable stateListDrawable = new StateListDrawable();
                    stateListDrawable.addState(new int[]{-16842919}, AndroidTargetUtils.getNewBitmapDrawable(this.x.getResources(), Assets.getInstance().getFilePath(Assets.CLOSE_NORMAL)));
                    stateListDrawable.addState(new int[]{16842919}, AndroidTargetUtils.getNewBitmapDrawable(this.x.getResources(), Assets.getInstance().getFilePath(Assets.CLOSE_PRESSED)));
                    this.r = new ImageButton(getView().getContext());
                    this.r.setImageDrawable(stateListDrawable);
                    AndroidTargetUtils.setBackgroundDrawable(this.r, null);
                    this.r.setOnClickListener(new OnClickListener() {
                        public void onClick(View view) {
                            MraidDisplayController.this.h();
                        }
                    });
                }
                int i = (int) (50.0f * this.a + 0.5f);
                frameLayout.addView(this.r, new FrameLayout.LayoutParams(i, i, 5));
            } else {
                frameLayout.removeView(this.r);
            }
            MraidView view = getView();
            if (view.getOnCloseButtonStateChangeListener() != null) {
                view.getOnCloseButtonStateChangeListener().onCloseButtonStateChange(view, z);
            }
        }
    }

    protected void b() {
        if (this.w) {
            this.w = false;
            try {
                getView().getContext().unregisterReceiver(this.q);
            } catch (IllegalArgumentException e) {
            }
        }
    }

    protected void b(boolean z) {
        this.s = z;
        MraidView view = getView();
        boolean z2 = !z;
        if (view.getOnCloseButtonStateChangeListener() != null) {
            view.getOnCloseButtonStateChangeListener().onCloseButtonStateChange(view, z2);
        }
    }

    protected void c() {
        this.h = ViewState.LOADING;
        e();
        a();
    }

    protected void d() {
        getView().a(MraidViewableProperty.createWithViewable(true));
    }

    public void destroy() {
        try {
            getView().getContext().unregisterReceiver(this.q);
        } catch (IllegalArgumentException e) {
            illegalArgumentException = e;
            IllegalArgumentException illegalArgumentException2;
            if (!illegalArgumentException2.getMessage().contains("Receiver not registered")) {
                throw illegalArgumentException2;
            }
        }
        if (this.k != null) {
            this.k.destroy();
            this.k = null;
        }
    }

    protected void e() {
        int top;
        int i = 0;
        Context context = getView().getContext();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        this.a = displayMetrics.density;
        if (context instanceof Activity) {
            Window window = ((Activity) context).getWindow();
            Rect rect = new Rect();
            window.getDecorView().getWindowVisibleDisplayFrame(rect);
            i = rect.top;
            top = window.findViewById(16908290).getTop() - i;
        } else {
            top = 0;
        }
        top = displayMetrics.heightPixels - i - top;
        this.b = (int) (((double) displayMetrics.widthPixels) * (160.0d / ((double) displayMetrics.densityDpi)));
        this.c = (int) (((double) top) * (160.0d / ((double) displayMetrics.densityDpi)));
    }

    protected void f() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(MraidScreenSizeProperty.createWithSize(this.b, this.c));
        arrayList.add(MraidViewableProperty.createWithViewable(this.o));
        getView().a(arrayList);
        this.h = ViewState.DEFAULT;
        getView().a(MraidStateProperty.createWithViewState(this.h));
    }

    protected boolean g() {
        return this.h == ViewState.EXPANDED;
    }

    protected void h() {
        if (this.n) {
            this.m.releasePlayer();
            this.n = false;
        }
        i();
        if (this.h == ViewState.EXPANDED) {
            r();
            c(false);
            this.h = ViewState.DEFAULT;
            getView().a(MraidStateProperty.createWithViewState(this.h));
        } else if (this.h == ViewState.DEFAULT) {
            getView().setVisibility(GoogleScorer.CLIENT_APPSTATE);
            this.h = ViewState.HIDDEN;
            getView().a(MraidStateProperty.createWithViewState(this.h));
        }
        if (getView().getOnCloseListener() != null) {
            getView().getOnCloseListener().onClose(getView(), this.h);
        }
    }

    protected void i() {
        getView().getWebView().setOnKeyListener(null);
    }

    protected void j() {
        if (this.h == ViewState.EXPANDED) {
            Log.d(f, "Ad is currently expanded. Detaching the expanded view and returning ad to its default state.");
            RelativeLayout relativeLayout = (RelativeLayout) this.l.findViewById(this.B);
            if (relativeLayout != null) {
                if (relativeLayout.isShown()) {
                    this.l.removeView(relativeLayout);
                } else {
                    relativeLayout.removeAllViews();
                }
            }
            ViewGroup viewGroup = (ViewGroup) this.d.getParent();
            if (viewGroup != null) {
                viewGroup.removeView(this.d);
                c(false);
                this.h = ViewState.DEFAULT;
                getView().a(MraidStateProperty.createWithViewState(this.h));
            }
        }
    }

    protected boolean k() {
        return ((MraidRenderer) getView().f()).f.isAdLoading();
    }

    protected boolean l() {
        this.l = (FrameLayout) getView().getRootView().findViewById(16908290);
        return this.l != null;
    }

    protected int m() {
        return getView().getHeight();
    }

    protected int n() {
        return getView().getWidth();
    }

    protected ViewGroup o() {
        return (ViewGroup) getView().getParent();
    }

    protected boolean p() {
        return true;
    }
}
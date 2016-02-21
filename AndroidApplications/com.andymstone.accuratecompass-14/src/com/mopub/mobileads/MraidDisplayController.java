package com.mopub.mobileads;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.URLUtil;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.andymstone.core.o;
import com.mopub.mobileads.MraidView.ExpansionStyle;
import com.mopub.mobileads.MraidView.NativeCloseButtonStyle;
import com.mopub.mobileads.MraidView.OnCloseListener;
import com.mopub.mobileads.MraidView.PlacementType;
import com.mopub.mobileads.MraidView.ViewState;
import com.mopub.mobileads.resource.Drawables;
import java.util.ArrayList;

class MraidDisplayController extends MraidAbstractController {
    protected float a;
    protected int b;
    protected int c;
    private ViewState d;
    private final ExpansionStyle e;
    private final NativeCloseButtonStyle f;
    private MraidView g;
    private FrameLayout h;
    private boolean i;
    private Runnable j;
    private Handler k;
    private final int l;
    private BroadcastReceiver m;
    private ImageView n;
    private boolean o;
    private int p;
    private FrameLayout q;
    private FrameLayout r;
    private RelativeLayout s;

    MraidDisplayController(MraidView mraidView, ExpansionStyle expansionStyle, NativeCloseButtonStyle nativeCloseButtonStyle) {
        super(mraidView);
        this.d = ViewState.d;
        this.j = new Runnable() {
            public void run() {
                boolean e = MraidDisplayController.this.e();
                if (MraidDisplayController.this.i != e) {
                    MraidDisplayController.this.i = e;
                    MraidDisplayController.this.a().a(MraidViewableProperty.a(MraidDisplayController.this.i));
                }
                MraidDisplayController.this.k.postDelayed(this, 3000);
            }
        };
        this.k = new Handler();
        this.m = new BroadcastReceiver() {
            private int b;

            public void onReceive(Context context, Intent intent) {
                if (intent.getAction().equals("android.intent.action.CONFIGURATION_CHANGED")) {
                    int c = MraidDisplayController.this.l();
                    if (c != this.b) {
                        this.b = c;
                        MraidDisplayController.this.a(this.b);
                    }
                }
            }
        };
        this.b = -1;
        this.c = -1;
        this.e = expansionStyle;
        this.f = nativeCloseButtonStyle;
        Context context = a().getContext();
        this.l = context instanceof Activity ? ((Activity) context).getRequestedOrientation() : -1;
        this.r = f();
        this.s = g();
        this.q = h();
        i();
    }

    private void a(int i) {
        j();
        a().a(MraidScreenSizeProperty.a(this.b, this.c));
    }

    private void a(View view, int i, int i2) {
        int i3 = (int) (50.0f * this.a + 0.5f);
        if (i < i3) {
            i = i3;
        }
        if (i2 < i3) {
            i2 = i3;
        }
        View view2 = new View(a().getContext());
        view2.setBackgroundColor(0);
        view2.setOnTouchListener(new OnTouchListener() {
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        });
        this.s.addView(view2, new LayoutParams(-1, -1));
        this.r.addView(view, new LayoutParams(-1, -1));
        ViewGroup.LayoutParams layoutParams = new LayoutParams(i, i2);
        layoutParams.addRule(13);
        this.s.addView(this.r, layoutParams);
    }

    private void c(boolean z) {
        try {
            Activity activity = (Activity) a().getContext();
            activity.setRequestedOrientation(z ? activity.getResources().getConfiguration().orientation : this.l);
        } catch (ClassCastException e) {
            Log.d("MraidDisplayController", "Unable to modify device orientation.");
        }
    }

    private void i() {
        this.d = ViewState.a;
        j();
        k();
        a().getContext().registerReceiver(this.m, new IntentFilter("android.intent.action.CONFIGURATION_CHANGED"));
    }

    private void j() {
        int top;
        int i = 0;
        Context context = a().getContext();
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

    private void k() {
        this.k.removeCallbacks(this.j);
        this.k.post(this.j);
    }

    private int l() {
        return ((WindowManager) a().getContext().getSystemService("window")).getDefaultDisplay().getOrientation();
    }

    private void m() {
        a(false);
        this.r.removeAllViewsInLayout();
        this.s.removeAllViewsInLayout();
        this.h.removeView(this.s);
        a().requestLayout();
        ViewGroup viewGroup = (ViewGroup) this.q.getParent();
        viewGroup.addView(a(), this.p);
        viewGroup.removeView(this.q);
        viewGroup.invalidate();
    }

    private void n() {
        ViewGroup viewGroup = (ViewGroup) a().getParent();
        if (viewGroup != null) {
            int childCount = viewGroup.getChildCount();
            int i = 0;
            while (i < childCount && viewGroup.getChildAt(i) != a()) {
                i++;
            }
            this.p = i;
            viewGroup.addView(this.q, i, new ViewGroup.LayoutParams(a().getWidth(), a().getHeight()));
            viewGroup.removeView(a());
        }
    }

    protected void a(String str, int i, int i2, boolean z, boolean z2) {
        if (this.e != ExpansionStyle.b) {
            if (str == null || URLUtil.isValidUrl(str)) {
                this.h = (FrameLayout) a().getRootView().findViewById(16908290);
                b(z);
                c(z2);
                n();
                View a = a();
                if (str != null) {
                    this.g = new MraidView(a().getContext(), ExpansionStyle.b, NativeCloseButtonStyle.c, PlacementType.a);
                    this.g.setOnCloseListener(new OnCloseListener() {
                        public void a(MraidView mraidView, ViewState viewState) {
                            MraidDisplayController.this.d();
                        }
                    });
                    this.g.loadUrl(str);
                    a = this.g;
                }
                a(a, (int) (((float) i) * this.a), (int) (((float) i2) * this.a));
                this.h.addView(this.s, new LayoutParams(-1, -1));
                if (this.f == NativeCloseButtonStyle.a || !(this.o || this.f == NativeCloseButtonStyle.b)) {
                    a(true);
                }
                this.d = ViewState.c;
                a().a(MraidStateProperty.a(this.d));
                if (a().getOnExpandListener() != null) {
                    a().getOnExpandListener().a(a());
                }
            } else {
                a().a("expand", "URL passed to expand() was invalid.");
            }
        }
    }

    protected void a(boolean z) {
        if (this.h != null) {
            if (z) {
                if (this.n == null) {
                    Drawable stateListDrawable = new StateListDrawable();
                    stateListDrawable.addState(new int[]{-16842919}, Drawables.i.a(this.h.getContext()));
                    stateListDrawable.addState(new int[]{16842919}, Drawables.j.a(this.h.getContext()));
                    this.n = new ImageButton(a().getContext());
                    this.n.setImageDrawable(stateListDrawable);
                    this.n.setBackgroundDrawable(null);
                    this.n.setOnClickListener(new OnClickListener() {
                        public void onClick(View view) {
                            MraidDisplayController.this.d();
                        }
                    });
                }
                int i = (int) (50.0f * this.a + 0.5f);
                this.r.addView(this.n, new FrameLayout.LayoutParams(i, i, 5));
            } else {
                this.r.removeView(this.n);
            }
            MraidView a = a();
            if (a.getOnCloseButtonStateChangeListener() != null) {
                a.getOnCloseButtonStateChangeListener().a(a, z);
            }
        }
    }

    public void b() {
        this.k.removeCallbacks(this.j);
        try {
            a().getContext().unregisterReceiver(this.m);
        } catch (IllegalArgumentException e) {
            illegalArgumentException = e;
            IllegalArgumentException illegalArgumentException2;
            if (!illegalArgumentException2.getMessage().contains("Receiver not registered")) {
                throw illegalArgumentException2;
            }
        }
    }

    protected void b(boolean z) {
        this.o = z;
        MraidView a = a();
        boolean z2 = !z;
        if (a.getOnCloseButtonStateChangeListener() != null) {
            a.getOnCloseButtonStateChangeListener().a(a, z2);
        }
    }

    protected void c() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(MraidScreenSizeProperty.a(this.b, this.c));
        arrayList.add(MraidViewableProperty.a(this.i));
        a().a(arrayList);
        this.d = ViewState.b;
        a().a(MraidStateProperty.a(this.d));
    }

    protected void d() {
        if (this.d == ViewState.c) {
            m();
            c(false);
            this.d = ViewState.b;
            a().a(MraidStateProperty.a(this.d));
        } else if (this.d == ViewState.b) {
            a().setVisibility(o.MyAlertDialog_MAD_buttonBarStyle);
            this.d = ViewState.d;
            a().a(MraidStateProperty.a(this.d));
        }
        if (a().getOnCloseListener() != null) {
            a().getOnCloseListener().a(a(), this.d);
        }
    }

    protected boolean e() {
        return true;
    }

    FrameLayout f() {
        return new FrameLayout(a().getContext());
    }

    RelativeLayout g() {
        return new RelativeLayout(a().getContext());
    }

    FrameLayout h() {
        return new FrameLayout(a().getContext());
    }
}
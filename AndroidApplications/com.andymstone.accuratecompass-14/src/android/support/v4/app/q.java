package android.support.v4.app;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.support.v4.c.a;
import android.support.v4.c.b;
import android.util.Log;
import android.util.SparseArray;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.ScaleAnimation;
import com.andymstone.compasslib.v;
import com.andymstone.core.o;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;

final class q extends o {
    static final Interpolator A;
    static final Interpolator B;
    static final Interpolator C;
    static boolean a;
    static final boolean b;
    static final Interpolator z;
    ArrayList c;
    Runnable[] d;
    boolean e;
    ArrayList f;
    ArrayList g;
    ArrayList h;
    ArrayList i;
    ArrayList j;
    ArrayList k;
    ArrayList l;
    ArrayList m;
    int n;
    i o;
    n p;
    Fragment q;
    boolean r;
    boolean s;
    boolean t;
    String u;
    boolean v;
    Bundle w;
    SparseArray x;
    Runnable y;

    static {
        boolean z = false;
        a = false;
        if (VERSION.SDK_INT >= 11) {
            z = true;
        }
        b = z;
        z = new DecelerateInterpolator(2.5f);
        A = new DecelerateInterpolator(1.5f);
        B = new AccelerateInterpolator(2.5f);
        C = new AccelerateInterpolator(1.5f);
    }

    q() {
        this.n = 0;
        this.w = null;
        this.x = null;
        this.y = new r(this);
    }

    static Animation a(Context context, float f, float f2) {
        Animation alphaAnimation = new AlphaAnimation(f, f2);
        alphaAnimation.setInterpolator(A);
        alphaAnimation.setDuration(220);
        return alphaAnimation;
    }

    static Animation a(Context context, float f, float f2, float f3, float f4) {
        Animation animationSet = new AnimationSet(false);
        Animation scaleAnimation = new ScaleAnimation(f, f2, f, f2, 1, 0.5f, 1, 0.5f);
        scaleAnimation.setInterpolator(z);
        scaleAnimation.setDuration(220);
        animationSet.addAnimation(scaleAnimation);
        scaleAnimation = new AlphaAnimation(f3, f4);
        scaleAnimation.setInterpolator(A);
        scaleAnimation.setDuration(220);
        animationSet.addAnimation(scaleAnimation);
        return animationSet;
    }

    private void a(RuntimeException runtimeException) {
        Log.e("FragmentManager", runtimeException.getMessage());
        Log.e("FragmentManager", "Activity state:");
        PrintWriter printWriter = new PrintWriter(new b("FragmentManager"));
        if (this.o != null) {
            try {
                this.o.dump("  ", null, printWriter, new String[0]);
            } catch (Exception e) {
                Log.e("FragmentManager", "Failed dumping state", e);
            }
        } else {
            try {
                a("  ", null, printWriter, new String[0]);
            } catch (Exception e2) {
                Log.e("FragmentManager", "Failed dumping state", e2);
            }
        }
        throw runtimeException;
    }

    public static int b(int i, boolean z) {
        switch (i) {
            case 4097:
                return z ? 1 : o.MyAlertDialog_myAlertDialogButtonDrawable;
            case 4099:
                return z ? o.MyAlertDialog_MAD_textAppearanceMedium : o.MyAlertDialog_MAD_divider;
            case 8194:
                return z ? o.MyAlertDialog_MAD_titleStyle : o.MyAlertDialog_MAD_buttonBarStyle;
            default:
                return -1;
        }
    }

    public static int c(int i) {
        switch (i) {
            case 4097:
                return 8194;
            case 4099:
                return 4099;
            case 8194:
                return 4097;
            default:
                return 0;
        }
    }

    private void t() {
        if (this.s) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        } else if (this.u != null) {
            throw new IllegalStateException("Can not perform this action inside of " + this.u);
        }
    }

    public int a(b bVar) {
        int size;
        synchronized (this) {
            if (this.l == null || this.l.size() <= 0) {
                if (this.k == null) {
                    this.k = new ArrayList();
                }
                size = this.k.size();
                if (a) {
                    Log.v("FragmentManager", "Setting back stack index " + size + " to " + bVar);
                }
                this.k.add(bVar);
            } else {
                size = ((Integer) this.l.remove(this.l.size() - 1)).intValue();
                if (a) {
                    Log.v("FragmentManager", "Adding back stack index " + size + " with " + bVar);
                }
                this.k.set(size, bVar);
            }
        }
        return size;
    }

    public Fragment a(int i) {
        int i2;
        Fragment fragment;
        if (this.g != null) {
            i2 = this.g.size() - 1;
            while (i2 >= 0) {
                fragment = (Fragment) this.g.get(i2);
                if (fragment != null && fragment.F == i) {
                    return fragment;
                }
                i2--;
            }
        }
        if (this.f != null) {
            i2 = this.f.size() - 1;
            while (i2 >= 0) {
                fragment = (Fragment) this.f.get(i2);
                if (fragment != null && fragment.F == i) {
                    return fragment;
                }
                i2--;
            }
        }
        return null;
    }

    public Fragment a(Bundle bundle, String str) {
        int i = bundle.getInt(str, -1);
        if (i == -1) {
            return null;
        }
        if (i >= this.f.size()) {
            a(new IllegalStateException("Fragement no longer exists for key " + str + ": index " + i));
        }
        Fragment fragment = (Fragment) this.f.get(i);
        if (fragment != null) {
            return fragment;
        }
        a(new IllegalStateException("Fragement no longer exists for key " + str + ": index " + i));
        return fragment;
    }

    public Fragment a(String str) {
        int i;
        Fragment fragment;
        if (!(this.g == null || str == null)) {
            i = this.g.size() - 1;
            while (i >= 0) {
                fragment = (Fragment) this.g.get(i);
                if (fragment != null && str.equals(fragment.H)) {
                    return fragment;
                }
                i--;
            }
        }
        if (!(this.f == null || str == null)) {
            i = this.f.size() - 1;
            while (i >= 0) {
                fragment = (Fragment) this.f.get(i);
                if (fragment != null && str.equals(fragment.H)) {
                    return fragment;
                }
                i--;
            }
        }
        return null;
    }

    public z a() {
        return new b(this);
    }

    Animation a(Fragment fragment, int i, boolean z, int i2) {
        Animation a = fragment.a(i, z, fragment.P);
        if (a != null) {
            return a;
        }
        if (fragment.P != 0) {
            a = AnimationUtils.loadAnimation(this.o, fragment.P);
            if (a != null) {
                return a;
            }
        }
        if (i == 0) {
            return null;
        }
        int b = b(i, z);
        if (b < 0) {
            return null;
        }
        switch (b) {
            case o.MyAlertDialog_myAlertDialogAccentColor:
                return a(this.o, 1.125f, 1.0f, 0.0f, 1.0f);
            case o.MyAlertDialog_myAlertDialogButtonDrawable:
                return a(this.o, 1.0f, 0.975f, 1.0f, 0.0f);
            case o.MyAlertDialog_MAD_titleStyle:
                return a(this.o, 0.975f, 1.0f, 0.0f, 1.0f);
            case o.MyAlertDialog_MAD_buttonBarStyle:
                return a(this.o, 1.0f, 1.075f, 1.0f, 0.0f);
            case o.MyAlertDialog_MAD_textAppearanceMedium:
                return a(this.o, 0.0f, 1.0f);
            case o.MyAlertDialog_MAD_divider:
                return a(this.o, 1.0f, 0.0f);
            default:
                if (i2 == 0 && this.o.getWindow() != null) {
                    i2 = this.o.getWindow().getAttributes().windowAnimations;
                }
                return i == 0 ? null : null;
        }
    }

    public void a(int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException("Bad id: " + i);
        }
        a(new s(this, i, i2), false);
    }

    void a(int i, int i2, int i3, boolean z) {
        if (this.o == null && i != 0) {
            throw new IllegalStateException("No activity");
        } else if (z || this.n != i) {
            this.n = i;
            if (this.f != null) {
                int i4 = 0;
                int i5 = 0;
                while (i4 < this.f.size()) {
                    int i6;
                    Fragment fragment = (Fragment) this.f.get(i4);
                    if (fragment != null) {
                        a(fragment, i, i2, i3, false);
                        if (fragment.V != null) {
                            i6 = i5 | fragment.V.a();
                            i4++;
                            i5 = i6;
                        }
                    }
                    i6 = i5;
                    i4++;
                    i5 = i6;
                }
                if (i5 == 0) {
                    d();
                }
                if (this.r && this.o != null && this.n == 5) {
                    this.o.c();
                    this.r = false;
                }
            }
        }
    }

    public void a(int i, b bVar) {
        synchronized (this) {
            if (this.k == null) {
                this.k = new ArrayList();
            }
            int size = this.k.size();
            if (i < size) {
                if (a) {
                    Log.v("FragmentManager", "Setting back stack index " + i + " to " + bVar);
                }
                this.k.set(i, bVar);
            } else {
                while (size < i) {
                    this.k.add(null);
                    if (this.l == null) {
                        this.l = new ArrayList();
                    }
                    if (a) {
                        Log.v("FragmentManager", "Adding available back stack index " + size);
                    }
                    this.l.add(Integer.valueOf(size));
                    size++;
                }
                if (a) {
                    Log.v("FragmentManager", "Adding back stack index " + i + " with " + bVar);
                }
                this.k.add(bVar);
            }
        }
    }

    void a(int i, boolean z) {
        a(i, 0, 0, z);
    }

    public void a(Configuration configuration) {
        if (this.g != null) {
            int i = 0;
            while (i < this.g.size()) {
                Fragment fragment = (Fragment) this.g.get(i);
                if (fragment != null) {
                    fragment.a(configuration);
                }
                i++;
            }
        }
    }

    public void a(Bundle bundle, String str, Fragment fragment) {
        if (fragment.o < 0) {
            a(new IllegalStateException("Fragment " + fragment + " is not currently in the FragmentManager"));
        }
        bundle.putInt(str, fragment.o);
    }

    void a(Parcelable parcelable, ArrayList arrayList) {
        if (parcelable != null) {
            FragmentManagerState fragmentManagerState = (FragmentManagerState) parcelable;
            if (fragmentManagerState.a != null) {
                int i;
                Fragment fragment;
                if (arrayList != null) {
                    i = 0;
                    while (i < arrayList.size()) {
                        fragment = (Fragment) arrayList.get(i);
                        if (a) {
                            Log.v("FragmentManager", "restoreAllState: re-attaching retained " + fragment);
                        }
                        FragmentState fragmentState = fragmentManagerState.a[fragment.o];
                        fragmentState.k = fragment;
                        fragment.n = null;
                        fragment.A = 0;
                        fragment.y = false;
                        fragment.u = false;
                        fragment.r = null;
                        if (fragmentState.j != null) {
                            fragmentState.j.setClassLoader(this.o.getClassLoader());
                            fragment.n = fragmentState.j.getSparseParcelableArray("android:view_state");
                        }
                        i++;
                    }
                }
                this.f = new ArrayList(fragmentManagerState.a.length);
                if (this.h != null) {
                    this.h.clear();
                }
                int i2 = 0;
                while (i2 < fragmentManagerState.a.length) {
                    FragmentState fragmentState2 = fragmentManagerState.a[i2];
                    if (fragmentState2 != null) {
                        Fragment a = fragmentState2.a(this.o, this.q);
                        if (a) {
                            Log.v("FragmentManager", "restoreAllState: active #" + i2 + ": " + a);
                        }
                        this.f.add(a);
                        fragmentState2.k = null;
                    } else {
                        this.f.add(null);
                        if (this.h == null) {
                            this.h = new ArrayList();
                        }
                        if (a) {
                            Log.v("FragmentManager", "restoreAllState: avail #" + i2);
                        }
                        this.h.add(Integer.valueOf(i2));
                    }
                    i2++;
                }
                if (arrayList != null) {
                    int i3 = 0;
                    while (i3 < arrayList.size()) {
                        fragment = (Fragment) arrayList.get(i3);
                        if (fragment.s >= 0) {
                            if (fragment.s < this.f.size()) {
                                fragment.r = (Fragment) this.f.get(fragment.s);
                            } else {
                                Log.w("FragmentManager", "Re-attaching retained fragment " + fragment + " target no longer exists: " + fragment.s);
                                fragment.r = null;
                            }
                        }
                        i3++;
                    }
                }
                if (fragmentManagerState.b != null) {
                    this.g = new ArrayList(fragmentManagerState.b.length);
                    i = 0;
                    while (i < fragmentManagerState.b.length) {
                        fragment = (Fragment) this.f.get(fragmentManagerState.b[i]);
                        if (fragment == null) {
                            a(new IllegalStateException("No instantiated fragment for index #" + fragmentManagerState.b[i]));
                        }
                        fragment.u = true;
                        if (a) {
                            Log.v("FragmentManager", "restoreAllState: added #" + i + ": " + fragment);
                        }
                        if (this.g.contains(fragment)) {
                            throw new IllegalStateException("Already added!");
                        }
                        this.g.add(fragment);
                        i++;
                    }
                } else {
                    this.g = null;
                }
                if (fragmentManagerState.c != null) {
                    this.i = new ArrayList(fragmentManagerState.c.length);
                    i2 = 0;
                    while (i2 < fragmentManagerState.c.length) {
                        b a2 = fragmentManagerState.c[i2].a(this);
                        if (a) {
                            Log.v("FragmentManager", "restoreAllState: back stack #" + i2 + " (index " + a2.o + "): " + a2);
                            a2.a("  ", new PrintWriter(new b("FragmentManager")), false);
                        }
                        this.i.add(a2);
                        if (a2.o >= 0) {
                            a(a2.o, a2);
                        }
                        i2++;
                    }
                } else {
                    this.i = null;
                }
            }
        }
    }

    public void a(Fragment fragment) {
        if (!fragment.T) {
            return;
        }
        if (this.e) {
            this.v = true;
        } else {
            fragment.T = false;
            a(fragment, this.n, 0, 0, false);
        }
    }

    public void a(Fragment fragment, int i, int i2) {
        if (a) {
            Log.v("FragmentManager", "remove: " + fragment + " nesting=" + fragment.A);
        }
        int i3 = !fragment.i();
        if (!fragment.J || i3 != 0) {
            if (this.g != null) {
                this.g.remove(fragment);
            }
            if (fragment.M && fragment.N) {
                this.r = true;
            }
            fragment.u = false;
            fragment.v = true;
            a(fragment, i3 != 0 ? 0 : 1, i, i2, false);
        }
    }

    void a(Fragment fragment, int i, int i2, int i3, boolean z) {
        if ((!fragment.u || fragment.J) && i > 1) {
            i = 1;
        }
        if (fragment.v && i > fragment.j) {
            i = fragment.j;
        }
        if (fragment.T && fragment.j < 4 && i > 3) {
            i = 3;
        }
        if (fragment.j < i) {
            if (!fragment.x || fragment.y) {
                if (fragment.k != null) {
                    fragment.k = null;
                    a(fragment, fragment.l, 0, 0, true);
                }
                ViewGroup viewGroup;
                Animation a;
                switch (fragment.j) {
                    case v.DropShadowView_cornerRadius:
                        if (a) {
                            Log.v("FragmentManager", "moveto CREATED: " + fragment);
                        }
                        if (fragment.m != null) {
                            fragment.n = fragment.m.getSparseParcelableArray("android:view_state");
                            fragment.r = a(fragment.m, "android:target_state");
                            if (fragment.r != null) {
                                fragment.t = fragment.m.getInt("android:target_req_state", 0);
                            }
                            fragment.U = fragment.m.getBoolean("android:user_visible_hint", true);
                            if (!fragment.U) {
                                fragment.T = true;
                                if (i > 3) {
                                    i = 3;
                                }
                            }
                        }
                        fragment.C = this.o;
                        fragment.E = this.q;
                        fragment.B = this.q != null ? this.q.D : this.o.b;
                        fragment.O = false;
                        fragment.a(this.o);
                        if (fragment.O) {
                            if (fragment.E == null) {
                                this.o.a(fragment);
                            }
                            if (!fragment.L) {
                                fragment.i(fragment.m);
                            }
                            fragment.L = false;
                            if (fragment.x) {
                                fragment.R = fragment.b(fragment.b(fragment.m), null, fragment.m);
                                if (fragment.R != null) {
                                    fragment.S = fragment.R;
                                    fragment.R = ae.a(fragment.R);
                                    if (fragment.I) {
                                        fragment.R.setVisibility(o.MyAlertDialog_MAD_messagePadding);
                                    }
                                    fragment.a(fragment.R, fragment.m);
                                } else {
                                    fragment.S = null;
                                }
                            }
                            if (i > 1) {
                                if (a) {
                                    Log.v("FragmentManager", "moveto ACTIVITY_CREATED: " + fragment);
                                }
                                if (!fragment.x) {
                                    if (fragment.G == 0) {
                                        viewGroup = (ViewGroup) this.p.a(fragment.G);
                                        if (viewGroup == null && !fragment.z) {
                                            a(new IllegalArgumentException("No view found for id 0x" + Integer.toHexString(fragment.G) + " (" + fragment.l().getResourceName(fragment.G) + ") for fragment " + fragment));
                                        }
                                    } else {
                                        viewGroup = null;
                                    }
                                    fragment.Q = viewGroup;
                                    fragment.R = fragment.b(fragment.b(fragment.m), viewGroup, fragment.m);
                                    if (fragment.R == null) {
                                        fragment.S = fragment.R;
                                        fragment.R = ae.a(fragment.R);
                                        if (viewGroup != null) {
                                            a = a(fragment, i2, true, i3);
                                            if (a != null) {
                                                fragment.R.startAnimation(a);
                                            }
                                            viewGroup.addView(fragment.R);
                                        }
                                        if (fragment.I) {
                                            fragment.R.setVisibility(o.MyAlertDialog_MAD_messagePadding);
                                        }
                                        fragment.a(fragment.R, fragment.m);
                                    } else {
                                        fragment.S = null;
                                    }
                                }
                                fragment.j(fragment.m);
                                if (fragment.R != null) {
                                    fragment.f(fragment.m);
                                }
                                fragment.m = null;
                            }
                            if (i > 3) {
                                if (a) {
                                    Log.v("FragmentManager", "moveto STARTED: " + fragment);
                                }
                                fragment.w();
                            }
                            if (i > 4) {
                                if (a) {
                                    Log.v("FragmentManager", "moveto RESUMED: " + fragment);
                                }
                                fragment.w = true;
                                fragment.x();
                                fragment.m = null;
                                fragment.n = null;
                            }
                        } else {
                            throw new af("Fragment " + fragment + " did not call through to super.onAttach()");
                        }
                    case o.MyAlertDialog_myAlertDialogAccentColor:
                        if (i > 1) {
                            if (a) {
                                Log.v("FragmentManager", "moveto ACTIVITY_CREATED: " + fragment);
                            }
                            if (fragment.x) {
                                if (fragment.G == 0) {
                                    viewGroup = null;
                                } else {
                                    viewGroup = (ViewGroup) this.p.a(fragment.G);
                                    a(new IllegalArgumentException("No view found for id 0x" + Integer.toHexString(fragment.G) + " (" + fragment.l().getResourceName(fragment.G) + ") for fragment " + fragment));
                                }
                                fragment.Q = viewGroup;
                                fragment.R = fragment.b(fragment.b(fragment.m), viewGroup, fragment.m);
                                if (fragment.R == null) {
                                    fragment.S = null;
                                } else {
                                    fragment.S = fragment.R;
                                    fragment.R = ae.a(fragment.R);
                                    if (viewGroup != null) {
                                        a = a(fragment, i2, true, i3);
                                        if (a != null) {
                                            fragment.R.startAnimation(a);
                                        }
                                        viewGroup.addView(fragment.R);
                                    }
                                    if (fragment.I) {
                                        fragment.R.setVisibility(o.MyAlertDialog_MAD_messagePadding);
                                    }
                                    fragment.a(fragment.R, fragment.m);
                                }
                            }
                            fragment.j(fragment.m);
                            if (fragment.R != null) {
                                fragment.f(fragment.m);
                            }
                            fragment.m = null;
                        }
                        if (i > 3) {
                            if (a) {
                                Log.v("FragmentManager", "moveto STARTED: " + fragment);
                            }
                            fragment.w();
                        }
                        if (i > 4) {
                            if (a) {
                                Log.v("FragmentManager", "moveto RESUMED: " + fragment);
                            }
                            fragment.w = true;
                            fragment.x();
                            fragment.m = null;
                            fragment.n = null;
                        }
                        break;
                    case o.MyAlertDialog_myAlertDialogButtonDrawable:
                    case o.MyAlertDialog_MAD_titleStyle:
                        if (i > 3) {
                            if (a) {
                                Log.v("FragmentManager", "moveto STARTED: " + fragment);
                            }
                            fragment.w();
                        }
                        if (i > 4) {
                            if (a) {
                                Log.v("FragmentManager", "moveto RESUMED: " + fragment);
                            }
                            fragment.w = true;
                            fragment.x();
                            fragment.m = null;
                            fragment.n = null;
                        }
                        break;
                    case o.MyAlertDialog_MAD_buttonBarStyle:
                        if (i > 4) {
                            if (a) {
                                Log.v("FragmentManager", "moveto RESUMED: " + fragment);
                            }
                            fragment.w = true;
                            fragment.x();
                            fragment.m = null;
                            fragment.n = null;
                        }
                        break;
                }
            } else {
                return;
            }
        } else if (fragment.j > i) {
            View view;
            Animation a2;
            switch (fragment.j) {
                case o.MyAlertDialog_myAlertDialogAccentColor:
                    if (i < 1) {
                        if (this.t && fragment.k != null) {
                            view = fragment.k;
                            fragment.k = null;
                            view.clearAnimation();
                        }
                        if (fragment.k != null) {
                            fragment.l = i;
                            i = 1;
                        } else {
                            if (a) {
                                Log.v("FragmentManager", "movefrom CREATED: " + fragment);
                            }
                            if (!fragment.L) {
                                fragment.D();
                            }
                            fragment.O = false;
                            fragment.e();
                            if (!fragment.O) {
                                throw new af("Fragment " + fragment + " did not call through to super.onDetach()");
                            } else if (!z) {
                                if (fragment.L) {
                                    fragment.C = null;
                                    fragment.B = null;
                                } else {
                                    d(fragment);
                                }
                            }
                        }
                    }
                    break;
                case o.MyAlertDialog_myAlertDialogButtonDrawable:
                    if (i < 2) {
                        if (a) {
                            Log.v("FragmentManager", "movefrom ACTIVITY_CREATED: " + fragment);
                        }
                        if (!(fragment.R == null || this.o.isFinishing() || fragment.n != null)) {
                            e(fragment);
                        }
                        fragment.C();
                        if (!(fragment.R == null || fragment.Q == null)) {
                            a2 = (this.n <= 0 || this.t) ? null : a(fragment, i2, false, i3);
                            if (a2 != null) {
                                fragment.k = fragment.R;
                                fragment.l = i;
                                a2.setAnimationListener(new t(this, fragment));
                                fragment.R.startAnimation(a2);
                            }
                            fragment.Q.removeView(fragment.R);
                        }
                        fragment.Q = null;
                        fragment.R = null;
                        fragment.S = null;
                    }
                    if (i < 1) {
                        view = fragment.k;
                        fragment.k = null;
                        view.clearAnimation();
                        if (fragment.k != null) {
                            if (a) {
                                Log.v("FragmentManager", "movefrom CREATED: " + fragment);
                            }
                            if (fragment.L) {
                                fragment.D();
                            }
                            fragment.O = false;
                            fragment.e();
                            if (!fragment.O) {
                                throw new af("Fragment " + fragment + " did not call through to super.onDetach()");
                            } else if (z) {
                                if (fragment.L) {
                                    fragment.C = null;
                                    fragment.B = null;
                                } else {
                                    d(fragment);
                                }
                            }
                        } else {
                            fragment.l = i;
                            i = 1;
                        }
                    }
                    break;
                case o.MyAlertDialog_MAD_titleStyle:
                    if (i < 3) {
                        if (a) {
                            Log.v("FragmentManager", "movefrom STOPPED: " + fragment);
                        }
                        fragment.B();
                    }
                    if (i < 2) {
                        if (a) {
                            Log.v("FragmentManager", "movefrom ACTIVITY_CREATED: " + fragment);
                        }
                        e(fragment);
                        fragment.C();
                        if (a2 != null) {
                            fragment.k = fragment.R;
                            fragment.l = i;
                            a2.setAnimationListener(new t(this, fragment));
                            fragment.R.startAnimation(a2);
                        }
                        fragment.Q.removeView(fragment.R);
                        fragment.Q = null;
                        fragment.R = null;
                        fragment.S = null;
                    }
                    if (i < 1) {
                        view = fragment.k;
                        fragment.k = null;
                        view.clearAnimation();
                        if (fragment.k != null) {
                            fragment.l = i;
                            i = 1;
                        } else {
                            if (a) {
                                Log.v("FragmentManager", "movefrom CREATED: " + fragment);
                            }
                            if (fragment.L) {
                                fragment.D();
                            }
                            fragment.O = false;
                            fragment.e();
                            if (!fragment.O) {
                                throw new af("Fragment " + fragment + " did not call through to super.onDetach()");
                            } else if (z) {
                                if (fragment.L) {
                                    d(fragment);
                                } else {
                                    fragment.C = null;
                                    fragment.B = null;
                                }
                            }
                        }
                    }
                    break;
                case o.MyAlertDialog_MAD_buttonBarStyle:
                    if (i < 4) {
                        if (a) {
                            Log.v("FragmentManager", "movefrom STARTED: " + fragment);
                        }
                        fragment.A();
                    }
                    if (i < 3) {
                        if (a) {
                            Log.v("FragmentManager", "movefrom STOPPED: " + fragment);
                        }
                        fragment.B();
                    }
                    if (i < 2) {
                        if (a) {
                            Log.v("FragmentManager", "movefrom ACTIVITY_CREATED: " + fragment);
                        }
                        e(fragment);
                        fragment.C();
                        if (a2 != null) {
                            fragment.k = fragment.R;
                            fragment.l = i;
                            a2.setAnimationListener(new t(this, fragment));
                            fragment.R.startAnimation(a2);
                        }
                        fragment.Q.removeView(fragment.R);
                        fragment.Q = null;
                        fragment.R = null;
                        fragment.S = null;
                    }
                    if (i < 1) {
                        view = fragment.k;
                        fragment.k = null;
                        view.clearAnimation();
                        if (fragment.k != null) {
                            if (a) {
                                Log.v("FragmentManager", "movefrom CREATED: " + fragment);
                            }
                            if (fragment.L) {
                                fragment.D();
                            }
                            fragment.O = false;
                            fragment.e();
                            if (!fragment.O) {
                                throw new af("Fragment " + fragment + " did not call through to super.onDetach()");
                            } else if (z) {
                                if (fragment.L) {
                                    fragment.C = null;
                                    fragment.B = null;
                                } else {
                                    d(fragment);
                                }
                            }
                        } else {
                            fragment.l = i;
                            i = 1;
                        }
                    }
                    break;
                case o.MyAlertDialog_MAD_textAppearanceMedium:
                    if (i < 5) {
                        if (a) {
                            Log.v("FragmentManager", "movefrom RESUMED: " + fragment);
                        }
                        fragment.z();
                        fragment.w = false;
                    }
                    if (i < 4) {
                        if (a) {
                            Log.v("FragmentManager", "movefrom STARTED: " + fragment);
                        }
                        fragment.A();
                    }
                    if (i < 3) {
                        if (a) {
                            Log.v("FragmentManager", "movefrom STOPPED: " + fragment);
                        }
                        fragment.B();
                    }
                    if (i < 2) {
                        if (a) {
                            Log.v("FragmentManager", "movefrom ACTIVITY_CREATED: " + fragment);
                        }
                        e(fragment);
                        fragment.C();
                        if (a2 != null) {
                            fragment.k = fragment.R;
                            fragment.l = i;
                            a2.setAnimationListener(new t(this, fragment));
                            fragment.R.startAnimation(a2);
                        }
                        fragment.Q.removeView(fragment.R);
                        fragment.Q = null;
                        fragment.R = null;
                        fragment.S = null;
                    }
                    if (i < 1) {
                        view = fragment.k;
                        fragment.k = null;
                        view.clearAnimation();
                        if (fragment.k != null) {
                            fragment.l = i;
                            i = 1;
                        } else {
                            if (a) {
                                Log.v("FragmentManager", "movefrom CREATED: " + fragment);
                            }
                            if (fragment.L) {
                                fragment.D();
                            }
                            fragment.O = false;
                            fragment.e();
                            if (!fragment.O) {
                                throw new af("Fragment " + fragment + " did not call through to super.onDetach()");
                            } else if (z) {
                                if (fragment.L) {
                                    d(fragment);
                                } else {
                                    fragment.C = null;
                                    fragment.B = null;
                                }
                            }
                        }
                    }
                    break;
                default:
                    break;
            }
        }
        fragment.j = i;
    }

    public void a(Fragment fragment, boolean z) {
        if (this.g == null) {
            this.g = new ArrayList();
        }
        if (a) {
            Log.v("FragmentManager", "add: " + fragment);
        }
        c(fragment);
        if (!fragment.J) {
            if (this.g.contains(fragment)) {
                throw new IllegalStateException("Fragment already added: " + fragment);
            }
            this.g.add(fragment);
            fragment.u = true;
            fragment.v = false;
            if (fragment.M && fragment.N) {
                this.r = true;
            }
            if (z) {
                b(fragment);
            }
        }
    }

    public void a(i iVar, n nVar, Fragment fragment) {
        if (this.o != null) {
            throw new IllegalStateException("Already attached");
        }
        this.o = iVar;
        this.p = nVar;
        this.q = fragment;
    }

    public void a(Runnable runnable, boolean z) {
        if (!z) {
            t();
        }
        synchronized (this) {
            if (this.o == null) {
                throw new IllegalStateException("Activity has been destroyed");
            }
            if (this.c == null) {
                this.c = new ArrayList();
            }
            this.c.add(runnable);
            if (this.c.size() == 1) {
                this.o.a.removeCallbacks(this.y);
                this.o.a.post(this.y);
            }
        }
    }

    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int size;
        int i;
        int i2 = 0;
        String str2 = str + "    ";
        if (this.f != null) {
            size = this.f.size();
            if (size > 0) {
                printWriter.print(str);
                printWriter.print("Active Fragments in ");
                printWriter.print(Integer.toHexString(System.identityHashCode(this)));
                printWriter.println(":");
                i = 0;
                while (i < size) {
                    Fragment fragment;
                    fragment = (Fragment) this.f.get(i);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i);
                    printWriter.print(": ");
                    printWriter.println(fragment);
                    if (fragment != null) {
                        fragment.a(str2, fileDescriptor, printWriter, strArr);
                    }
                    i++;
                }
            }
        }
        if (this.g != null) {
            size = this.g.size();
            if (size > 0) {
                printWriter.print(str);
                printWriter.println("Added Fragments:");
                i = 0;
                while (i < size) {
                    fragment = (Fragment) this.g.get(i);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i);
                    printWriter.print(": ");
                    printWriter.println(fragment.toString());
                    i++;
                }
            }
        }
        if (this.j != null) {
            size = this.j.size();
            if (size > 0) {
                printWriter.print(str);
                printWriter.println("Fragments Created Menus:");
                i = 0;
                while (i < size) {
                    fragment = (Fragment) this.j.get(i);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i);
                    printWriter.print(": ");
                    printWriter.println(fragment.toString());
                    i++;
                }
            }
        }
        if (this.i != null) {
            size = this.i.size();
            if (size > 0) {
                printWriter.print(str);
                printWriter.println("Back Stack:");
                i = 0;
                while (i < size) {
                    b bVar = (b) this.i.get(i);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i);
                    printWriter.print(": ");
                    printWriter.println(bVar.toString());
                    bVar.a(str2, fileDescriptor, printWriter, strArr);
                    i++;
                }
            }
        }
        synchronized (this) {
            if (this.k != null) {
                int size2 = this.k.size();
                if (size2 > 0) {
                    printWriter.print(str);
                    printWriter.println("Back Stack Indices:");
                    i = 0;
                    while (i < size2) {
                        bVar = (b) this.k.get(i);
                        printWriter.print(str);
                        printWriter.print("  #");
                        printWriter.print(i);
                        printWriter.print(": ");
                        printWriter.println(bVar);
                        i++;
                    }
                }
            }
            if (this.l != null && this.l.size() > 0) {
                printWriter.print(str);
                printWriter.print("mAvailBackStackIndices: ");
                printWriter.println(Arrays.toString(this.l.toArray()));
            }
        }
        if (this.c != null) {
            i = this.c.size();
            if (i > 0) {
                printWriter.print(str);
                printWriter.println("Pending Actions:");
                while (i2 < i) {
                    Runnable runnable = (Runnable) this.c.get(i2);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i2);
                    printWriter.print(": ");
                    printWriter.println(runnable);
                    i2++;
                }
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mActivity=");
        printWriter.println(this.o);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.p);
        if (this.q != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.q);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.n);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.s);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.t);
        if (this.r) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.r);
        }
        if (this.u != null) {
            printWriter.print(str);
            printWriter.print("  mNoTransactionsBecause=");
            printWriter.println(this.u);
        }
        if (this.h != null && this.h.size() > 0) {
            printWriter.print(str);
            printWriter.print("  mAvailIndices: ");
            printWriter.println(Arrays.toString(this.h.toArray()));
        }
    }

    boolean a(Handler handler, String str, int i, int i2) {
        if (this.i == null) {
            return false;
        }
        int size;
        if (str == null && i < 0 && (i2 & 1) == 0) {
            size = this.i.size() - 1;
            if (size < 0) {
                return false;
            }
            ((b) this.i.remove(size)).b(true);
            f();
        } else {
            int size2;
            boolean z = -1;
            if (str != null || i >= 0) {
                b bVar;
                size2 = this.i.size() - 1;
                while (size2 >= 0) {
                    bVar = (b) this.i.get(size2);
                    if (str == null || !str.equals(bVar.c())) {
                        if (i >= 0 && i == bVar.o) {
                            break;
                        }
                        size2--;
                    } else {
                        break;
                    }
                }
                if (size2 < 0) {
                    return false;
                }
                if ((i2 & 1) != 0) {
                    size2--;
                    while (size2 >= 0) {
                        bVar = (b) this.i.get(size2);
                        if ((str == null || !str.equals(bVar.c())) && (i < 0 || i != bVar.o)) {
                            break;
                        }
                        size2--;
                    }
                }
                size = size2;
            }
            if (size == this.i.size() - 1) {
                return false;
            }
            ArrayList arrayList = new ArrayList();
            size2 = this.i.size() - 1;
            while (size2 > size) {
                arrayList.add(this.i.remove(size2));
                size2--;
            }
            int size3 = arrayList.size() - 1;
            int i3 = 0;
            while (i3 <= size3) {
                if (a) {
                    Log.v("FragmentManager", "Popping back stack state: " + arrayList.get(i3));
                }
                ((b) arrayList.get(i3)).b(i3 == size3);
                i3++;
            }
            f();
        }
        return true;
    }

    public boolean a(Menu menu) {
        if (this.g == null) {
            return false;
        }
        int i = 0;
        boolean z = false;
        while (i < this.g.size()) {
            Fragment fragment = (Fragment) this.g.get(i);
            if (fragment != null && fragment.c(menu)) {
                z = true;
            }
            i++;
        }
        return z;
    }

    public boolean a(Menu menu, MenuInflater menuInflater) {
        boolean z;
        Fragment fragment;
        int i = 0;
        ArrayList arrayList = null;
        if (this.g != null) {
            int i2 = 0;
            z = false;
            while (i2 < this.g.size()) {
                fragment = (Fragment) this.g.get(i2);
                if (fragment != null && fragment.b(menu, menuInflater)) {
                    z = true;
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(fragment);
                }
                i2++;
                z = z;
            }
        } else {
            z = false;
        }
        if (this.j != null) {
            while (i < this.j.size()) {
                fragment = (Fragment) this.j.get(i);
                if (arrayList == null || !arrayList.contains(fragment)) {
                    fragment.u();
                }
                i++;
            }
        }
        this.j = arrayList;
        return z;
    }

    public boolean a(MenuItem menuItem) {
        if (this.g == null) {
            return false;
        }
        int i = 0;
        while (i < this.g.size()) {
            Fragment fragment = (Fragment) this.g.get(i);
            if (fragment != null && fragment.c(menuItem)) {
                return true;
            }
            i++;
        }
        return false;
    }

    public void b(int i) {
        synchronized (this) {
            this.k.set(i, null);
            if (this.l == null) {
                this.l = new ArrayList();
            }
            if (a) {
                Log.v("FragmentManager", "Freeing back stack index " + i);
            }
            this.l.add(Integer.valueOf(i));
        }
    }

    void b(Fragment fragment) {
        a(fragment, this.n, 0, 0, false);
    }

    public void b(Fragment fragment, int i, int i2) {
        if (a) {
            Log.v("FragmentManager", "hide: " + fragment);
        }
        if (!fragment.I) {
            fragment.I = true;
            if (fragment.R != null) {
                Animation a = a(fragment, i, true, i2);
                if (a != null) {
                    fragment.R.startAnimation(a);
                }
                fragment.R.setVisibility(o.MyAlertDialog_MAD_messagePadding);
            }
            if (fragment.u && fragment.M && fragment.N) {
                this.r = true;
            }
            fragment.b(true);
        }
    }

    void b(b bVar) {
        if (this.i == null) {
            this.i = new ArrayList();
        }
        this.i.add(bVar);
        f();
    }

    public void b(Menu menu) {
        if (this.g != null) {
            int i = 0;
            while (i < this.g.size()) {
                Fragment fragment = (Fragment) this.g.get(i);
                if (fragment != null) {
                    fragment.d(menu);
                }
                i++;
            }
        }
    }

    public boolean b() {
        return e();
    }

    public boolean b(MenuItem menuItem) {
        if (this.g == null) {
            return false;
        }
        int i = 0;
        while (i < this.g.size()) {
            Fragment fragment = (Fragment) this.g.get(i);
            if (fragment != null && fragment.d(menuItem)) {
                return true;
            }
            i++;
        }
        return false;
    }

    void c(Fragment fragment) {
        if (fragment.o < 0) {
            if (this.h == null || this.h.size() <= 0) {
                if (this.f == null) {
                    this.f = new ArrayList();
                }
                fragment.a(this.f.size(), this.q);
                this.f.add(fragment);
            } else {
                fragment.a(((Integer) this.h.remove(this.h.size() - 1)).intValue(), this.q);
                this.f.set(fragment.o, fragment);
            }
            if (a) {
                Log.v("FragmentManager", "Allocated fragment index " + fragment);
            }
        }
    }

    public void c(Fragment fragment, int i, int i2) {
        if (a) {
            Log.v("FragmentManager", "show: " + fragment);
        }
        if (fragment.I) {
            fragment.I = false;
            if (fragment.R != null) {
                Animation a = a(fragment, i, true, i2);
                if (a != null) {
                    fragment.R.startAnimation(a);
                }
                fragment.R.setVisibility(0);
            }
            if (fragment.u && fragment.M && fragment.N) {
                this.r = true;
            }
            fragment.b(false);
        }
    }

    public boolean c() {
        t();
        b();
        return a(this.o.a, null, -1, 0);
    }

    void d() {
        if (this.f != null) {
            int i = 0;
            while (i < this.f.size()) {
                Fragment fragment = (Fragment) this.f.get(i);
                if (fragment != null) {
                    a(fragment);
                }
                i++;
            }
        }
    }

    void d(Fragment fragment) {
        if (fragment.o >= 0) {
            if (a) {
                Log.v("FragmentManager", "Freeing fragment index " + fragment);
            }
            this.f.set(fragment.o, null);
            if (this.h == null) {
                this.h = new ArrayList();
            }
            this.h.add(Integer.valueOf(fragment.o));
            this.o.a(fragment.p);
            fragment.t();
        }
    }

    public void d(Fragment fragment, int i, int i2) {
        if (a) {
            Log.v("FragmentManager", "detach: " + fragment);
        }
        if (!fragment.J) {
            fragment.J = true;
            if (fragment.u) {
                if (this.g != null) {
                    if (a) {
                        Log.v("FragmentManager", "remove from detach: " + fragment);
                    }
                    this.g.remove(fragment);
                }
                if (fragment.M && fragment.N) {
                    this.r = true;
                }
                fragment.u = false;
                a(fragment, 1, i, i2, false);
            }
        }
    }

    void e(Fragment fragment) {
        if (fragment.S != null) {
            if (this.x == null) {
                this.x = new SparseArray();
            } else {
                this.x.clear();
            }
            fragment.S.saveHierarchyState(this.x);
            if (this.x.size() > 0) {
                fragment.n = this.x;
                this.x = null;
            }
        }
    }

    public void e(Fragment fragment, int i, int i2) {
        if (a) {
            Log.v("FragmentManager", "attach: " + fragment);
        }
        if (fragment.J) {
            fragment.J = false;
            if (!fragment.u) {
                if (this.g == null) {
                    this.g = new ArrayList();
                }
                if (this.g.contains(fragment)) {
                    throw new IllegalStateException("Fragment already added: " + fragment);
                }
                if (a) {
                    Log.v("FragmentManager", "add from attach: " + fragment);
                }
                this.g.add(fragment);
                fragment.u = true;
                if (fragment.M && fragment.N) {
                    this.r = true;
                }
                a(fragment, this.n, i, i2, false);
            }
        }
    }

    public boolean e() {
        if (this.e) {
            throw new IllegalStateException("Recursive entry to executePendingTransactions");
        } else if (Looper.myLooper() != this.o.a.getLooper()) {
            throw new IllegalStateException("Must be called from main thread of process");
        } else {
            boolean z = false;
            while (true) {
                synchronized (this) {
                    int size;
                    if (this.c != null && this.c.size() != 0) {
                        size = this.c.size();
                        if (this.d == null || this.d.length < size) {
                            this.d = new Runnable[size];
                        }
                        this.c.toArray(this.d);
                        this.c.clear();
                        this.o.a.removeCallbacks(this.y);
                        this.e = true;
                        int i = 0;
                        while (i < size) {
                            this.d[i].run();
                            this.d[i] = null;
                            i++;
                        }
                        this.e = false;
                        z = true;
                    }
                    if (this.v) {
                        size = 0;
                        int i2 = 0;
                        while (size < this.f.size()) {
                            Fragment fragment = (Fragment) this.f.get(size);
                            if (!(fragment == null || fragment.V == null)) {
                                i2 |= fragment.V.a();
                            }
                            size++;
                        }
                        if (i2 == 0) {
                            this.v = false;
                            d();
                        }
                    }
                    return z;
                }
            }
        }
    }

    Bundle f(Fragment fragment) {
        Bundle bundle;
        if (this.w == null) {
            this.w = new Bundle();
        }
        fragment.k(this.w);
        if (this.w.isEmpty()) {
            bundle = null;
        } else {
            bundle = this.w;
            this.w = null;
        }
        if (fragment.R != null) {
            e(fragment);
        }
        if (fragment.n != null) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putSparseParcelableArray("android:view_state", fragment.n);
        }
        if (!fragment.U) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putBoolean("android:user_visible_hint", fragment.U);
        }
        return bundle;
    }

    void f() {
        if (this.m != null) {
            int i = 0;
            while (i < this.m.size()) {
                ((p) this.m.get(i)).a();
                i++;
            }
        }
    }

    ArrayList g() {
        ArrayList arrayList = null;
        if (this.f != null) {
            int i = 0;
            while (i < this.f.size()) {
                Fragment fragment = (Fragment) this.f.get(i);
                if (fragment != null && fragment.K) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(fragment);
                    fragment.L = true;
                    fragment.s = fragment.r != null ? fragment.r.o : -1;
                    if (a) {
                        Log.v("FragmentManager", "retainNonConfig: keeping retained " + fragment);
                    }
                }
                i++;
            }
        }
        return arrayList;
    }

    Parcelable h() {
        BackStackState[] backStackStateArr = null;
        e();
        if (b) {
            this.s = true;
        }
        if (this.f == null || this.f.size() <= 0) {
            return null;
        }
        int size = this.f.size();
        FragmentState[] fragmentStateArr = new FragmentState[size];
        int i = 0;
        boolean z = false;
        while (i < size) {
            boolean z2;
            Fragment fragment = (Fragment) this.f.get(i);
            if (fragment != null) {
                if (fragment.o < 0) {
                    a(new IllegalStateException("Failure saving state: active " + fragment + " has cleared index: " + fragment.o));
                }
                FragmentState fragmentState = new FragmentState(fragment);
                fragmentStateArr[i] = fragmentState;
                if (fragment.j <= 0 || fragmentState.j != null) {
                    fragmentState.j = fragment.m;
                } else {
                    fragmentState.j = f(fragment);
                    if (fragment.r != null) {
                        if (fragment.r.o < 0) {
                            a(new IllegalStateException("Failure saving state: " + fragment + " has target not in fragment manager: " + fragment.r));
                        }
                        if (fragmentState.j == null) {
                            fragmentState.j = new Bundle();
                        }
                        a(fragmentState.j, "android:target_state", fragment.r);
                        if (fragment.t != 0) {
                            fragmentState.j.putInt("android:target_req_state", fragment.t);
                        }
                    }
                }
                if (a) {
                    Log.v("FragmentManager", "Saved state of " + fragment + ": " + fragmentState.j);
                }
                z2 = true;
            } else {
                int i2;
                int i3 = i2;
            }
            i++;
            z = z2;
        }
        if (i2 != 0) {
            int[] iArr;
            FragmentManagerState fragmentManagerState;
            if (this.g != null) {
                i = this.g.size();
                if (i > 0) {
                    iArr = new int[i];
                    i2 = 0;
                    while (i2 < i) {
                        iArr[i2] = ((Fragment) this.g.get(i2)).o;
                        if (iArr[i2] < 0) {
                            a(new IllegalStateException("Failure saving state: active " + this.g.get(i2) + " has cleared index: " + iArr[i2]));
                        }
                        if (a) {
                            Log.v("FragmentManager", "saveAllState: adding fragment #" + i2 + ": " + this.g.get(i2));
                        }
                        i2++;
                    }
                    if (this.i != null) {
                        i = this.i.size();
                        if (i > 0) {
                            backStackStateArr = new BackStackState[i];
                            i2 = 0;
                            while (i2 < i) {
                                backStackStateArr[i2] = new BackStackState(this, (b) this.i.get(i2));
                                if (a) {
                                    Log.v("FragmentManager", "saveAllState: adding back stack #" + i2 + ": " + this.i.get(i2));
                                }
                                i2++;
                            }
                        }
                    }
                    fragmentManagerState = new FragmentManagerState();
                    fragmentManagerState.a = fragmentStateArr;
                    fragmentManagerState.b = iArr;
                    fragmentManagerState.c = backStackStateArr;
                    return fragmentManagerState;
                }
            }
            iArr = null;
            if (this.i != null) {
                i = this.i.size();
                if (i > 0) {
                    backStackStateArr = new BackStackState[i];
                    i2 = 0;
                    while (i2 < i) {
                        backStackStateArr[i2] = new BackStackState(this, (b) this.i.get(i2));
                        if (a) {
                            Log.v("FragmentManager", "saveAllState: adding back stack #" + i2 + ": " + this.i.get(i2));
                        }
                        i2++;
                    }
                }
            }
            fragmentManagerState = new FragmentManagerState();
            fragmentManagerState.a = fragmentStateArr;
            fragmentManagerState.b = iArr;
            fragmentManagerState.c = backStackStateArr;
            return fragmentManagerState;
        } else if (!a) {
            return null;
        } else {
            Log.v("FragmentManager", "saveAllState: no fragments!");
            return null;
        }
    }

    public void i() {
        this.s = false;
    }

    public void j() {
        this.s = false;
        a(1, false);
    }

    public void k() {
        this.s = false;
        a((int)o.MyAlertDialog_myAlertDialogButtonDrawable, false);
    }

    public void l() {
        this.s = false;
        a((int)o.MyAlertDialog_MAD_buttonBarStyle, false);
    }

    public void m() {
        this.s = false;
        a((int)o.MyAlertDialog_MAD_textAppearanceMedium, false);
    }

    public void n() {
        a((int)o.MyAlertDialog_MAD_buttonBarStyle, false);
    }

    public void o() {
        this.s = true;
        a((int)o.MyAlertDialog_MAD_titleStyle, false);
    }

    public void p() {
        a((int)o.MyAlertDialog_myAlertDialogButtonDrawable, false);
    }

    public void q_() {
        a(1, false);
    }

    public void r() {
        this.t = true;
        e();
        a(0, false);
        this.o = null;
        this.p = null;
        this.q = null;
    }

    public void s() {
        if (this.g != null) {
            int i = 0;
            while (i < this.g.size()) {
                Fragment fragment = (Fragment) this.g.get(i);
                if (fragment != null) {
                    fragment.y();
                }
                i++;
            }
        }
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder(128);
        stringBuilder.append("FragmentManager{");
        stringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
        stringBuilder.append(" in ");
        if (this.q != null) {
            a.a(this.q, stringBuilder);
        } else {
            a.a(this.o, stringBuilder);
        }
        stringBuilder.append("}}");
        return stringBuilder.toString();
    }
}
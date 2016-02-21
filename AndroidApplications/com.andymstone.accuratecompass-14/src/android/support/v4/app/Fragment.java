package android.support.v4.app;

import android.app.Activity;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.v4.c.a;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnCreateContextMenuListener;
import android.view.ViewGroup;
import android.view.animation.Animation;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.HashMap;

public class Fragment implements ComponentCallbacks, OnCreateContextMenuListener {
    private static final HashMap a;
    int A;
    q B;
    i C;
    q D;
    Fragment E;
    int F;
    int G;
    String H;
    boolean I;
    boolean J;
    boolean K;
    boolean L;
    boolean M;
    boolean N;
    boolean O;
    int P;
    ViewGroup Q;
    View R;
    View S;
    boolean T;
    boolean U;
    ac V;
    boolean W;
    boolean X;
    int j;
    View k;
    int l;
    Bundle m;
    SparseArray n;
    int o;
    String p;
    Bundle q;
    Fragment r;
    int s;
    int t;
    boolean u;
    boolean v;
    boolean w;
    boolean x;
    boolean y;
    boolean z;

    public class SavedState implements Parcelable {
        public static final Creator CREATOR;
        final Bundle a;

        static {
            CREATOR = new h();
        }

        SavedState(Parcel parcel, ClassLoader classLoader) {
            this.a = parcel.readBundle();
            if (classLoader != null && this.a != null) {
                this.a.setClassLoader(classLoader);
            }
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeBundle(this.a);
        }
    }

    static {
        a = new HashMap();
    }

    public Fragment() {
        this.j = 0;
        this.o = -1;
        this.s = -1;
        this.N = true;
        this.U = true;
    }

    public static Fragment a(Context context, String str) {
        return a(context, str, null);
    }

    public static Fragment a(Context context, String str, Bundle bundle) {
        try {
            Class cls = (Class) a.get(str);
            if (cls == null) {
                cls = context.getClassLoader().loadClass(str);
                a.put(str, cls);
            }
            Fragment fragment = (Fragment) cls.newInstance();
            if (bundle != null) {
                bundle.setClassLoader(fragment.getClass().getClassLoader());
                fragment.q = bundle;
            }
            return fragment;
        } catch (ClassNotFoundException e) {
            throw new g("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an" + " empty constructor that is public", e);
        } catch (InstantiationException e2) {
            throw new g("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an" + " empty constructor that is public", e2);
        } catch (IllegalAccessException e3) {
            throw new g("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an" + " empty constructor that is public", e3);
        }
    }

    void A() {
        if (this.D != null) {
            this.D.o();
        }
        this.O = false;
        g();
        if (!this.O) {
            throw new af("Fragment " + this + " did not call through to super.onStop()");
        }
    }

    void B() {
        if (this.D != null) {
            this.D.p();
        }
        if (this.W) {
            this.W = false;
            if (!this.X) {
                this.X = true;
                this.V = this.C.a(this.p, this.W, false);
            }
            if (this.V == null) {
                return;
            }
            if (this.C.h) {
                this.V.d();
            } else {
                this.V.c();
            }
        }
    }

    void C() {
        if (this.D != null) {
            this.D.q();
        }
        this.O = false;
        h();
        if (!this.O) {
            throw new af("Fragment " + this + " did not call through to super.onDestroyView()");
        } else if (this.V != null) {
            this.V.f();
        }
    }

    void D() {
        if (this.D != null) {
            this.D.r();
        }
        this.O = false;
        s();
        if (!this.O) {
            throw new af("Fragment " + this + " did not call through to super.onDestroy()");
        }
    }

    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return null;
    }

    public Animation a(int i, boolean z, int i2) {
        return null;
    }

    public final String a(int i) {
        return l().getString(i);
    }

    public void a(int i, int i2, Intent intent) {
    }

    final void a(int i, Fragment fragment) {
        this.o = i;
        if (fragment != null) {
            fragment.p += ":" + this.o;
        } else {
            this.p = "android:fragment:" + this.o;
        }
    }

    public void a(Activity activity) {
        this.O = true;
    }

    public void a(Activity activity, AttributeSet attributeSet, Bundle bundle) {
        this.O = true;
    }

    void a(Configuration configuration) {
        onConfigurationChanged(configuration);
        if (this.D != null) {
            this.D.a(configuration);
        }
    }

    public void a(Bundle bundle) {
        this.O = true;
    }

    public void a(Menu menu) {
    }

    public void a(Menu menu, MenuInflater menuInflater) {
    }

    public void a(View view, Bundle bundle) {
    }

    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("mFragmentId=#");
        printWriter.print(Integer.toHexString(this.F));
        printWriter.print(" mContainerId=#");
        printWriter.print(Integer.toHexString(this.G));
        printWriter.print(" mTag=");
        printWriter.println(this.H);
        printWriter.print(str);
        printWriter.print("mState=");
        printWriter.print(this.j);
        printWriter.print(" mIndex=");
        printWriter.print(this.o);
        printWriter.print(" mWho=");
        printWriter.print(this.p);
        printWriter.print(" mBackStackNesting=");
        printWriter.println(this.A);
        printWriter.print(str);
        printWriter.print("mAdded=");
        printWriter.print(this.u);
        printWriter.print(" mRemoving=");
        printWriter.print(this.v);
        printWriter.print(" mResumed=");
        printWriter.print(this.w);
        printWriter.print(" mFromLayout=");
        printWriter.print(this.x);
        printWriter.print(" mInLayout=");
        printWriter.println(this.y);
        printWriter.print(str);
        printWriter.print("mHidden=");
        printWriter.print(this.I);
        printWriter.print(" mDetached=");
        printWriter.print(this.J);
        printWriter.print(" mMenuVisible=");
        printWriter.print(this.N);
        printWriter.print(" mHasMenu=");
        printWriter.println(this.M);
        printWriter.print(str);
        printWriter.print("mRetainInstance=");
        printWriter.print(this.K);
        printWriter.print(" mRetaining=");
        printWriter.print(this.L);
        printWriter.print(" mUserVisibleHint=");
        printWriter.println(this.U);
        if (this.B != null) {
            printWriter.print(str);
            printWriter.print("mFragmentManager=");
            printWriter.println(this.B);
        }
        if (this.C != null) {
            printWriter.print(str);
            printWriter.print("mActivity=");
            printWriter.println(this.C);
        }
        if (this.E != null) {
            printWriter.print(str);
            printWriter.print("mParentFragment=");
            printWriter.println(this.E);
        }
        if (this.q != null) {
            printWriter.print(str);
            printWriter.print("mArguments=");
            printWriter.println(this.q);
        }
        if (this.m != null) {
            printWriter.print(str);
            printWriter.print("mSavedFragmentState=");
            printWriter.println(this.m);
        }
        if (this.n != null) {
            printWriter.print(str);
            printWriter.print("mSavedViewState=");
            printWriter.println(this.n);
        }
        if (this.r != null) {
            printWriter.print(str);
            printWriter.print("mTarget=");
            printWriter.print(this.r);
            printWriter.print(" mTargetRequestCode=");
            printWriter.println(this.t);
        }
        if (this.P != 0) {
            printWriter.print(str);
            printWriter.print("mNextAnim=");
            printWriter.println(this.P);
        }
        if (this.Q != null) {
            printWriter.print(str);
            printWriter.print("mContainer=");
            printWriter.println(this.Q);
        }
        if (this.R != null) {
            printWriter.print(str);
            printWriter.print("mView=");
            printWriter.println(this.R);
        }
        if (this.S != null) {
            printWriter.print(str);
            printWriter.print("mInnerView=");
            printWriter.println(this.R);
        }
        if (this.k != null) {
            printWriter.print(str);
            printWriter.print("mAnimatingAway=");
            printWriter.println(this.k);
            printWriter.print(str);
            printWriter.print("mStateAfterAnimating=");
            printWriter.println(this.l);
        }
        if (this.V != null) {
            printWriter.print(str);
            printWriter.println("Loader Manager:");
            this.V.a(str + "  ", fileDescriptor, printWriter, strArr);
        }
        if (this.D != null) {
            printWriter.print(str);
            printWriter.println("Child " + this.D + ":");
            this.D.a(str + "  ", fileDescriptor, printWriter, strArr);
        }
    }

    public boolean a(MenuItem menuItem) {
        return false;
    }

    public LayoutInflater b(Bundle bundle) {
        return this.C.getLayoutInflater();
    }

    View b(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (this.D != null) {
            this.D.i();
        }
        return a(layoutInflater, viewGroup, bundle);
    }

    public void b(Menu menu) {
    }

    public void b(boolean z) {
    }

    boolean b(Menu menu, MenuInflater menuInflater) {
        boolean z = false;
        if (this.I) {
            return false;
        }
        if (this.M && this.N) {
            z = true;
            a(menu, menuInflater);
        }
        return this.D != null ? z | this.D.a(menu, menuInflater) : z;
    }

    public boolean b(MenuItem menuItem) {
        return false;
    }

    boolean c(Menu menu) {
        boolean z = false;
        if (this.I) {
            return false;
        }
        if (this.M && this.N) {
            z = true;
            a(menu);
        }
        return this.D != null ? z | this.D.a(menu) : z;
    }

    boolean c(MenuItem menuItem) {
        if (!this.I) {
            if (this.M && this.N && a(menuItem)) {
                return true;
            }
            if (this.D != null && this.D.a(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public void d(Bundle bundle) {
        this.O = true;
    }

    void d(Menu menu) {
        if (!this.I) {
            if (this.M && this.N) {
                b(menu);
            }
            if (this.D != null) {
                this.D.b(menu);
            }
        }
    }

    boolean d(MenuItem menuItem) {
        if (!this.I && b(menuItem)) {
            return true;
        }
        if (this.D != null && this.D.b(menuItem)) {
            return true;
        }
        return false;
    }

    public void e() {
        this.O = true;
    }

    public void e(Bundle bundle) {
    }

    public final boolean equals(Object obj) {
        return super.equals(obj);
    }

    public void f() {
        this.O = true;
        if (!this.W) {
            this.W = true;
            if (!this.X) {
                this.X = true;
                this.V = this.C.a(this.p, this.W, false);
            }
            if (this.V != null) {
                this.V.b();
            }
        }
    }

    final void f(Bundle bundle) {
        if (this.n != null) {
            this.S.restoreHierarchyState(this.n);
            this.n = null;
        }
        this.O = false;
        h(bundle);
        if (!this.O) {
            throw new af("Fragment " + this + " did not call through to super.onViewStateRestored()");
        }
    }

    public void g() {
        this.O = true;
    }

    public void g(Bundle bundle) {
        if (this.o >= 0) {
            throw new IllegalStateException("Fragment already active");
        }
        this.q = bundle;
    }

    public void h() {
        this.O = true;
    }

    public void h(Bundle bundle) {
        this.O = true;
    }

    public final int hashCode() {
        return super.hashCode();
    }

    void i(Bundle bundle) {
        if (this.D != null) {
            this.D.i();
        }
        this.O = false;
        a(bundle);
        if (!this.O) {
            throw new af("Fragment " + this + " did not call through to super.onCreate()");
        } else if (bundle != null) {
            Parcelable parcelable = bundle.getParcelable("android:support:fragments");
            if (parcelable != null) {
                if (this.D == null) {
                    v();
                }
                this.D.a(parcelable, null);
                this.D.j();
            }
        }
    }

    final boolean i() {
        return this.A > 0;
    }

    public final Bundle j() {
        return this.q;
    }

    void j(Bundle bundle) {
        if (this.D != null) {
            this.D.i();
        }
        this.O = false;
        d(bundle);
        if (!this.O) {
            throw new af("Fragment " + this + " did not call through to super.onActivityCreated()");
        } else if (this.D != null) {
            this.D.k();
        }
    }

    public final i k() {
        return this.C;
    }

    void k(Bundle bundle) {
        e(bundle);
        if (this.D != null) {
            Parcelable h = this.D.h();
            if (h != null) {
                bundle.putParcelable("android:support:fragments", h);
            }
        }
    }

    public final Resources l() {
        if (this.C != null) {
            return this.C.getResources();
        }
        throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }

    public final o m() {
        return this.B;
    }

    public final boolean n() {
        return this.J;
    }

    public final boolean o() {
        return this.K;
    }

    public void onConfigurationChanged(Configuration configuration) {
        this.O = true;
    }

    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenuInfo contextMenuInfo) {
        k().onCreateContextMenu(contextMenu, view, contextMenuInfo);
    }

    public void onLowMemory() {
        this.O = true;
    }

    public View p() {
        return this.R;
    }

    public void q() {
        this.O = true;
    }

    public void r() {
        this.O = true;
    }

    public void s() {
        this.O = true;
        if (!this.X) {
            this.X = true;
            this.V = this.C.a(this.p, this.W, false);
        }
        if (this.V != null) {
            this.V.h();
        }
    }

    void t() {
        this.o = -1;
        this.p = null;
        this.u = false;
        this.v = false;
        this.w = false;
        this.x = false;
        this.y = false;
        this.z = false;
        this.A = 0;
        this.B = null;
        this.C = null;
        this.F = 0;
        this.G = 0;
        this.H = null;
        this.I = false;
        this.J = false;
        this.L = false;
        this.V = null;
        this.W = false;
        this.X = false;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder(128);
        a.a(this, stringBuilder);
        if (this.o >= 0) {
            stringBuilder.append(" #");
            stringBuilder.append(this.o);
        }
        if (this.F != 0) {
            stringBuilder.append(" id=0x");
            stringBuilder.append(Integer.toHexString(this.F));
        }
        if (this.H != null) {
            stringBuilder.append(" ");
            stringBuilder.append(this.H);
        }
        stringBuilder.append('}');
        return stringBuilder.toString();
    }

    public void u() {
    }

    void v() {
        this.D = new q();
        this.D.a(this.C, new f(this), this);
    }

    void w() {
        if (this.D != null) {
            this.D.i();
            this.D.e();
        }
        this.O = false;
        f();
        if (this.O) {
            if (this.D != null) {
                this.D.l();
            }
            if (this.V != null) {
                this.V.g();
            }
        } else {
            throw new af("Fragment " + this + " did not call through to super.onStart()");
        }
    }

    void x() {
        if (this.D != null) {
            this.D.i();
            this.D.e();
        }
        this.O = false;
        q();
        if (!this.O) {
            throw new af("Fragment " + this + " did not call through to super.onResume()");
        } else if (this.D != null) {
            this.D.m();
            this.D.e();
        }
    }

    void y() {
        onLowMemory();
        if (this.D != null) {
            this.D.s();
        }
    }

    void z() {
        if (this.D != null) {
            this.D.n();
        }
        this.O = false;
        r();
        if (!this.O) {
            throw new af("Fragment " + this + " did not call through to super.onPause()");
        }
    }
}
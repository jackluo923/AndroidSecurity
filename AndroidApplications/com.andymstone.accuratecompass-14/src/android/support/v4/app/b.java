package android.support.v4.app;

import android.util.Log;
import com.andymstone.compasslib.v;
import com.andymstone.core.o;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;

final class b extends z implements Runnable {
    final q a;
    c b;
    c c;
    int d;
    int e;
    int f;
    int g;
    int h;
    int i;
    int j;
    boolean k;
    boolean l;
    String m;
    boolean n;
    int o;
    int p;
    CharSequence q;
    int r;
    CharSequence s;

    public b(q qVar) {
        this.l = true;
        this.o = -1;
        this.a = qVar;
    }

    private void a(int i, Fragment fragment, String str, int i2) {
        fragment.B = this.a;
        if (str != null) {
            if (fragment.H == null || str.equals(fragment.H)) {
                fragment.H = str;
            } else {
                throw new IllegalStateException("Can't change tag of fragment " + fragment + ": was " + fragment.H + " now " + str);
            }
        }
        if (i != 0) {
            if (fragment.F == 0 || fragment.F == i) {
                fragment.F = i;
                fragment.G = i;
            } else {
                throw new IllegalStateException("Can't change container ID of fragment " + fragment + ": was " + fragment.F + " now " + i);
            }
        }
        c cVar = new c();
        cVar.c = i2;
        cVar.d = fragment;
        a(cVar);
    }

    public int a() {
        return a(false);
    }

    int a(boolean z) {
        if (this.n) {
            throw new IllegalStateException("commit already called");
        }
        if (q.a) {
            Log.v("FragmentManager", "Commit: " + this);
            a("  ", null, new PrintWriter(new android.support.v4.c.b("FragmentManager")), null);
        }
        this.n = true;
        if (this.k) {
            this.o = this.a.a((b)this);
        } else {
            this.o = -1;
        }
        this.a.a(this, z);
        return this.o;
    }

    public z a(int i, Fragment fragment, String str) {
        a(i, fragment, str, 1);
        return this;
    }

    public z a(Fragment fragment) {
        c cVar = new c();
        cVar.c = 3;
        cVar.d = fragment;
        a(cVar);
        return this;
    }

    public z a(Fragment fragment, String str) {
        a(0, fragment, str, 1);
        return this;
    }

    public z a(String str) {
        if (this.l) {
            this.k = true;
            this.m = str;
            return this;
        } else {
            throw new IllegalStateException("This FragmentTransaction is not allowed to be added to the back stack.");
        }
    }

    void a(int i) {
        if (this.k) {
            if (q.a) {
                Log.v("FragmentManager", "Bump nesting in " + this + " by " + i);
            }
            c cVar = this.b;
            while (cVar != null) {
                Fragment fragment;
                if (cVar.d != null) {
                    fragment = cVar.d;
                    fragment.A += i;
                    if (q.a) {
                        Log.v("FragmentManager", "Bump nesting of " + cVar.d + " to " + cVar.d.A);
                    }
                }
                if (cVar.i != null) {
                    int i2 = cVar.i.size() - 1;
                    while (i2 >= 0) {
                        fragment = (Fragment) cVar.i.get(i2);
                        fragment.A += i;
                        if (q.a) {
                            Log.v("FragmentManager", "Bump nesting of " + fragment + " to " + fragment.A);
                        }
                        i2--;
                    }
                }
                cVar = cVar.a;
            }
        }
    }

    void a(c cVar) {
        if (this.b == null) {
            this.c = cVar;
            this.b = cVar;
        } else {
            cVar.b = this.c;
            this.c.a = cVar;
            this.c = cVar;
        }
        cVar.e = this.e;
        cVar.f = this.f;
        cVar.g = this.g;
        cVar.h = this.h;
        this.d++;
    }

    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        a(str, printWriter, true);
    }

    public void a(String str, PrintWriter printWriter, boolean z) {
        if (z) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.m);
            printWriter.print(" mIndex=");
            printWriter.print(this.o);
            printWriter.print(" mCommitted=");
            printWriter.println(this.n);
            if (this.i != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.i));
                printWriter.print(" mTransitionStyle=#");
                printWriter.println(Integer.toHexString(this.j));
            }
            if (!(this.e == 0 && this.f == 0)) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.e));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.f));
            }
            if (!(this.g == 0 && this.h == 0)) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.g));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.h));
            }
            if (!(this.p == 0 && this.q == null)) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.p));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.q);
            }
            if (!(this.r == 0 && this.s == null)) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.r));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.s);
            }
        }
        if (this.b != null) {
            printWriter.print(str);
            printWriter.println("Operations:");
            String str2 = str + "    ";
            int i = 0;
            c cVar = this.b;
            while (cVar != null) {
                String str3;
                switch (cVar.c) {
                    case v.DropShadowView_cornerRadius:
                        str3 = "NULL";
                        break;
                    case o.MyAlertDialog_myAlertDialogAccentColor:
                        str3 = "ADD";
                        break;
                    case o.MyAlertDialog_myAlertDialogButtonDrawable:
                        str3 = "REPLACE";
                        break;
                    case o.MyAlertDialog_MAD_titleStyle:
                        str3 = "REMOVE";
                        break;
                    case o.MyAlertDialog_MAD_buttonBarStyle:
                        str3 = "HIDE";
                        break;
                    case o.MyAlertDialog_MAD_textAppearanceMedium:
                        str3 = "SHOW";
                        break;
                    case o.MyAlertDialog_MAD_divider:
                        str3 = "DETACH";
                        break;
                    case o.MyAlertDialog_MAD_edgePadding:
                        str3 = "ATTACH";
                        break;
                    default:
                        str3 = "cmd=" + cVar.c;
                        break;
                }
                printWriter.print(str);
                printWriter.print("  Op #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.print(str3);
                printWriter.print(" ");
                printWriter.println(cVar.d);
                if (z) {
                    if (!(cVar.e == 0 && cVar.f == 0)) {
                        printWriter.print(str);
                        printWriter.print("enterAnim=#");
                        printWriter.print(Integer.toHexString(cVar.e));
                        printWriter.print(" exitAnim=#");
                        printWriter.println(Integer.toHexString(cVar.f));
                    }
                    if (!(cVar.g == 0 && cVar.h == 0)) {
                        printWriter.print(str);
                        printWriter.print("popEnterAnim=#");
                        printWriter.print(Integer.toHexString(cVar.g));
                        printWriter.print(" popExitAnim=#");
                        printWriter.println(Integer.toHexString(cVar.h));
                    }
                }
                if (cVar.i != null && cVar.i.size() > 0) {
                    int i2 = 0;
                    while (i2 < cVar.i.size()) {
                        printWriter.print(str2);
                        if (cVar.i.size() == 1) {
                            printWriter.print("Removed: ");
                        } else {
                            if (i2 == 0) {
                                printWriter.println("Removed:");
                            }
                            printWriter.print(str2);
                            printWriter.print("  #");
                            printWriter.print(i2);
                            printWriter.print(": ");
                        }
                        printWriter.println(cVar.i.get(i2));
                        i2++;
                    }
                }
                cVar = cVar.a;
                i++;
            }
        }
    }

    public int b_() {
        return a(true);
    }

    public z b_(int i, Fragment fragment, String str) {
        if (i == 0) {
            throw new IllegalArgumentException("Must use non-zero containerViewId");
        }
        a(i, fragment, str, (int)o.MyAlertDialog_myAlertDialogButtonDrawable);
        return this;
    }

    public z b_(Fragment fragment) {
        c cVar = new c();
        cVar.c = 6;
        cVar.d = fragment;
        a(cVar);
        return this;
    }

    public void b_(boolean z) {
        if (q.a) {
            Log.v("FragmentManager", "popFromBackStack: " + this);
            a("  ", null, new PrintWriter(new android.support.v4.c.b("FragmentManager")), null);
        }
        a(-1);
        c cVar = this.c;
        while (cVar != null) {
            Fragment fragment;
            switch (cVar.c) {
                case o.MyAlertDialog_myAlertDialogAccentColor:
                    fragment = cVar.d;
                    fragment.P = cVar.h;
                    this.a.a(fragment, q.c(this.i), this.j);
                    break;
                case o.MyAlertDialog_myAlertDialogButtonDrawable:
                    fragment = cVar.d;
                    if (fragment != null) {
                        fragment.P = cVar.h;
                        this.a.a(fragment, q.c(this.i), this.j);
                    }
                    if (cVar.i != null) {
                        int i = 0;
                        while (i < cVar.i.size()) {
                            fragment = (Fragment) cVar.i.get(i);
                            fragment.P = cVar.g;
                            this.a.a(fragment, false);
                            i++;
                        }
                    }
                    break;
                case o.MyAlertDialog_MAD_titleStyle:
                    fragment = cVar.d;
                    fragment.P = cVar.g;
                    this.a.a(fragment, false);
                    break;
                case o.MyAlertDialog_MAD_buttonBarStyle:
                    fragment = cVar.d;
                    fragment.P = cVar.g;
                    this.a.c(fragment, q.c(this.i), this.j);
                    break;
                case o.MyAlertDialog_MAD_textAppearanceMedium:
                    fragment = cVar.d;
                    fragment.P = cVar.h;
                    this.a.b(fragment, q.c(this.i), this.j);
                    break;
                case o.MyAlertDialog_MAD_divider:
                    fragment = cVar.d;
                    fragment.P = cVar.g;
                    this.a.e(fragment, q.c(this.i), this.j);
                    break;
                case o.MyAlertDialog_MAD_edgePadding:
                    fragment = cVar.d;
                    fragment.P = cVar.g;
                    this.a.d(fragment, q.c(this.i), this.j);
                    break;
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + cVar.c);
            }
            cVar = cVar.b;
        }
        if (z) {
            this.a.a(this.a.n, q.c(this.i), this.j, true);
        }
        if (this.o >= 0) {
            this.a.b(this.o);
            this.o = -1;
        }
    }

    public z c(Fragment fragment) {
        c cVar = new c();
        cVar.c = 7;
        cVar.d = fragment;
        a(cVar);
        return this;
    }

    public String c() {
        return this.m;
    }

    public void run() {
        if (q.a) {
            Log.v("FragmentManager", "Run: " + this);
        }
        if (!this.k || this.o >= 0) {
            a(1);
            c cVar = this.b;
            while (cVar != null) {
                Fragment fragment;
                switch (cVar.c) {
                    case o.MyAlertDialog_myAlertDialogAccentColor:
                        fragment = cVar.d;
                        fragment.P = cVar.e;
                        this.a.a(fragment, false);
                        break;
                    case o.MyAlertDialog_myAlertDialogButtonDrawable:
                        Fragment fragment2;
                        fragment = cVar.d;
                        if (this.a.g != null) {
                            int i = 0;
                            fragment2 = fragment;
                            while (i < this.a.g.size()) {
                                fragment = (Fragment) this.a.g.get(i);
                                if (q.a) {
                                    Log.v("FragmentManager", "OP_REPLACE: adding=" + fragment2 + " old=" + fragment);
                                }
                                if (fragment2 == null || fragment.G == fragment2.G) {
                                    if (fragment == fragment2) {
                                        fragment2 = null;
                                        cVar.d = null;
                                    } else {
                                        if (cVar.i == null) {
                                            cVar.i = new ArrayList();
                                        }
                                        cVar.i.add(fragment);
                                        fragment.P = cVar.f;
                                        if (this.k) {
                                            fragment.A++;
                                            if (q.a) {
                                                Log.v("FragmentManager", "Bump nesting of " + fragment + " to " + fragment.A);
                                            }
                                        }
                                        this.a.a(fragment, this.i, this.j);
                                    }
                                }
                                i++;
                            }
                        } else {
                            fragment2 = fragment;
                        }
                        if (fragment2 != null) {
                            fragment2.P = cVar.e;
                            this.a.a(fragment2, false);
                        }
                        break;
                    case o.MyAlertDialog_MAD_titleStyle:
                        fragment = cVar.d;
                        fragment.P = cVar.f;
                        this.a.a(fragment, this.i, this.j);
                        break;
                    case o.MyAlertDialog_MAD_buttonBarStyle:
                        fragment = cVar.d;
                        fragment.P = cVar.f;
                        this.a.b(fragment, this.i, this.j);
                        break;
                    case o.MyAlertDialog_MAD_textAppearanceMedium:
                        fragment = cVar.d;
                        fragment.P = cVar.e;
                        this.a.c(fragment, this.i, this.j);
                        break;
                    case o.MyAlertDialog_MAD_divider:
                        fragment = cVar.d;
                        fragment.P = cVar.f;
                        this.a.d(fragment, this.i, this.j);
                        break;
                    case o.MyAlertDialog_MAD_edgePadding:
                        fragment = cVar.d;
                        fragment.P = cVar.e;
                        this.a.e(fragment, this.i, this.j);
                        break;
                    default:
                        throw new IllegalArgumentException("Unknown cmd: " + cVar.c);
                }
                cVar = cVar.a;
            }
            this.a.a(this.a.n, this.i, this.j, true);
            if (this.k) {
                this.a.b(this);
            }
        } else {
            throw new IllegalStateException("addToBackStack() called after commit()");
        }
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder(128);
        stringBuilder.append("BackStackEntry{");
        stringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.o >= 0) {
            stringBuilder.append(" #");
            stringBuilder.append(this.o);
        }
        if (this.m != null) {
            stringBuilder.append(" ");
            stringBuilder.append(this.m);
        }
        stringBuilder.append("}");
        return stringBuilder.toString();
    }
}
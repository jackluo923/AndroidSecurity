package android.support.v4.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnDismissListener;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import com.andymstone.core.o;

public class e extends Fragment implements OnCancelListener, OnDismissListener {
    int a;
    int b;
    boolean c;
    boolean d;
    int e;
    Dialog f;
    boolean g;
    boolean h;
    boolean i;

    public e() {
        this.a = 0;
        this.b = 0;
        this.c = true;
        this.d = true;
        this.e = -1;
    }

    public void a() {
        a(false);
    }

    public void a(int i, int i2) {
        this.a = i;
        if (this.a == 2 || this.a == 3) {
            this.b = 16973913;
        }
        if (i2 != 0) {
            this.b = i2;
        }
    }

    public void a(Activity activity) {
        super.a(activity);
        if (!this.i) {
            this.h = false;
        }
    }

    public void a(Bundle bundle) {
        super.a(bundle);
        this.d = this.G == 0;
        if (bundle != null) {
            this.a = bundle.getInt("android:style", 0);
            this.b = bundle.getInt("android:theme", 0);
            this.c = bundle.getBoolean("android:cancelable", true);
            this.d = bundle.getBoolean("android:showsDialog", this.d);
            this.e = bundle.getInt("android:backStackId", -1);
        }
    }

    public void a(o oVar, String str) {
        this.h = false;
        this.i = true;
        z a = oVar.a();
        a.a(this, str);
        a.a();
    }

    void a(boolean z) {
        if (!this.h) {
            this.h = true;
            this.i = false;
            if (this.f != null) {
                this.f.dismiss();
                this.f = null;
            }
            this.g = true;
            if (this.e >= 0) {
                m().a(this.e, 1);
                this.e = -1;
            } else {
                z a = m().a();
                a.a(this);
                if (z) {
                    a.b();
                } else {
                    a.a();
                }
            }
        }
    }

    public LayoutInflater b(Bundle bundle) {
        if (!this.d) {
            return super.b(bundle);
        }
        this.f = c(bundle);
        switch (this.a) {
            case o.MyAlertDialog_myAlertDialogAccentColor:
            case o.MyAlertDialog_myAlertDialogButtonDrawable:
                this.f.requestWindowFeature(1);
                break;
            case o.MyAlertDialog_MAD_titleStyle:
                this.f.getWindow().addFlags(24);
                this.f.requestWindowFeature(1);
                break;
        }
        return this.f != null ? (LayoutInflater) this.f.getContext().getSystemService("layout_inflater") : (LayoutInflater) this.C.getSystemService("layout_inflater");
    }

    public void b() {
        a(true);
    }

    public Dialog c() {
        return this.f;
    }

    public Dialog c(Bundle bundle) {
        return new Dialog(k(), d());
    }

    public int d() {
        return this.b;
    }

    public void d(Bundle bundle) {
        super.d(bundle);
        if (this.d) {
            View p = p();
            if (p == null || p.getParent() == null) {
                this.f.setContentView(p);
            } else {
                throw new IllegalStateException("DialogFragment can not be attached to a container view");
            }
            this.f.setOwnerActivity(k());
            this.f.setCancelable(this.c);
            this.f.setOnCancelListener(this);
            this.f.setOnDismissListener(this);
            if (bundle != null) {
                Bundle bundle2 = bundle.getBundle("android:savedDialogState");
                if (bundle2 != null) {
                    this.f.onRestoreInstanceState(bundle2);
                }
            }
        }
    }

    public void e_() {
        super.e();
        if (!this.i && !this.h) {
            this.h = true;
        }
    }

    public void e_(Bundle bundle) {
        super.e(bundle);
        if (this.f != null) {
            Bundle onSaveInstanceState = this.f.onSaveInstanceState();
            if (onSaveInstanceState != null) {
                bundle.putBundle("android:savedDialogState", onSaveInstanceState);
            }
        }
        if (this.a != 0) {
            bundle.putInt("android:style", this.a);
        }
        if (this.b != 0) {
            bundle.putInt("android:theme", this.b);
        }
        if (!this.c) {
            bundle.putBoolean("android:cancelable", this.c);
        }
        if (!this.d) {
            bundle.putBoolean("android:showsDialog", this.d);
        }
        if (this.e != -1) {
            bundle.putInt("android:backStackId", this.e);
        }
    }

    public void f() {
        super.f();
        if (this.f != null) {
            this.g = false;
            this.f.show();
        }
    }

    public void g() {
        super.g();
        if (this.f != null) {
            this.f.hide();
        }
    }

    public void h() {
        super.h();
        if (this.f != null) {
            this.g = true;
            this.f.dismiss();
            this.f = null;
        }
    }

    public void onCancel(DialogInterface dialogInterface) {
    }

    public void onDismiss(DialogInterface dialogInterface) {
        if (!this.g) {
            a(true);
        }
    }
}
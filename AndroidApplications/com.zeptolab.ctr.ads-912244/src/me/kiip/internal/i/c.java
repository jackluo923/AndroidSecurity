package me.kiip.internal.i;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import android.content.DialogInterface.OnShowListener;
import android.os.Bundle;
import java.util.LinkedList;
import java.util.List;
import me.kiip.sdk.Poptart;

public final class c {
    private static List a;
    private Activity b;
    private final List c;
    private OnShowListener d;
    private OnDismissListener e;

    public c() {
        this.c = a != null ? a : new LinkedList();
    }

    public static List a() {
        return a;
    }

    public static void a(List list) {
        a = list;
    }

    private void a(boolean z) {
        if (this.c.size() > 0 && g() != null) {
            Poptart poptart = (Poptart) this.c.get(0);
            if (this.d != null) {
                this.d.onShow(poptart);
            }
            poptart.setTag(Integer.valueOf(g().hashCode()));
            poptart.setOnDismissListener(new OnDismissListener() {
                public void onDismiss(DialogInterface dialogInterface) {
                    Poptart poptart = (Poptart) dialogInterface;
                    poptart.setOnDismissListener(null);
                    synchronized (c.this.c) {
                        if (c.this.e != null) {
                            c.this.e.onDismiss(poptart);
                        }
                        c.this.c.remove(0);
                        c.this.a(true);
                    }
                }
            });
            poptart.show(g(), z);
        }
    }

    private void c_(Poptart poptart) {
        poptart.setOnDismissListener(null);
        poptart.cancel();
    }

    private Activity g() {
        return this.b;
    }

    public void a(Activity activity) {
        this.b = activity;
    }

    public void a(OnDismissListener onDismissListener) {
        this.e = onDismissListener;
    }

    public void a(OnShowListener onShowListener) {
        this.d = onShowListener;
    }

    public void a(Bundle bundle) {
    }

    public void a(Poptart poptart) {
        if (poptart != null) {
            synchronized (this.c) {
                this.c.add(poptart);
                if (this.c.size() == 1) {
                    a(true);
                }
            }
        }
    }

    public void b() {
        if (this.c.size() > 0) {
            Poptart poptart = (Poptart) this.c.get(0);
            Object tag = poptart.getTag();
            if (!(!poptart.isShowing() || tag == null || tag.equals(Integer.valueOf(g().hashCode())))) {
                c(poptart);
            }
        }
        a(false);
    }

    public void b(Poptart poptart) {
        synchronized (this.c) {
            int indexOf = this.c.indexOf(poptart);
            if (indexOf > 0) {
                this.c.remove(indexOf);
            } else if (indexOf == 0) {
                ((Poptart) this.c.get(indexOf)).dismiss();
            }
        }
    }

    public void c_() {
    }

    public void d() {
        if (this.c.size() > 0) {
            Poptart poptart = (Poptart) this.c.get(0);
            Object tag = poptart.getTag();
            if (tag != null && tag.equals(Integer.valueOf(g().hashCode()))) {
                c(poptart);
            }
        }
    }

    public void e() {
        if (this.c != a) {
            this.c.clear();
        }
    }

    public void f() {
        this.b = null;
    }
}
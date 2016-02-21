package org.acra.c.a.a.a;

import android.app.Activity;
import android.os.Bundle;
import java.util.ArrayList;

public class d implements a {
    private static final d a;
    private ArrayList b;

    static {
        a = new d();
    }

    private d() {
        this.b = new ArrayList();
    }

    public static d a() {
        return a;
    }

    private Object[] b() {
        Object[] objArr = null;
        synchronized (this.b) {
            if (this.b.size() > 0) {
                objArr = this.b.toArray();
            }
        }
        return objArr;
    }

    public void a(Activity activity) {
        Object[] b = b();
        if (b != null) {
            int length = b.length;
            int i = 0;
            while (i < length) {
                ((a) b[i]).a(activity);
                i++;
            }
        }
    }

    public void a(Activity activity, Bundle bundle) {
        Object[] b = b();
        if (b != null) {
            int length = b.length;
            int i = 0;
            while (i < length) {
                ((a) b[i]).a(activity, bundle);
                i++;
            }
        }
    }

    void a(a aVar) {
        synchronized (this.b) {
            this.b.add(aVar);
        }
    }

    public void b(Activity activity) {
        Object[] b = b();
        if (b != null) {
            int length = b.length;
            int i = 0;
            while (i < length) {
                ((a) b[i]).b(activity);
                i++;
            }
        }
    }

    public void b(Activity activity, Bundle bundle) {
        Object[] b = b();
        if (b != null) {
            int length = b.length;
            int i = 0;
            while (i < length) {
                ((a) b[i]).b(activity, bundle);
                i++;
            }
        }
    }

    public void c(Activity activity) {
        Object[] b = b();
        if (b != null) {
            int length = b.length;
            int i = 0;
            while (i < length) {
                ((a) b[i]).c(activity);
                i++;
            }
        }
    }

    public void d_(Activity activity) {
        Object[] b = b();
        if (b != null) {
            int length = b.length;
            int i = 0;
            while (i < length) {
                ((a) b[i]).d(activity);
                i++;
            }
        }
    }

    public void e(Activity activity) {
        Object[] b = b();
        if (b != null) {
            int length = b.length;
            int i = 0;
            while (i < length) {
                ((a) b[i]).e(activity);
                i++;
            }
        }
    }
}
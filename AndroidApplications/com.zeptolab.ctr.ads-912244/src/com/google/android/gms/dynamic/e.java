package com.google.android.gms.dynamic;

import android.content.Context;
import android.os.IBinder;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.internal.er;

public abstract class e {
    private final String FC;
    private Object FD;

    public static class a extends Exception {
        public a(String str) {
            super(str);
        }

        public a(String str, Throwable th) {
            super(str, th);
        }
    }

    protected e(String str) {
        this.FC = str;
    }

    protected abstract Object d(IBinder iBinder);

    protected final Object z(Context context) {
        if (this.FD == null) {
            er.f(context);
            Context remoteContext = GooglePlayServicesUtil.getRemoteContext(context);
            if (remoteContext == null) {
                throw new a("Could not get remote context.");
            }
            try {
                this.FD = d((IBinder) remoteContext.getClassLoader().loadClass(this.FC).newInstance());
            } catch (ClassNotFoundException e) {
                throw new a("Could not load creator class.");
            } catch (InstantiationException e2) {
                throw new a("Could not instantiate creator.");
            } catch (IllegalAccessException e3) {
                throw new a("Could not access creator.");
            }
        }
        return this.FD;
    }
}
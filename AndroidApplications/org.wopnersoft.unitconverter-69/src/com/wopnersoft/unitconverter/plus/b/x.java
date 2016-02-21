package com.wopnersoft.unitconverter.plus.b;

import android.app.Application;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.net.ConnectivityManager;
import android.os.AsyncTask.Status;
import android.preference.PreferenceManager;
import android.util.Log;
import com.wopnersoft.unitconverter.plus.d.e;
import com.wopnersoft.unitconverter.plus.util.m;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Executors;

// compiled from: ProGuard
public abstract class x extends Application {
    private Map a;
    private List b;
    private List c;
    private aa d;
    private ab e;
    private Object f;
    protected SharedPreferences g;
    private Boolean h;
    private Locale i;
    private Boolean j;

    public x() {
        this.i = null;
    }

    private Boolean a() {
        if (this.e == null) {
            return Boolean.valueOf(false);
        }
        return this.e.getStatus() == Status.RUNNING ? Boolean.valueOf(true) : Boolean.valueOf(false);
    }

    private void c(String str, String str2) {
        this.b.add(String.format("* %s - %s", new Object[]{str, str2}));
    }

    public void a(aa aaVar) {
        synchronized (this) {
            if (this.d != null) {
                this.d = null;
            }
            this.d = aaVar;
            Object a_ = aaVar.a_();
            if (!(this.f == null || this.f.equals(a_))) {
                i();
            }
            this.f = a_;
        }
    }

    public void a(ab abVar) {
        if (this.e == null) {
            this.e = abVar;
            abVar.a(this);
        }
    }

    public void a(String str) {
        synchronized (this) {
            if (this.d != null) {
                try {
                    this.d.a_(str);
                } catch (Exception e) {
                    Log.e("BaseManageableApplication", "postResult", e);
                }
            }
            this.e = null;
        }
    }

    public void a(String str, Object obj) {
        synchronized (this) {
            this.a.put(str, obj);
        }
    }

    public final void a(String str, String str2) {
        try {
            Log.e(str, str2);
            c(str, str2);
        } catch (Exception e) {
        }
    }

    public final void a(String str, String str2, Throwable th) {
        try {
            Log.e(str, str2, th);
            c(str, new StringBuilder(String.valueOf(str2)).append(" ").append(th == null ? "" : th.getMessage()).toString());
        } catch (Exception e) {
        }
    }

    public Object b(String str, Object obj) {
        synchronized (this) {
            if (this.a.containsKey(str)) {
                obj = this.a.get(str);
            }
        }
        return obj;
    }

    public void b(aa aaVar) {
        synchronized (this) {
            this.d = null;
        }
    }

    public void b(Boolean bool) {
        this.j = bool;
    }

    public void b(String str, String str2) {
        this.c.add(String.format("* %s - %s", new Object[]{str, str2}));
    }

    public Boolean c(aa aaVar) {
        Boolean valueOf;
        synchronized (this) {
            Object a_ = aaVar.a_();
            if (this.f == null || !this.f.equals(a_)) {
                valueOf = Boolean.valueOf(false);
            } else {
                valueOf = a();
            }
        }
        return valueOf;
    }

    public String c() {
        if (this.b.size() == 0) {
            return "No Errors";
        }
        StringBuilder stringBuilder = new StringBuilder();
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            stringBuilder.append(new StringBuilder(String.valueOf((String) it.next())).append("\n\n").toString());
        }
        return stringBuilder.toString();
    }

    public Boolean d() {
        return this.j;
    }

    public String e() {
        if (!this.j.booleanValue()) {
            return "";
        }
        if (this.c.size() == 0) {
            return "No Debug Logs";
        }
        StringBuilder stringBuilder = new StringBuilder();
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            stringBuilder.append(new StringBuilder(String.valueOf((String) it.next())).append("\n\n").toString());
        }
        return stringBuilder.toString();
    }

    public void f() {
        this.c.clear();
    }

    public void g() {
        synchronized (this) {
            m mVar = null;
            try {
                mVar = new m(getBaseContext());
                try {
                    mVar.a();
                    a("currency_table_empty", Boolean.valueOf(mVar.c() == 0));
                    if (mVar != null) {
                        mVar.b();
                    }
                } catch (Exception e) {
                    if (mVar != null) {
                        mVar.b();
                    }
                } catch (Throwable th) {
                    mVar = mVar;
                    th = th;
                    if (mVar != null) {
                        mVar.b();
                    }
                    throw th;
                }
            } catch (Exception e2) {
                mVar = mVar;
                m mVar2;
                if (mVar2 != null) {
                    mVar2.b();
                }
            } catch (Throwable th2) {
                Throwable th3 = th2;
                if (mVar != null) {
                    mVar.b();
                }
                throw th3;
            }
        }
    }

    public SharedPreferences h() {
        return this.g;
    }

    protected void i() {
        if (a().booleanValue()) {
            try {
                this.e.a();
                Log.d("BaseManageableApplication", "killActiveDownloadIfRunning successful");
            } catch (Exception e) {
                Log.e("BaseManageableApplication", "killActiveDownloadIfRunning", e);
            }
        }
        this.e = null;
    }

    public boolean j() {
        if (Boolean.valueOf(this.g.getBoolean("currencyDisableIntCheck", false)).booleanValue()) {
            return true;
        }
        ConnectivityManager connectivityManager = (ConnectivityManager) getSystemService("connectivity");
        if (connectivityManager.getActiveNetworkInfo() != null && connectivityManager.getActiveNetworkInfo().isAvailable() && connectivityManager.getActiveNetworkInfo().isConnected()) {
            return true;
        }
        Log.d("BaseManageableApplication", "Internet Connection Not Present");
        return false;
    }

    public Boolean k() {
        e.a(this.g);
        Configuration configuration = getBaseContext().getResources().getConfiguration();
        Boolean bool = e.r;
        if (!this.h.equals(bool)) {
            Executors.defaultThreadFactory().newThread(new z(this)).start();
            return Boolean.valueOf(true);
        } else if (!bool.booleanValue() || configuration.locale.equals(Locale.US)) {
            return Boolean.valueOf(false);
        } else {
            this.i = Locale.US;
            Locale.setDefault(this.i);
            configuration.locale = this.i;
            getBaseContext().getResources().updateConfiguration(configuration, getBaseContext().getResources().getDisplayMetrics());
            return Boolean.valueOf(true);
        }
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.i != null) {
            configuration.locale = this.i;
            Locale.setDefault(this.i);
            getBaseContext().getResources().updateConfiguration(configuration, getBaseContext().getResources().getDisplayMetrics());
        }
    }

    public void onCreate() {
        super.onCreate();
        this.j = Boolean.valueOf(false);
        this.b = new ArrayList();
        this.c = new ArrayList();
        synchronized (this) {
            this.a = new HashMap();
        }
        this.g = PreferenceManager.getDefaultSharedPreferences(this);
        e.a(this.g);
        this.h = e.r;
        k();
        Executors.defaultThreadFactory().newThread(new y(this)).start();
    }

    public void onTerminate() {
        i();
        super.onTerminate();
    }
}
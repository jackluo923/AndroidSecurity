package com.IQzone.postitial;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.util.Log;
import com.IQzone.postitial.activity.backing.OverlayClosingActivityImpl;
import com.IQzone.postitial.b.a;
import com.IQzone.postitial.b.c;
import com.IQzone.postitial.b.e;
import com.IQzone.postitial.b.f;
import com.IQzone.postitial.b.g;
import com.IQzone.postitial.obfuscated.d;
import com.IQzone.postitial.obfuscated.dz;
import com.IQzone.postitial.obfuscated.ei;
import com.IQzone.postitial.obfuscated.em;
import com.IQzone.postitial.obfuscated.es;
import com.IQzone.postitial.obfuscated.et;
import com.IQzone.postitial.obfuscated.eu;
import com.IQzone.postitial.obfuscated.ew;
import com.IQzone.postitial.obfuscated.ez;
import com.IQzone.postitial.obfuscated.fb;
import com.IQzone.postitial.obfuscated.ff;
import com.IQzone.postitial.obfuscated.fg;
import com.IQzone.postitial.obfuscated.fi;
import com.IQzone.postitial.obfuscated.fk;
import com.IQzone.postitial.obfuscated.fl;
import com.IQzone.postitial.obfuscated.fm;
import com.IQzone.postitial.obfuscated.fn;
import com.IQzone.postitial.obfuscated.fp;
import com.IQzone.postitial.obfuscated.fr;
import com.IQzone.postitial.obfuscated.ft;
import com.IQzone.postitial.obfuscated.gv;
import com.IQzone.postitial.obfuscated.jg;
import com.IQzone.postitial.obfuscated.la;
import com.IQzone.postitial.obfuscated.lz;
import com.IQzone.postitial.obfuscated.mv;
import com.IQzone.postitial.obfuscated.mx;
import com.IQzone.postitial.obfuscated.n;
import com.IQzone.postitial.obfuscated.op;
import com.IQzone.postitial.obfuscated.os;
import com.IQzone.postitial.obfuscated.ot;
import com.IQzone.postitial.obfuscated.ou;
import com.IQzone.postitial.obfuscated.pc;
import com.IQzone.postitial.obfuscated.pj;
import com.IQzone.postitial.obfuscated.pm;
import com.IQzone.postitial.obfuscated.pn;
import com.IQzone.postitial.obfuscated.pp;
import com.IQzone.postitial.obfuscated.pq;
import com.IQzone.postitial.obfuscated.ps;
import com.IQzone.postitial.obfuscated.pu;
import com.IQzone.postitial.obfuscated.pw;
import com.IQzone.postitial.obfuscated.py;
import com.IQzone.postitial.obfuscated.ql;
import com.google.android.gms.cast.Cast;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.millennialmedia.android.MMException;
import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class b {
    private static final ql a;
    private static b b;
    private static long i;
    private final es c;
    private a d;
    private eu e;
    private gv f;
    private n g;
    private la h;

    static {
        a = new ql();
        i = System.currentTimeMillis() - 86400000;
    }

    private b(Context context, String str, String str2) {
        this.c = new es();
        try {
            ei.a();
            ql qlVar = a;
            Handler mvVar = new mv(Looper.getMainLooper());
            ExecutorService newFixedThreadPool = Executors.newFixedThreadPool(MMException.REQUEST_BAD_RESPONSE);
            Executor nrVar = executor;
            File dir = context.getDir("postitial-configuration", AccessibilityNodeInfoCompat.ACTION_PASTE);
            ou pmVar = new pm(new pm(new pc(new File(dir, i.a), new File(dir, "temp")), new os(new op())), new ot());
            ou plVar = ouVar;
            this.e = new eu();
            this.g = new n();
            pq psVar = new ps(new pn(new jg(context, mvVar, OverlayClosingActivityImpl.class, this.g, new ew(this), new fl(this), new fm(this)), new pj(), new pj()));
            pw pyVar = new py(new pu());
            mx fvVar = mxVar;
            b bVar = this;
            Executor executor2 = executor;
            fvVar = mxVar;
            bVar = this;
            executor2 = executor;
            fvVar = mxVar;
            bVar = this;
            executor2 = executor;
            this.h = new la(context, executor, psVar, this.g, new fn(this, executor), new fp(this, executor), new fr(this, executor), new ft(this, executor), mxVar, mxVar, ouVar, this.c, mxVar, true);
            qlVar = a;
            es esVar = this.c;
            la laVar = this.h;
            n nVar = this.g;
            this.f = new gv(context, ouVar, str, esVar, laVar, executor, str2);
            qlVar = a;
            this.e.a(dz.a, this.h);
            qlVar = a;
            this.d = new et(new em(context, this.e, new ez(this, executor, pyVar), new fb(this, executor, pyVar, mvVar), new ff(this)), new fg(this, context, str2, str));
        } catch (Throwable th) {
            b(th, context, str2, str);
            qlVar = a;
            this.d = null;
            this.e = null;
            this.f = null;
            this.g = null;
            this.h = null;
        }
    }

    public static final synchronized b a(Context context) {
        ql qlVar;
        b bVar;
        synchronized (b.class) {
            if (b == null) {
                Context applicationContext;
                try {
                    String str;
                    qlVar = a;
                    new StringBuilder("initializing ").append(context).toString();
                    applicationContext = context.getApplicationContext();
                    qlVar = a;
                    new StringBuilder("context ").append(context.getApplicationContext()).toString();
                    List arrayList = new ArrayList();
                    arrayList.add("android.permission.INTERNET");
                    arrayList.add("android.permission.ACCESS_NETWORK_STATE");
                    arrayList.add("android.permission.SYSTEM_ALERT_WINDOW");
                    arrayList.add("android.permission.GET_TASKS");
                    arrayList.add("android.permission.READ_PHONE_STATE");
                    arrayList.add("android.permission.WRITE_EXTERNAL_STORAGE");
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        str = (String) it.next();
                        if (applicationContext.checkCallingOrSelfPermission(str) != 0) {
                            Log.e("Postitial", new StringBuilder("YOU NEED TO ADD PERMISSION:").append(str).toString());
                        }
                    }
                    ApplicationInfo applicationInfo = applicationContext.getPackageManager().getApplicationInfo(applicationContext.getPackageName(), Cast.MAX_NAMESPACE_LENGTH);
                    if (applicationInfo.metaData == null) {
                        throw new RuntimeException(new StringBuilder("<Postitial><2>, IQZoneAds not initialized properly! Check the manifest configuration! context=").append(applicationContext).append(" appToken=").append(null).toString());
                    }
                    str = (String) applicationInfo.metaData.get("postitial-app-id");
                    if (applicationContext == null || str == null) {
                        throw new RuntimeException(new StringBuilder("<Postitial><3>, IQZoneAds not initialized properly! Check the manifest configuration! context=").append(applicationContext).append(" appToken=").append(str).toString());
                    }
                    String string;
                    if (str.equals("wizard-configured")) {
                        SharedPreferences sharedPreferences = applicationContext.getSharedPreferences("wizard-config", 0);
                        str = sharedPreferences.getString("application-token", null);
                        string = sharedPreferences.getString("environment", null);
                        if (str == null || string == null) {
                            throw new RuntimeException("<Postitial><4>, you must specify environment and app id.");
                        }
                    } else {
                        string = "undefined";
                    }
                    b = new b(applicationContext, str, string);
                } catch (NameNotFoundException e) {
                    e.printStackTrace();
                    throw new RuntimeException(new StringBuilder("<Postitial><1>, Could not retrieve package info: context=").append(applicationContext).toString());
                } catch (Throwable th) {
                    qlVar = a;
                }
            }
            bVar = b;
        }
        return bVar;
    }

    private static void b_(Throwable th, Context context, String str, String str2) {
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - i >= 86400000) {
            i = currentTimeMillis;
            ql qlVar = a;
            qlVar = a;
            try {
                pp ppVar;
                Set hashSet = new HashSet();
                hashSet.add("postitial-configuration/postitial-assets");
                hashSet.add("postitial-configuration/positial-config-job-cache");
                hashSet.add("postitial-configuration/positial-config-list-cache");
                hashSet.add("postitial-configuration");
                hashSet.add("postitial-configuration/positial-log-impression-job-cache");
                hashSet.add("postitial-configuration/positial-log-impression-list-cache");
                hashSet.add("postitial-configuration/positial-log-suitable-job-cache");
                hashSet.add("postitial-configuration/positial-log-suitable-list-cache");
                hashSet.add("postitial-configuration/positial-log-requested-job-cache");
                hashSet.add("postitial-configuration/positial-log-requested-list-cache");
                hashSet.add("postitial-configuration/positial-log-retrieved-job-cache");
                hashSet.add("postitial-configuration/positial-log-retrieved-list-cache");
                hashSet.add("postitial-configuration/positial-log-timeout-job-cache");
                hashSet.add("postitial-configuration/positial-log-timeout-list-cache");
                Iterator it = hashSet.iterator();
                while (it.hasNext()) {
                    File a = d.a((String) it.next(), context, AccessibilityNodeInfoCompat.ACTION_PASTE);
                    if (!a.delete()) {
                        a.deleteOnExit();
                    }
                }
                String str3 = (String) context.getPackageManager().getApplicationInfo(context.getPackageName(), Cast.MAX_NAMESPACE_LENGTH).metaData.get("postitial-environment-name");
                if (str3 != null && str.equals("undefined")) {
                    ppVar = new lz(str3);
                } else if (str.equals("undefined")) {
                    ppVar = new lz(AdTrackerConstants.BLANK);
                } else {
                    ppVar = new lz(str);
                }
                new Thread(new fi(th, ppVar, str2)).start();
            } catch (NameNotFoundException e) {
                e.printStackTrace();
                throw new RuntimeException(new StringBuilder("<Postitial><10>, Could not retrieve package info: context=").append(context).toString());
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
        }
    }

    public n a() {
        return this.g;
    }

    public void a(a aVar) {
        if (this.h != null) {
            this.h.a(aVar);
        }
    }

    public void a(com.IQzone.postitial.b.b bVar) {
        if (this.h != null) {
            this.h.a(bVar);
        }
    }

    public void a(c cVar) {
        if (this.h != null) {
            this.h.a(cVar);
        }
    }

    public void a(com.IQzone.postitial.b.d dVar) {
        if (this.h != null) {
            this.h.a(dVar);
        }
    }

    public void a(e eVar) {
        if (this.h != null) {
            this.h.a(eVar);
        }
    }

    public void a(f fVar) {
        if (this.h != null) {
            this.h.a(fVar);
        }
    }

    public void a(g gVar) {
        if (this.h != null) {
            this.h.a(gVar);
        }
    }

    public a b_() {
        return this.d == null ? new fk(this) : this.d;
    }

    public String c() {
        return ei.c();
    }

    public String d() {
        return this.f == null ? "0" : this.f.d();
    }
}
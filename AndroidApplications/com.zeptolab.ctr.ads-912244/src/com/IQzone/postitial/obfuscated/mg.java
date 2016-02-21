package com.IQzone.postitial.obfuscated;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.app.ActivityManager.RunningTaskInfo;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;

public class mg {
    private static final ql a;
    private static final Set b;
    private static final Set c;

    static {
        a = new ql();
        Set hashSet = new HashSet();
        b = hashSet;
        hashSet.add("com.android.systemui.recent.RecentAppFxActivity".toLowerCase(Locale.getDefault()));
        b.add("com.sec.android.app.controlpanel.activity.JobManagerActivity".toLowerCase(Locale.getDefault()));
        b.add("com.android.systemui.recent.RecentsActivity".toLowerCase(Locale.getDefault()));
        hashSet = new HashSet();
        c = hashSet;
        hashSet.add("com.motorola.blur.home.HomeActivity");
        c.add("com.htc.launcher.Launcher");
        c.add("com.motorola.mmsp.threed.motohome.HomeActivity");
        c.add("com.facebook.dash.activities.DashActivity");
        c.add("com.jiubang.ggheart.apps.desks.diy.GoLauncher");
        c.add("net.pierrox.lightning_launcher.activities.Dashboard");
        c.add("info.tikusoft.launcher7.MainScreen");
        c.add("ginlemon.flower.Workspace");
        c.add("com.nemustech.regina.ReginaLauncher");
        c.add("com.lx.launcher8.AnallLauncher");
        c.add("com.vire.launcher.VireLauncher");
    }

    public static mh a(String str, Context context) {
        Set hashSet;
        synchronized (c) {
            hashSet = new HashSet(c);
        }
        return a(str, context, hashSet);
    }

    public static mh a(String str, Context context, Set set) {
        boolean z;
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        List runningTasks = activityManager.getRunningTasks(Integer.MAX_VALUE);
        int i = -1;
        boolean z2 = false;
        boolean z3 = false;
        int i2 = 0;
        boolean z4 = false;
        synchronized (b) {
            Set hashSet = new HashSet(b);
        }
        z = runningTasks.size() > 0 && hashSet.contains(((RunningTaskInfo) runningTasks.get(0)).baseActivity.getClassName().toLowerCase(Locale.getDefault()));
        if (!((RunningTaskInfo) runningTasks.get(0)).baseActivity.getClassName().endsWith(".Launcher") && !((RunningTaskInfo) runningTasks.get(0)).baseActivity.getClassName().endsWith(".home.HomeActivity")) {
            String className = ((RunningTaskInfo) runningTasks.get(0)).baseActivity.getClassName();
            Iterator it = set.iterator();
            while (it.hasNext()) {
                if (className.contains((String) it.next())) {
                    z4 = true;
                    break;
                }
            }
        } else {
            z4 = true;
        }
        if (((RunningTaskInfo) runningTasks.get(0)).baseActivity.getClassName().equals(str) || ((RunningTaskInfo) runningTasks.get(0)).topActivity.getClassName().equals(str)) {
            z3 = true;
        }
        ql qlVar = a;
        new StringBuilder("base task activity: ").append(((RunningTaskInfo) runningTasks.get(0)).baseActivity.getClassName()).toString();
        Object obj = null;
        Set hashSet2 = new HashSet();
        Set hashSet3 = new HashSet();
        boolean z5 = 0;
        Iterator it2 = runningTasks.iterator();
        boolean z6 = false;
        while (it2.hasNext()) {
            RunningTaskInfo runningTaskInfo = (RunningTaskInfo) it2.next();
            if ((runningTaskInfo.baseActivity.getClassName().equals(str) || runningTaskInfo.topActivity.getClassName().equals(str)) && i == 0) {
                z5 = 1;
                i = runningTaskInfo.id;
                if (obj == null) {
                    obj = runningTaskInfo.baseActivity.getClassName().equals(str) ? runningTaskInfo.baseActivity.getPackageName() : runningTaskInfo.topActivity.getPackageName();
                }
                if (runningTaskInfo.baseActivity.getPackageName().equals(obj)) {
                    hashSet2.add(Integer.valueOf(runningTaskInfo.id));
                }
                if (runningTaskInfo.topActivity.getPackageName().equals(obj)) {
                    hashSet3.add(Integer.valueOf(runningTaskInfo.id));
                }
                if (runningTaskInfo.baseActivity.getClassName().equals(str)) {
                    z6 = true;
                }
                i2 = runningTaskInfo.numActivities;
                if (runningTaskInfo.numRunning != 0) {
                    z2 = true;
                }
                ql qlVar2 = a;
                new StringBuilder("tasK:id:").append(runningTaskInfo.id).toString();
                qlVar2 = a;
                new StringBuilder("tasK:numActivities:").append(runningTaskInfo.numActivities).toString();
                qlVar2 = a;
                new StringBuilder("tasK:numRunning:").append(runningTaskInfo.numRunning).toString();
                qlVar2 = a;
                new StringBuilder("tasK:baseClassName:").append(runningTaskInfo.baseActivity.getClassName()).toString();
                qlVar2 = a;
                new StringBuilder("tasK:basePackageName:").append(runningTaskInfo.baseActivity.getPackageName()).toString();
                qlVar2 = a;
                new StringBuilder("tasK:description:").append(runningTaskInfo.description).toString();
                qlVar2 = a;
                new StringBuilder("tasK:topClassName:").append(runningTaskInfo.topActivity.getClassName()).toString();
                qlVar2 = a;
                new StringBuilder("tasK:topPackageName:").append(runningTaskInfo.topActivity.getPackageName()).toString();
            }
            int i3 = i3;
            z6 = z6;
        }
        z5 = false;
        boolean z7 = false;
        boolean z8 = false;
        boolean z9 = 0;
        Iterator it3 = activityManager.getRunningAppProcesses().iterator();
        while (it3.hasNext()) {
            RunningAppProcessInfo runningAppProcessInfo = (RunningAppProcessInfo) it3.next();
            ql qlVar3 = a;
            String str2 = runningAppProcessInfo.processName;
            if (runningAppProcessInfo.processName.equals(context.getPackageName()) && i == 0) {
                z9 = 1;
                if (runningAppProcessInfo.importance == 400) {
                    z7 = true;
                } else if (runningAppProcessInfo.importance == 200) {
                    z5 = true;
                } else if (runningAppProcessInfo.importance == 100) {
                    z8 = true;
                }
                qlVar3 = a;
                new StringBuilder("process:name:").append(runningAppProcessInfo.processName).toString();
                qlVar3 = a;
                new StringBuilder("process:importance:").append(runningAppProcessInfo.importance).toString();
                qlVar3 = a;
                new StringBuilder("process:importanceReasonCode:").append(runningAppProcessInfo.importanceReasonCode).toString();
                qlVar3 = a;
                new StringBuilder("process:importanceReasonPid:").append(runningAppProcessInfo.importanceReasonPid).toString();
                qlVar3 = a;
                new StringBuilder("process:lru:").append(runningAppProcessInfo.lru).toString();
                qlVar3 = a;
                new StringBuilder("process:pid:").append(runningAppProcessInfo.pid).toString();
                qlVar3 = a;
                new StringBuilder("process:uid:").append(runningAppProcessInfo.uid).toString();
                qlVar3 = a;
                new StringBuilder("process:importanceReasonComponent:").append(runningAppProcessInfo.importanceReasonComponent).toString();
                String[] strArr = runningAppProcessInfo.pkgList;
                int i4 = strArr.length;
                int i5 = 0;
                while (i5 < i4) {
                    String str3 = strArr[i5];
                    ql qlVar4 = a;
                    new StringBuilder("process:pkg:").append(str3).toString();
                    i5++;
                }
            }
            int i6 = i6;
        }
        ql qlVar5 = a;
        new StringBuilder("isRoot: ").append(z6).toString();
        qlVar5 = a;
        new StringBuilder("isForeground: ").append(z8).toString();
        qlVar5 = a;
        new StringBuilder("isBackground: ").append(z7).toString();
        qlVar5 = a;
        new StringBuilder("isVisible: ").append(z5).toString();
        qlVar5 = a;
        new StringBuilder("isRunning: ").append(z2).toString();
        qlVar5 = a;
        new StringBuilder("activityCount: ").append(i2).toString();
        return new mh(z8, z7, z5, z2, i2, z, z4, hashSet2, hashSet3, z3, i, (byte) 0);
    }

    public static void a(Runnable runnable, Handler handler) {
        if (a()) {
            runnable.run();
        } else {
            handler.post(runnable);
        }
    }

    public static boolean a() {
        return Looper.getMainLooper() == Looper.myLooper();
    }
}
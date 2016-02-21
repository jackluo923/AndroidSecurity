package com.google.android.gms.analytics;

import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import com.millennialmedia.android.MMException;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.TreeSet;

public class StandardExceptionParser implements ExceptionParser {
    private final TreeSet uo;

    public StandardExceptionParser(Context context, Collection collection) {
        this.uo = new TreeSet();
        setIncludedPackages(context, collection);
    }

    protected StackTraceElement getBestStackTraceElement(Throwable th) {
        StackTraceElement[] stackTrace = th.getStackTrace();
        if (stackTrace == null || stackTrace.length == 0) {
            return null;
        }
        int length = stackTrace.length;
        int i = 0;
        while (i < length) {
            StackTraceElement stackTraceElement = stackTrace[i];
            String className = stackTraceElement.getClassName();
            Iterator it = this.uo.iterator();
            while (it.hasNext()) {
                if (className.startsWith((String) it.next())) {
                    return stackTraceElement;
                }
            }
            i++;
        }
        return stackTrace[0];
    }

    protected Throwable getCause(Throwable th) {
        while (th.getCause() != null) {
            th = th.getCause();
        }
        return th;
    }

    public String getDescription(String str, Throwable th) {
        return getDescription(getCause(th), getBestStackTraceElement(getCause(th)), str);
    }

    protected String getDescription(Throwable th, StackTraceElement stackTraceElement, String str) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(th.getClass().getSimpleName());
        if (stackTraceElement != null) {
            String[] split = stackTraceElement.getClassName().split("\\.");
            String str2 = DeviceInfo.ORIENTATION_UNKNOWN;
            if (split != null && split.length > 0) {
                str2 = split[split.length - 1];
            }
            stringBuilder.append(String.format(" (@%s:%s:%s)", new Object[]{str2, stackTraceElement.getMethodName(), Integer.valueOf(stackTraceElement.getLineNumber())}));
        }
        if (str != null) {
            stringBuilder.append(String.format(" {%s}", new Object[]{str}));
        }
        return stringBuilder.toString();
    }

    public void setIncludedPackages(Context context, Collection collection) {
        this.uo.clear();
        Set hashSet = new HashSet();
        if (collection != null) {
            hashSet.addAll(collection);
        }
        if (context != null) {
            try {
                String packageName = context.getApplicationContext().getPackageName();
                this.uo.add(packageName);
                ActivityInfo[] activityInfoArr = context.getApplicationContext().getPackageManager().getPackageInfo(packageName, MMException.REQUEST_BAD_RESPONSE).activities;
                if (activityInfoArr != null) {
                    int length = activityInfoArr.length;
                    int i = 0;
                    while (i < length) {
                        hashSet.add(activityInfoArr[i].packageName);
                        i++;
                    }
                }
            } catch (NameNotFoundException e) {
                aa.u("No package found");
            }
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            packageName = (String) it.next();
            Iterator it2 = this.uo.iterator();
            int i2 = 1;
            while (it2.hasNext()) {
                String str = (String) it2.next();
                if (!packageName.startsWith(str)) {
                    if (str.startsWith(packageName)) {
                        this.uo.remove(str);
                        break;
                    }
                } else {
                    boolean z = false;
                }
            }
            if (i2 != 0) {
                this.uo.add(packageName);
            }
        }
    }
}
package me.kiip.internal.b;

import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.http.AndroidHttpClient;
import android.os.Build.VERSION;
import java.io.File;
import me.kiip.internal.a.m;

public class l {
    public static m a(Context context, f fVar) {
        File file = new File(context.getCacheDir(), "volley");
        String str = "volley/0";
        try {
            String packageName = context.getPackageName();
            str = packageName + "/" + context.getPackageManager().getPackageInfo(packageName, 0).versionCode;
        } catch (NameNotFoundException e) {
        }
        if (fVar == null) {
            fVar = VERSION.SDK_INT >= 9 ? new g() : new d(AndroidHttpClient.newInstance(str));
        }
        m mVar = new m(new c(file), new a(fVar));
        mVar.a();
        return mVar;
    }
}
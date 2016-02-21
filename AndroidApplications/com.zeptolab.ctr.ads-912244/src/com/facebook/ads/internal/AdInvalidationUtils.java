package com.facebook.ads.internal;

import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.json.JSONArray;

public class AdInvalidationUtils {
    public static boolean isNativePackageInstalled(Context context, String str) {
        if (StringUtils.isNullOrEmpty(str)) {
            return false;
        }
        try {
            context.getPackageManager().getPackageInfo(str, 1);
            return true;
        } catch (NameNotFoundException e) {
            return false;
        }
    }

    public static Collection parseDetectionStrings(JSONArray jSONArray) {
        if (jSONArray == null || jSONArray.length() == 0) {
            return null;
        }
        Set hashSet = new HashSet();
        int i = 0;
        while (i < jSONArray.length()) {
            hashSet.add(jSONArray.optString(i));
            i++;
        }
        return hashSet;
    }

    public static boolean shouldInvalidate(Context context, AdDataModel adDataModel) {
        boolean z = 1;
        AdInvalidationBehavior invalidationBehavior = adDataModel.getInvalidationBehavior();
        if (invalidationBehavior == null || invalidationBehavior == AdInvalidationBehavior.NONE) {
            return false;
        }
        Collection detectionStrings = adDataModel.getDetectionStrings();
        if (detectionStrings == null || detectionStrings.isEmpty()) {
            return false;
        }
        boolean z2;
        Iterator it = detectionStrings.iterator();
        while (it.hasNext()) {
            if (isNativePackageInstalled(context, (String) it.next())) {
                z2 = true;
                break;
            }
        }
        z2 = false;
        if (invalidationBehavior == AdInvalidationBehavior.INSTALLED) {
            return z2;
        }
        if (invalidationBehavior != AdInvalidationBehavior.NOT_INSTALLED) {
            return false;
        }
        if (z2) {
            z = false;
        }
        return z;
    }
}
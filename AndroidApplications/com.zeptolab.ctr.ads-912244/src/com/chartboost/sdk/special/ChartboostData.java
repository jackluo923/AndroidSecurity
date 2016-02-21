package com.chartboost.sdk.special;

import com.chartboost.sdk.Chartboost;
import com.chartboost.sdk.Chartboost.CBAPIResponseCallback;
import com.chartboost.sdk.Libraries.CBUtility;
import com.chartboost.sdk.Model.CBError.CBImpressionError;
import java.lang.reflect.Method;

public final class ChartboostData {
    public static void get(String str, CBAPIResponseCallback cBAPIResponseCallback) {
        Chartboost sharedChartboost = Chartboost.sharedChartboost();
        try {
            Method declaredMethod = Chartboost.class.getDeclaredMethod("cacheInterstitialData", new Class[]{String.class, CBAPIResponseCallback.class});
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(sharedChartboost, new Object[]{str, cBAPIResponseCallback});
        } catch (Exception e) {
            CBUtility.throwProguardError(e);
            if (cBAPIResponseCallback != null) {
                cBAPIResponseCallback.onFailure(CBImpressionError.INTERNAL);
            }
        }
    }

    public static void getBatch(String str, int i, CBAPIResponseCallback cBAPIResponseCallback) {
        Chartboost sharedChartboost = Chartboost.sharedChartboost();
        try {
            Method declaredMethod = Chartboost.class.getDeclaredMethod("cacheInterstitialDataBatch", new Class[]{String.class, Integer.TYPE, CBAPIResponseCallback.class});
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(sharedChartboost, new Object[]{str, Integer.valueOf(i), cBAPIResponseCallback});
        } catch (Exception e) {
            CBUtility.throwProguardError(e);
            if (cBAPIResponseCallback != null) {
                cBAPIResponseCallback.onFailure(CBImpressionError.INTERNAL);
            }
        }
    }

    public static void show(String str, CBAPIResponseCallback cBAPIResponseCallback) {
        Chartboost sharedChartboost = Chartboost.sharedChartboost();
        try {
            Method declaredMethod = Chartboost.class.getDeclaredMethod("showInterstitialData", new Class[]{String.class, CBAPIResponseCallback.class});
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(sharedChartboost, new Object[]{str, cBAPIResponseCallback});
        } catch (Exception e) {
            CBUtility.throwProguardError(e);
            if (cBAPIResponseCallback != null) {
                cBAPIResponseCallback.onFailure(CBImpressionError.INTERNAL);
            }
        }
    }
}
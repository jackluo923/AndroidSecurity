package com.admarvel.android.ads;

import android.content.Context;
import android.os.AsyncTask;
import android.util.Log;
import com.admarvel.android.ads.AdMarvelAd.AdType;
import com.admarvel.android.ads.AdMarvelUtils.ErrorReason;
import com.admarvel.android.util.Logging;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

class n extends AsyncTask {
    private Map a;
    private WeakReference b;
    private final WeakReference c;
    private final File d;

    public n(File file, Context context) {
        this.a = new HashMap();
        this.d = file;
        this.c = new WeakReference(context);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected com.admarvel.android.ads.AdMarvelAd a(java.lang.Object... r21) {
        throw new UnsupportedOperationException("Method not decompiled: com.admarvel.android.ads.n.a(java.lang.Object[]):com.admarvel.android.ads.AdMarvelAd");
        /*
        r20 = this;
        r1 = 0;
        r1 = r21[r1];
        r2 = r1;
        r2 = (java.util.Map) r2;
        r1 = 1;
        r8 = r21[r1];
        r8 = (java.lang.String) r8;
        r1 = 2;
        r9 = r21[r1];
        r9 = (java.lang.String) r9;
        r1 = 3;
        r4 = r21[r1];
        r4 = (java.lang.String) r4;
        r1 = 4;
        r1 = r21[r1];
        r1 = (java.lang.Integer) r1;
        r5 = r1.intValue();
        r1 = 5;
        r6 = r21[r1];
        r6 = (java.lang.String) r6;
        r3 = new java.lang.ref.WeakReference;
        r1 = 6;
        r1 = r21[r1];
        r1 = (com.admarvel.android.ads.AdMarvelView) r1;
        r3.<init>(r1);
        r0 = r20;
        r0.b = r3;
        r1 = 7;
        r1 = r21[r1];
        r1 = (java.lang.Integer) r1;
        r10 = r1.intValue();
        r1 = 8;
        r11 = r21[r1];
        r11 = (java.lang.String) r11;
        r1 = 9;
        r13 = r21[r1];
        r13 = (android.os.Handler) r13;
        r1 = 10;
        r1 = r21[r1];
        r14 = r1;
        r14 = (java.lang.Boolean) r14;
        r1 = 11;
        r1 = r21[r1];
        r15 = r1;
        r15 = (java.lang.Boolean) r15;
        r1 = new com.admarvel.android.ads.AdFetcher;
        r1.<init>();
        r0 = r20;
        r3 = r0.c;
        r3 = r3.get();
        r3 = (android.content.Context) r3;
        if (r3 == 0) goto L_0x01f9;
    L_0x0065:
        if (r2 == 0) goto L_0x0070;
    L_0x0067:
        monitor-enter(r2);	 Catch:{ Exception -> 0x017d }
        r0 = r20;
        r7 = r0.a;	 Catch:{ all -> 0x017a }
        r7.putAll(r2);	 Catch:{ all -> 0x017a }
        monitor-exit(r2);	 Catch:{ all -> 0x017a }
    L_0x0070:
        r2 = "com.admarvel.android.admarvelmologiqadapter.AdMarvelMologiqAdapter";
        r2 = com.admarvel.android.ads.AdMarvelAnalyticsAdapterInstances.getInstance(r2, r3);	 Catch:{ Exception -> 0x0185 }
        r0 = r20;
        r7 = r0.a;	 Catch:{ Exception -> 0x0185 }
        r2 = r2.getEnhancedTargetParams(r9, r7);	 Catch:{ Exception -> 0x0185 }
    L_0x007e:
        if (r2 == 0) goto L_0x0094;
    L_0x0080:
        r0 = r20;
        r7 = r0.a;	 Catch:{ Exception -> 0x018f }
        if (r7 == 0) goto L_0x0189;
    L_0x0086:
        r0 = r20;
        r7 = r0.a;	 Catch:{ Exception -> 0x018f }
        r2.putAll(r7);	 Catch:{ Exception -> 0x018f }
        r0 = r20;
        r7 = r0.a;	 Catch:{ Exception -> 0x018f }
        r7.putAll(r2);	 Catch:{ Exception -> 0x018f }
    L_0x0094:
        r16 = 0;
        r0 = r20;
        r2 = r0.b;
        if (r2 == 0) goto L_0x0199;
    L_0x009c:
        r0 = r20;
        r2 = r0.b;
        r2 = r2.get();
        r2 = (com.admarvel.android.ads.AdMarvelView) r2;
    L_0x00a6:
        if (r2 == 0) goto L_0x00ac;
    L_0x00a8:
        r16 = r2.a();
    L_0x00ac:
        r2 = com.admarvel.android.ads.AdMarvelView.b;
        if (r2 == 0) goto L_0x019c;
    L_0x00b0:
        r2 = com.admarvel.android.ads.AdFetcher.Adtype.BANNER;
        r0 = r20;
        r7 = r0.a;
        r12 = 0;
        r14 = r14.booleanValue();
        r15 = r15.booleanValue();
        r11 = r1.fetchOfflineAd(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15);
    L_0x00c3:
        r10 = new com.admarvel.android.ads.AdMarvelAd;
        r0 = r20;
        r12 = r0.a;
        r18 = 0;
        r19 = r3.getPackageName();
        r13 = r8;
        r14 = r9;
        r15 = r4;
        r16 = r5;
        r17 = r6;
        r10.<init>(r11, r12, r13, r14, r15, r16, r17, r18, r19);
        r2 = com.admarvel.android.ads.AdMarvelUtils.isLogDumpEnabled();
        if (r2 == 0) goto L_0x00e6;
    L_0x00df:
        r1 = r1.getRequestJson();
        r10.setRequestJson(r1);
    L_0x00e6:
        r1 = com.admarvel.android.ads.AdMarvelView.b;
        if (r1 == 0) goto L_0x0143;
    L_0x00ea:
        r1 = "admarvel_preferences";
        r2 = 0;
        r1 = r3.getSharedPreferences(r1, r2);
        r2 = "banner_folder";
        r3 = "NULL";
        r2 = r1.getString(r2, r3);
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r4 = "file://";
        r3 = r3.append(r4);
        r4 = "childDirectory";
        r5 = "NULL";
        r4 = r1.getString(r4, r5);
        r3 = r3.append(r4);
        r4 = "/";
        r3 = r3.append(r4);
        r3 = r3.append(r2);
        r3 = r3.toString();
        r10.setOfflineBaseUrl(r3);
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r4 = "childDirectory";
        r5 = "NULL";
        r1 = r1.getString(r4, r5);
        r1 = r3.append(r1);
        r3 = "/";
        r1 = r1.append(r3);
        r1 = r1.append(r2);
        r1 = r1.toString();
        r10.setOfflinekeyUrl(r1);
    L_0x0143:
        if (r11 == 0) goto L_0x01ee;
    L_0x0145:
        r0 = r20;
        r1 = r0.d;	 Catch:{ Exception -> 0x01c4 }
        r2 = r10.loadAd(r1);	 Catch:{ Exception -> 0x01c4 }
        if (r2 == 0) goto L_0x01e3;
    L_0x014f:
        r1 = r10.getSdkNetwork();	 Catch:{ Exception -> 0x01c4 }
        if (r1 == 0) goto L_0x0179;
    L_0x0155:
        r1 = r10.getSdkNetwork();	 Catch:{ Exception -> 0x01c4 }
        r1 = r1.length();	 Catch:{ Exception -> 0x01c4 }
        if (r1 <= 0) goto L_0x0179;
    L_0x015f:
        r0 = r20;
        r1 = r0.b;	 Catch:{ Exception -> 0x01b1 }
        r1 = r1.get();	 Catch:{ Exception -> 0x01b1 }
        r1 = (com.admarvel.android.ads.AdMarvelView) r1;	 Catch:{ Exception -> 0x01b1 }
        if (r1 == 0) goto L_0x0179;
    L_0x016b:
        r1 = r1.c;	 Catch:{ Exception -> 0x01b1 }
        r3 = r10.getSdkNetwork();	 Catch:{ Exception -> 0x01b1 }
        r1 = com.admarvel.android.ads.AdMarvelAdapterInstances.getInstance(r1, r3);	 Catch:{ Exception -> 0x01b1 }
        r10 = r1.loadAd(r10, r2);	 Catch:{ Exception -> 0x01b1 }
    L_0x0179:
        return r10;
    L_0x017a:
        r7 = move-exception;
        monitor-exit(r2);	 Catch:{ all -> 0x017a }
        throw r7;	 Catch:{ Exception -> 0x017d }
    L_0x017d:
        r2 = move-exception;
        r2 = 0;
        r0 = r20;
        r0.a = r2;
        goto L_0x0070;
    L_0x0185:
        r2 = move-exception;
        r2 = 0;
        goto L_0x007e;
    L_0x0189:
        r0 = r20;
        r0.a = r2;	 Catch:{ Exception -> 0x018f }
        goto L_0x0094;
    L_0x018f:
        r2 = move-exception;
        r2 = android.util.Log.getStackTraceString(r2);
        com.admarvel.android.util.Logging.log(r2);
        goto L_0x0094;
    L_0x0199:
        r2 = 0;
        goto L_0x00a6;
    L_0x019c:
        r2 = com.admarvel.android.ads.AdFetcher.Adtype.BANNER;
        r0 = r20;
        r7 = r0.a;
        r12 = 0;
        r14 = r14.booleanValue();
        r15 = r15.booleanValue();
        r11 = r1.fetchAd(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16);
        goto L_0x00c3;
    L_0x01b1:
        r1 = move-exception;
        r1 = android.util.Log.getStackTraceString(r1);	 Catch:{ Exception -> 0x01c4 }
        com.admarvel.android.util.Logging.log(r1);	 Catch:{ Exception -> 0x01c4 }
        r1 = com.admarvel.android.ads.AdMarvelAd.AdType.ERROR;	 Catch:{ Exception -> 0x01c4 }
        r10.setAdType(r1);	 Catch:{ Exception -> 0x01c4 }
        r1 = 303; // 0x12f float:4.25E-43 double:1.497E-321;
        r10.setErrorCode(r1);	 Catch:{ Exception -> 0x01c4 }
        goto L_0x0179;
    L_0x01c4:
        r1 = move-exception;
        r1 = android.util.Log.getStackTraceString(r1);	 Catch:{ Exception -> 0x01d7 }
        com.admarvel.android.util.Logging.log(r1);	 Catch:{ Exception -> 0x01d7 }
        r1 = com.admarvel.android.ads.AdMarvelAd.AdType.ERROR;	 Catch:{ Exception -> 0x01d7 }
        r10.setAdType(r1);	 Catch:{ Exception -> 0x01d7 }
        r1 = 303; // 0x12f float:4.25E-43 double:1.497E-321;
        r10.setErrorCode(r1);	 Catch:{ Exception -> 0x01d7 }
        goto L_0x0179;
    L_0x01d7:
        r1 = move-exception;
        r1 = com.admarvel.android.ads.AdMarvelAd.AdType.ERROR;
        r10.setAdType(r1);
        r1 = 303; // 0x12f float:4.25E-43 double:1.497E-321;
        r10.setErrorCode(r1);
        goto L_0x0179;
    L_0x01e3:
        r1 = com.admarvel.android.ads.AdMarvelAd.AdType.ERROR;	 Catch:{ Exception -> 0x01c4 }
        r10.setAdType(r1);	 Catch:{ Exception -> 0x01c4 }
        r1 = 303; // 0x12f float:4.25E-43 double:1.497E-321;
        r10.setErrorCode(r1);	 Catch:{ Exception -> 0x01c4 }
        goto L_0x0179;
    L_0x01ee:
        r1 = com.admarvel.android.ads.AdMarvelAd.AdType.ERROR;	 Catch:{ Exception -> 0x01d7 }
        r10.setAdType(r1);	 Catch:{ Exception -> 0x01d7 }
        r1 = 303; // 0x12f float:4.25E-43 double:1.497E-321;
        r10.setErrorCode(r1);	 Catch:{ Exception -> 0x01d7 }
        goto L_0x0179;
    L_0x01f9:
        r10 = 0;
        goto L_0x0179;
        */
    }

    protected void a(AdMarvelAd adMarvelAd) {
        ErrorReason errorReason;
        int i = 303;
        try {
            super.onPostExecute(adMarvelAd);
            if (adMarvelAd == null) {
                adMarvelView = (AdMarvelView) this.b.get();
                if (adMarvelView != null) {
                    errorReason = Utils.getErrorReason(303);
                    adMarvelView.getListenerImpl().a(adMarvelView.getContext(), adMarvelView, Utils.getErrorCode(errorReason), errorReason, null, 0, null, AdTrackerConstants.BLANK);
                }
            } else if (adMarvelAd.getAdType() == AdType.ERROR) {
                adMarvelView = (AdMarvelView) this.b.get();
                if (adMarvelView != null) {
                    errorReason = Utils.getErrorReason(adMarvelAd.getErrorCode());
                    adMarvelView.getListenerImpl().a(adMarvelView.getContext(), adMarvelView, Utils.getErrorCode(errorReason), errorReason, adMarvelAd.getSiteId(), adMarvelAd.getId(), adMarvelAd.getTargetParams(), adMarvelAd.getIpAddress());
                }
            } else {
                AdMarvelView adMarvelView2;
                if (this.b.get() != null) {
                    adMarvelView2 = (AdMarvelView) this.b.get();
                    if (adMarvelView2 != null && adMarvelView2.a()) {
                        if (adMarvelView2.getListenerImpl() != null) {
                            adMarvelView2.getListenerImpl().a(adMarvelView2, adMarvelAd);
                            return;
                        } else {
                            return;
                        }
                    }
                }
                Context context;
                if (adMarvelAd.getAdType() == AdType.SDKCALL && adMarvelAd.getSdkNetwork() != null) {
                    adMarvelView2 = (AdMarvelView) this.b.get();
                    context = (Context) this.c.get();
                    if (adMarvelView2 != null && context != null) {
                        adMarvelView2.a(this.a, adMarvelAd, adMarvelAd.getSdkNetwork(), context);
                        return;
                    } else {
                        return;
                    }
                } else if (adMarvelAd.isDisableAdrequest()) {
                    String disableAdDuration = adMarvelAd.getDisableAdDuration();
                    if (disableAdDuration != null) {
                        adMarvelView2 = (AdMarvelView) this.b.get();
                        context = (Context) this.c.get();
                        if (adMarvelView2 != null && context != null) {
                            adMarvelView2.a(disableAdDuration, adMarvelAd, context);
                            return;
                        } else {
                            return;
                        }
                    }
                }
                adMarvelView2 = (AdMarvelView) this.b.get();
                if (adMarvelView2 != null) {
                    adMarvelView2.a(adMarvelAd);
                }
            }
        } catch (Exception e) {
            Logging.log(Log.getStackTraceString(e));
            errorReason = Utils.getErrorReason(i);
            errorCode = Utils.getErrorCode(errorReason);
            adMarvelView = (AdMarvelView) this.b.get();
            AdMarvelView adMarvelView3;
            if (adMarvelView3 != null) {
                int errorCode2;
                adMarvelView3.getListenerImpl().a(adMarvelView3.getContext(), adMarvelView3, errorCode2, errorReason, adMarvelAd.getSiteId(), adMarvelAd.getId(), adMarvelAd.getTargetParams(), adMarvelAd.getIpAddress());
            }
        }
    }

    protected /* synthetic */ Object doInBackground(Object[] objArr) {
        return a(objArr);
    }

    protected /* synthetic */ void onPostExecute(Object obj) {
        a((AdMarvelAd) obj);
    }
}
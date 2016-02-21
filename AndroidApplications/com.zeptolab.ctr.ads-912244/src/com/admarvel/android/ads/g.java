package com.admarvel.android.ads;

import android.content.Context;
import android.os.AsyncTask;
import android.util.Log;
import com.admarvel.android.ads.AdMarvelAd.AdType;
import com.admarvel.android.ads.AdMarvelUtils.ErrorReason;
import com.admarvel.android.ads.AdMarvelUtils.SDKAdNetwork;
import com.admarvel.android.util.Logging;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

class g extends AsyncTask {
    private Map a;
    private AdMarvelInterstitialAds b;
    private final WeakReference c;

    public g(Context context) {
        this.a = new HashMap();
        this.c = new WeakReference(context);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected com.admarvel.android.ads.AdMarvelAd a(java.lang.Object... r21) {
        throw new UnsupportedOperationException("Method not decompiled: com.admarvel.android.ads.g.a(java.lang.Object[]):com.admarvel.android.ads.AdMarvelAd");
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
        r1 = 6;
        r1 = r21[r1];
        r1 = (com.admarvel.android.ads.AdMarvelInterstitialAds) r1;
        r0 = r20;
        r0.b = r1;
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
        r0 = r20;
        r1 = r0.c;
        r3 = r1.get();
        r3 = (android.content.Context) r3;
        r1 = new com.admarvel.android.ads.AdFetcher;
        r1.<init>();
        if (r3 != 0) goto L_0x0054;
    L_0x0052:
        r10 = 0;
    L_0x0053:
        return r10;
    L_0x0054:
        if (r2 == 0) goto L_0x005f;
    L_0x0056:
        monitor-enter(r2);	 Catch:{ Exception -> 0x0141 }
        r0 = r20;
        r7 = r0.a;	 Catch:{ all -> 0x013e }
        r7.putAll(r2);	 Catch:{ all -> 0x013e }
        monitor-exit(r2);	 Catch:{ all -> 0x013e }
    L_0x005f:
        r2 = "com.admarvel.android.admarvelmologiqadapter.AdMarvelMologiqAdapter";
        r2 = com.admarvel.android.ads.AdMarvelAnalyticsAdapterInstances.getInstance(r2, r3);	 Catch:{ Exception -> 0x0149 }
        r0 = r20;
        r7 = r0.a;	 Catch:{ Exception -> 0x0149 }
        r2 = r2.getEnhancedTargetParams(r9, r7);	 Catch:{ Exception -> 0x0149 }
    L_0x006d:
        if (r2 == 0) goto L_0x0083;
    L_0x006f:
        r0 = r20;
        r7 = r0.a;	 Catch:{ Exception -> 0x0153 }
        if (r7 == 0) goto L_0x014d;
    L_0x0075:
        r0 = r20;
        r7 = r0.a;	 Catch:{ Exception -> 0x0153 }
        r2.putAll(r7);	 Catch:{ Exception -> 0x0153 }
        r0 = r20;
        r7 = r0.a;	 Catch:{ Exception -> 0x0153 }
        r7.putAll(r2);	 Catch:{ Exception -> 0x0153 }
    L_0x0083:
        r2 = com.admarvel.android.ads.AdMarvelInterstitialAds.enableOfflineSDK;
        if (r2 == 0) goto L_0x015d;
    L_0x0087:
        r2 = com.admarvel.android.ads.AdFetcher.Adtype.INTERSTITIAL;
        r0 = r20;
        r7 = r0.a;
        r12 = 0;
        r14 = 0;
        r0 = r20;
        r15 = r0.b;
        r15 = r15.isAutoScalingEnabled();
        r11 = r1.fetchOfflineAd(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15);
    L_0x009b:
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
        r1 = r1.getRequestJson();
        r10.setRequestJson(r1);
        r1 = com.admarvel.android.ads.AdMarvelInterstitialAds.enableOfflineSDK;
        if (r1 == 0) goto L_0x0115;
    L_0x00bc:
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
    L_0x0115:
        if (r11 == 0) goto L_0x01b6;
    L_0x0117:
        r1 = 0;
        r1 = r10.loadAd(r1);	 Catch:{ Exception -> 0x0189 }
        if (r1 == 0) goto L_0x01aa;
    L_0x011e:
        r2 = r10.getSdkNetwork();	 Catch:{ Exception -> 0x0189 }
        if (r2 == 0) goto L_0x0053;
    L_0x0124:
        r2 = r10.getSdkNetwork();	 Catch:{ Exception -> 0x0189 }
        r2 = r2.length();	 Catch:{ Exception -> 0x0189 }
        if (r2 <= 0) goto L_0x0053;
    L_0x012e:
        r2 = "ADMARVELGUID";
        r3 = r10.getSdkNetwork();	 Catch:{ Exception -> 0x0175 }
        r2 = com.admarvel.android.ads.AdMarvelAdapterInstances.getInstance(r2, r3);	 Catch:{ Exception -> 0x0175 }
        r10 = r2.loadAd(r10, r1);	 Catch:{ Exception -> 0x0175 }
        goto L_0x0053;
    L_0x013e:
        r7 = move-exception;
        monitor-exit(r2);	 Catch:{ all -> 0x013e }
        throw r7;	 Catch:{ Exception -> 0x0141 }
    L_0x0141:
        r2 = move-exception;
        r2 = 0;
        r0 = r20;
        r0.a = r2;
        goto L_0x005f;
    L_0x0149:
        r2 = move-exception;
        r2 = 0;
        goto L_0x006d;
    L_0x014d:
        r0 = r20;
        r0.a = r2;	 Catch:{ Exception -> 0x0153 }
        goto L_0x0083;
    L_0x0153:
        r2 = move-exception;
        r2 = android.util.Log.getStackTraceString(r2);
        com.admarvel.android.util.Logging.log(r2);
        goto L_0x0083;
    L_0x015d:
        r2 = com.admarvel.android.ads.AdFetcher.Adtype.INTERSTITIAL;
        r0 = r20;
        r7 = r0.a;
        r12 = 0;
        r14 = 0;
        r0 = r20;
        r15 = r0.b;
        r15 = r15.isAutoScalingEnabled();
        r16 = 0;
        r11 = r1.fetchAd(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16);
        goto L_0x009b;
    L_0x0175:
        r1 = move-exception;
        r1 = android.util.Log.getStackTraceString(r1);	 Catch:{ Exception -> 0x0189 }
        com.admarvel.android.util.Logging.log(r1);	 Catch:{ Exception -> 0x0189 }
        r1 = com.admarvel.android.ads.AdMarvelAd.AdType.ERROR;	 Catch:{ Exception -> 0x0189 }
        r10.setAdType(r1);	 Catch:{ Exception -> 0x0189 }
        r1 = 303; // 0x12f float:4.25E-43 double:1.497E-321;
        r10.setErrorCode(r1);	 Catch:{ Exception -> 0x0189 }
        goto L_0x0053;
    L_0x0189:
        r1 = move-exception;
        r1 = android.util.Log.getStackTraceString(r1);	 Catch:{ Exception -> 0x019d }
        com.admarvel.android.util.Logging.log(r1);	 Catch:{ Exception -> 0x019d }
        r1 = com.admarvel.android.ads.AdMarvelAd.AdType.ERROR;	 Catch:{ Exception -> 0x019d }
        r10.setAdType(r1);	 Catch:{ Exception -> 0x019d }
        r1 = 303; // 0x12f float:4.25E-43 double:1.497E-321;
        r10.setErrorCode(r1);	 Catch:{ Exception -> 0x019d }
        goto L_0x0053;
    L_0x019d:
        r1 = move-exception;
        r1 = com.admarvel.android.ads.AdMarvelAd.AdType.ERROR;
        r10.setAdType(r1);
        r1 = 303; // 0x12f float:4.25E-43 double:1.497E-321;
        r10.setErrorCode(r1);
        goto L_0x0053;
    L_0x01aa:
        r1 = com.admarvel.android.ads.AdMarvelAd.AdType.ERROR;	 Catch:{ Exception -> 0x0189 }
        r10.setAdType(r1);	 Catch:{ Exception -> 0x0189 }
        r1 = 303; // 0x12f float:4.25E-43 double:1.497E-321;
        r10.setErrorCode(r1);	 Catch:{ Exception -> 0x0189 }
        goto L_0x0053;
    L_0x01b6:
        r1 = com.admarvel.android.ads.AdMarvelAd.AdType.ERROR;	 Catch:{ Exception -> 0x019d }
        r10.setAdType(r1);	 Catch:{ Exception -> 0x019d }
        r1 = 303; // 0x12f float:4.25E-43 double:1.497E-321;
        r10.setErrorCode(r1);	 Catch:{ Exception -> 0x019d }
        goto L_0x0053;
        */
    }

    protected void a(AdMarvelAd adMarvelAd) {
        ErrorReason errorReason;
        SDKAdNetwork sDKAdNetwork = null;
        try {
            super.onPostExecute(adMarvelAd);
            if (adMarvelAd.getAdType() == AdType.ERROR) {
                errorReason = Utils.getErrorReason(adMarvelAd.getErrorCode());
                errorCode = Utils.getErrorCode(errorReason);
                context = (Context) this.c.get();
                if (context != null) {
                    AdMarvelInterstitialAds.getListener().a(context, null, null, errorCode, errorReason, adMarvelAd.getSiteId(), adMarvelAd.getId(), adMarvelAd.getTargetParams(), adMarvelAd.getIpAddress());
                }
            } else {
                Context context2;
                if (adMarvelAd.getAdType() == AdType.SDKCALL && adMarvelAd.getSdkNetwork() != null) {
                    this.b.requestPendingAdapterAd(this.a, adMarvelAd, adMarvelAd.getSdkNetwork(), (Context) this.c.get());
                    return;
                } else if (adMarvelAd.isDisableAdrequest()) {
                    String disableAdDuration = adMarvelAd.getDisableAdDuration();
                    if (disableAdDuration != null) {
                        context2 = (Context) this.c.get();
                        if (this.b != null && context2 != null) {
                            this.b.disableAdRequest(disableAdDuration, adMarvelAd, context2);
                            return;
                        } else {
                            return;
                        }
                    }
                }
                if (this.c != null) {
                    context2 = (Context) this.c.get();
                } else {
                    SDKAdNetwork sDKAdNetwork2 = sDKAdNetwork;
                }
                this.b.requestPendingAdMarvelAd(adMarvelAd, context2);
            }
        } catch (Exception e) {
            Logging.log(Log.getStackTraceString(e));
            errorReason = Utils.getErrorReason(303);
            errorCode = Utils.getErrorCode(errorReason);
            context = (Context) this.c.get();
            Context context3;
            if (context3 != null) {
                int errorCode2;
                AdMarvelInterstitialAds.getListener().a(context3, sDKAdNetwork, sDKAdNetwork, errorCode2, errorReason, adMarvelAd.getSiteId(), adMarvelAd.getId(), adMarvelAd.getTargetParams(), adMarvelAd.getIpAddress());
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
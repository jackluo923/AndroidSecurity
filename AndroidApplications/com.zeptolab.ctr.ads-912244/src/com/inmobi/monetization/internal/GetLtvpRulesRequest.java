package com.inmobi.monetization.internal;

import com.inmobi.commons.InMobi;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.uid.UIDHelper;
import com.inmobi.commons.uid.UIDUtil;
import java.util.LinkedList;
import java.util.List;
import java.util.Random;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.message.BasicNameValuePair;

public class GetLtvpRulesRequest {
    private String a;
    private String b;
    private String c;
    private long d;
    private String e;
    private String f;
    private String g;

    public GetLtvpRulesRequest() {
        try {
            this.a = InMobi.getAppId();
            this.b = "pr-SAND-" + InternalSDKUtil.getInMobiInternalVersion(InMobi.getVersion()) + "-" + InternalSDKUtil.INMOBI_SDK_RELEASE_DATE;
            this.d = (long) new Random().nextInt();
            this.c = UIDUtil.getEncryptedUid(Long.toString(this.d));
            this.e = UIDHelper.getRSAKeyVersion();
            this.f = InternalSDKUtil.getContext().getPackageName();
            this.g = InternalSDKUtil.getContext().getPackageManager().getPackageInfo(this.f, 0).versionName;
        } catch (Exception e) {
            Log.internal(Constants.LOG_TAG, "Failed to init Ltvp request", e);
        }
    }

    public String getEncodedRequestParams() {
        try {
            List linkedList = new LinkedList();
            if (!(this.a == null || AdTrackerConstants.BLANK.equals(this.a))) {
                linkedList.add(new BasicNameValuePair(AdTrackerConstants.APP_ID, this.a));
            }
            if (!(this.b == null || AdTrackerConstants.BLANK.equals(this.b))) {
                linkedList.add(new BasicNameValuePair(AdTrackerConstants.SDKVER, this.b));
            }
            if (!(this.c == null || AdTrackerConstants.BLANK.equals(this.c))) {
                linkedList.add(new BasicNameValuePair(AdTrackerConstants.UIDMAP, this.c));
            }
            linkedList.add(new BasicNameValuePair(AdTrackerConstants.UIDKEY, Long.toString(this.d)));
            if (!(this.e == null || AdTrackerConstants.BLANK.equals(this.e))) {
                linkedList.add(new BasicNameValuePair(AdTrackerConstants.UKEYVER, this.e));
            }
            if (!(this.f == null || AdTrackerConstants.BLANK.equals(this.f))) {
                linkedList.add(new BasicNameValuePair("u-appbid", this.f));
            }
            if (!(this.g == null || AdTrackerConstants.BLANK.equals(this.g))) {
                linkedList.add(new BasicNameValuePair(AdTrackerConstants.APPVER, this.g));
            }
            String toString = InternalSDKUtil.getContext().getResources().getConfiguration().locale.toString();
            if (!(toString == null || AdTrackerConstants.BLANK.equals(toString))) {
                linkedList.add(new BasicNameValuePair("d-localization", toString));
            }
            linkedList.add(new BasicNameValuePair(AdTrackerConstants.TIMESTAMP, Long.toString(System.currentTimeMillis())));
            return URLEncodedUtils.format(linkedList, "utf-8");
        } catch (Exception e) {
            Log.internal(Constants.LOG_TAG, "Exception getting request params for ltvp get rules", e);
            return null;
        }
    }
}
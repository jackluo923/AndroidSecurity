package com.google.ads;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources.NotFoundException;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.google.ads.internal.b;
import com.google.ads.internal.d;
import com.google.ads.internal.j;
import com.google.ads.util.AdUtil;
import java.util.HashSet;
import java.util.Set;

public class AdView extends RelativeLayout implements Ad {
    private m a;
    private d b;

    public AdView(Activity activity, AdSize adSize, String adUnitId) {
        AttributeSet attributeSet = null;
        super(activity.getApplicationContext());
        try {
            a((Context)activity, adSize, null);
            b(activity, adSize, null);
            a(activity, adSize, adUnitId);
        } catch (b e) {
            b bVar = e;
            a(activity, bVar.c("Could not initialize AdView"), adSize, attributeSet);
            bVar.a("Could not initialize AdView");
        }
    }

    public AdView(Context context, AttributeSet attrs) {
        super(context, attrs);
        a(context, attrs);
    }

    public AdView(Context context, AttributeSet attrs, int defStyle) {
        this(context, attrs);
    }

    private int a(Context context, int i) {
        return (int) TypedValue.applyDimension(1, (float) i, context.getResources().getDisplayMetrics());
    }

    private String a(String str, Context context, AttributeSet attributeSet, boolean z, boolean z2) throws b {
        String substring;
        String attributeValue = attributeSet.getAttributeValue("http://schemas.android.com/apk/lib/com.google.ads", str);
        if (attributeValue != null && attributeValue.startsWith("@string/") && z) {
            substring = attributeValue.substring("@string/".length());
            String packageName = context.getPackageName();
            TypedValue typedValue = new TypedValue();
            try {
                getResources().getValue(packageName + ":string/" + substring, typedValue, true);
                if (typedValue.string != null) {
                    substring = typedValue.string.toString();
                } else {
                    throw new b("Resource " + str + " was not a string: " + typedValue, true);
                }
            } catch (NotFoundException e) {
                throw new b("Could not find resource for " + str + ": " + attributeValue, true, e);
            }
        } else {
            substring = attributeValue;
        }
        if (!z2 || substring != null) {
            return substring;
        }
        throw new b("Required XML attribute \"" + str + "\" missing", true);
    }

    private void a(Activity activity, AdSize adSize, String str) throws b {
        int i = AdSize.AUTO_HEIGHT;
        View frameLayout = new FrameLayout(activity);
        frameLayout.setFocusable(false);
        this.a = m.a(this, str, activity, frameLayout, adSize);
        this.b = new d(this.a, false);
        setGravity(17);
        try {
            View a = j.a(activity, this.b);
            if (a != null) {
                a.addView(frameLayout, AdSize.AUTO_HEIGHT, AdSize.AUTO_HEIGHT);
                addView(a, AdSize.AUTO_HEIGHT, AdSize.AUTO_HEIGHT);
            } else {
                addView(frameLayout, AdSize.AUTO_HEIGHT, AdSize.AUTO_HEIGHT);
            }
        } catch (VerifyError e) {
            com.google.ads.util.b.a("Gestures disabled: Not supported on this version of Android.", e);
            addView(frameLayout, i, i);
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void a(android.content.Context r13, android.util.AttributeSet r14) {
        throw new UnsupportedOperationException("Method not decompiled: com.google.ads.AdView.a(android.content.Context, android.util.AttributeSet):void");
        /*
        r12 = this;
        r7 = 0;
        if (r14 != 0) goto L_0x0004;
    L_0x0003:
        return;
    L_0x0004:
        r2 = "adSize";
        r5 = 0;
        r6 = 1;
        r1 = r12;
        r3 = r13;
        r4 = r14;
        r1 = r1.a(r2, r3, r4, r5, r6);	 Catch:{ b -> 0x0115 }
        r2 = "BANNER";
        r2 = r2.equals(r1);	 Catch:{ b -> 0x0115 }
        if (r2 == 0) goto L_0x0050;
    L_0x0017:
        r5 = com.google.ads.AdSize.BANNER;	 Catch:{ b -> 0x0115 }
    L_0x0019:
        if (r5 != 0) goto L_0x0089;
    L_0x001b:
        r2 = new com.google.ads.internal.b;	 Catch:{ b -> 0x0035 }
        r3 = new java.lang.StringBuilder;	 Catch:{ b -> 0x0035 }
        r3.<init>();	 Catch:{ b -> 0x0035 }
        r4 = "Attribute \"adSize\" invalid: ";
        r3 = r3.append(r4);	 Catch:{ b -> 0x0035 }
        r1 = r3.append(r1);	 Catch:{ b -> 0x0035 }
        r1 = r1.toString();	 Catch:{ b -> 0x0035 }
        r3 = 1;
        r2.<init>(r1, r3);	 Catch:{ b -> 0x0035 }
        throw r2;	 Catch:{ b -> 0x0035 }
    L_0x0035:
        r1 = move-exception;
    L_0x0036:
        r2 = "Could not initialize AdView";
        r2 = r1.c(r2);
        r12.a(r13, r2, r5, r14);
        r2 = "Could not initialize AdView";
        r1.a(r2);
        r2 = r12.isInEditMode();
        if (r2 != 0) goto L_0x0003;
    L_0x004a:
        r2 = "Could not initialize AdView";
        r1.b(r2);
        goto L_0x0003;
    L_0x0050:
        r2 = "SMART_BANNER";
        r2 = r2.equals(r1);	 Catch:{ b -> 0x0115 }
        if (r2 == 0) goto L_0x005b;
    L_0x0058:
        r5 = com.google.ads.AdSize.SMART_BANNER;	 Catch:{ b -> 0x0115 }
        goto L_0x0019;
    L_0x005b:
        r2 = "IAB_MRECT";
        r2 = r2.equals(r1);	 Catch:{ b -> 0x0115 }
        if (r2 == 0) goto L_0x0066;
    L_0x0063:
        r5 = com.google.ads.AdSize.IAB_MRECT;	 Catch:{ b -> 0x0115 }
        goto L_0x0019;
    L_0x0066:
        r2 = "IAB_BANNER";
        r2 = r2.equals(r1);	 Catch:{ b -> 0x0115 }
        if (r2 == 0) goto L_0x0071;
    L_0x006e:
        r5 = com.google.ads.AdSize.IAB_BANNER;	 Catch:{ b -> 0x0115 }
        goto L_0x0019;
    L_0x0071:
        r2 = "IAB_LEADERBOARD";
        r2 = r2.equals(r1);	 Catch:{ b -> 0x0115 }
        if (r2 == 0) goto L_0x007c;
    L_0x0079:
        r5 = com.google.ads.AdSize.IAB_LEADERBOARD;	 Catch:{ b -> 0x0115 }
        goto L_0x0019;
    L_0x007c:
        r2 = "IAB_WIDE_SKYSCRAPER";
        r2 = r2.equals(r1);	 Catch:{ b -> 0x0115 }
        if (r2 == 0) goto L_0x0087;
    L_0x0084:
        r5 = com.google.ads.AdSize.IAB_WIDE_SKYSCRAPER;	 Catch:{ b -> 0x0115 }
        goto L_0x0019;
    L_0x0087:
        r5 = r7;
        goto L_0x0019;
    L_0x0089:
        r1 = "adUnitId";
        r1 = r12.a(r1, r14);	 Catch:{ b -> 0x0035 }
        if (r1 != 0) goto L_0x009a;
    L_0x0091:
        r1 = new com.google.ads.internal.b;	 Catch:{ b -> 0x0035 }
        r2 = "Required XML attribute \"adUnitId\" missing";
        r3 = 1;
        r1.<init>(r2, r3);	 Catch:{ b -> 0x0035 }
        throw r1;	 Catch:{ b -> 0x0035 }
    L_0x009a:
        r1 = r12.isInEditMode();	 Catch:{ b -> 0x0035 }
        if (r1 == 0) goto L_0x00ab;
    L_0x00a0:
        r3 = "Ads by Google";
        r4 = -1;
        r1 = r12;
        r2 = r13;
        r6 = r14;
        r1.a(r2, r3, r4, r5, r6);	 Catch:{ b -> 0x0035 }
        goto L_0x0003;
    L_0x00ab:
        r7 = "adUnitId";
        r10 = 1;
        r11 = 1;
        r6 = r12;
        r8 = r13;
        r9 = r14;
        r2 = r6.a(r7, r8, r9, r10, r11);	 Catch:{ b -> 0x0035 }
        r1 = "http://schemas.android.com/apk/lib/com.google.ads";
        r3 = "loadAdOnCreate";
        r4 = 0;
        r3 = r14.getAttributeBooleanValue(r1, r3, r4);	 Catch:{ b -> 0x0035 }
        r1 = r13 instanceof android.app.Activity;	 Catch:{ b -> 0x0035 }
        if (r1 == 0) goto L_0x010c;
    L_0x00c3:
        r0 = r13;
        r0 = (android.app.Activity) r0;	 Catch:{ b -> 0x0035 }
        r1 = r0;
        r12.a(r1, r5, r14);	 Catch:{ b -> 0x0035 }
        r12.b(r1, r5, r14);	 Catch:{ b -> 0x0035 }
        r12.a(r1, r5, r2);	 Catch:{ b -> 0x0035 }
        if (r3 == 0) goto L_0x0003;
    L_0x00d2:
        r7 = "testDevices";
        r10 = 0;
        r11 = 0;
        r6 = r12;
        r8 = r13;
        r9 = r14;
        r1 = r6.b(r7, r8, r9, r10, r11);	 Catch:{ b -> 0x0035 }
        r2 = "TEST_EMULATOR";
        r2 = r1.contains(r2);	 Catch:{ b -> 0x0035 }
        if (r2 == 0) goto L_0x00ef;
    L_0x00e5:
        r2 = "TEST_EMULATOR";
        r1.remove(r2);	 Catch:{ b -> 0x0035 }
        r2 = com.google.ads.AdRequest.TEST_EMULATOR;	 Catch:{ b -> 0x0035 }
        r1.add(r2);	 Catch:{ b -> 0x0035 }
    L_0x00ef:
        r2 = new com.google.ads.AdRequest;	 Catch:{ b -> 0x0035 }
        r2.<init>();	 Catch:{ b -> 0x0035 }
        r1 = r2.setTestDevices(r1);	 Catch:{ b -> 0x0035 }
        r7 = "keywords";
        r10 = 0;
        r11 = 0;
        r6 = r12;
        r8 = r13;
        r9 = r14;
        r2 = r6.b(r7, r8, r9, r10, r11);	 Catch:{ b -> 0x0035 }
        r1 = r1.setKeywords(r2);	 Catch:{ b -> 0x0035 }
        r12.loadAd(r1);	 Catch:{ b -> 0x0035 }
        goto L_0x0003;
    L_0x010c:
        r1 = new com.google.ads.internal.b;	 Catch:{ b -> 0x0035 }
        r2 = "AdView was initialized with a Context that wasn't an Activity.";
        r3 = 1;
        r1.<init>(r2, r3);	 Catch:{ b -> 0x0035 }
        throw r1;	 Catch:{ b -> 0x0035 }
    L_0x0115:
        r1 = move-exception;
        r5 = r7;
        goto L_0x0036;
        */
    }

    private void a(Context context, String str, AdSize adSize, AttributeSet attributeSet) {
        com.google.ads.util.b.b(str);
        a(context, str, -65536, adSize, attributeSet);
    }

    private boolean a(Context context, AdSize adSize, AttributeSet attributeSet) {
        if (AdUtil.c(context)) {
            return true;
        }
        a(context, "You must have AdActivity declared in AndroidManifest.xml with configChanges.", adSize, attributeSet);
        return false;
    }

    private boolean a(String str, AttributeSet attributeSet) {
        return attributeSet.getAttributeValue("http://schemas.android.com/apk/lib/com.google.ads", str) != null;
    }

    private Set<String> b(String str, Context context, AttributeSet attributeSet, boolean z, boolean z2) throws b {
        String a = a(str, context, attributeSet, z, z2);
        Set<String> hashSet = new HashSet();
        if (a != null) {
            String[] split = a.split(",");
            int length = split.length;
            int i = 0;
            while (i < length) {
                String trim = split[i].trim();
                if (trim.length() != 0) {
                    hashSet.add(trim);
                }
                i++;
            }
        }
        return hashSet;
    }

    private boolean b(Context context, AdSize adSize, AttributeSet attributeSet) {
        if (AdUtil.b(context)) {
            return true;
        }
        a(context, "You must have INTERNET and ACCESS_NETWORK_STATE permissions in AndroidManifest.xml.", adSize, attributeSet);
        return false;
    }

    void a(Context context, String str, int i, AdSize adSize, AttributeSet attributeSet) {
        if (adSize == null) {
            adSize = AdSize.BANNER;
        }
        AdSize createAdSize = AdSize.createAdSize(adSize, context.getApplicationContext());
        if (getChildCount() == 0) {
            View textView;
            View linearLayout;
            View linearLayout2;
            textView = attributeSet == null ? new TextView(context) : new TextView(context, attributeSet);
            textView.setGravity(17);
            textView.setText(str);
            textView.setTextColor(i);
            textView.setBackgroundColor(-16777216);
            linearLayout = attributeSet == null ? new LinearLayout(context) : new LinearLayout(context, attributeSet);
            linearLayout.setGravity(17);
            linearLayout2 = attributeSet == null ? new LinearLayout(context) : new LinearLayout(context, attributeSet);
            linearLayout2.setGravity(17);
            linearLayout2.setBackgroundColor(i);
            int a = a(context, createAdSize.getWidth());
            int a2 = a(context, createAdSize.getHeight());
            linearLayout.addView(textView, a - 2, a2 - 2);
            linearLayout2.addView(linearLayout);
            addView(linearLayout2, a, a2);
        }
    }

    public void destroy() {
        this.b.b();
    }

    public boolean isReady() {
        return this.b == null ? false : this.b.q();
    }

    public boolean isRefreshing() {
        return this.b == null ? false : this.b.r();
    }

    public void loadAd(AdRequest adRequest) {
        if (this.b != null) {
            if (isRefreshing()) {
                this.b.e();
            }
            this.b.a(adRequest);
        }
    }

    public void setAdListener(AdListener adListener) {
        this.a.j.a(adListener);
    }

    public void stopLoading() {
        if (this.b != null) {
            this.b.z();
        }
    }
}
package com.google.ads;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.google.ads.internal.AdWebView;
import com.google.ads.internal.b;
import com.google.ads.internal.d;
import com.google.ads.internal.j;
import com.google.ads.util.AdUtil;

public class AdView extends RelativeLayout implements Ad {
    private d a;

    public AdView(Activity activity, AdSize adSize, String str) {
        AttributeSet attributeSet = null;
        super(activity.getApplicationContext());
        try {
            a((Context)activity, adSize, null);
            b(activity, adSize, null);
            a(activity, adSize, str);
        } catch (b e) {
            b bVar = e;
            a(activity, bVar.b("Could not initialize AdView"), adSize, attributeSet);
            bVar.a("Could not initialize AdView");
        }
    }

    private int a(Context context, int i) {
        return (int) TypedValue.applyDimension(1, (float) i, context.getResources().getDisplayMetrics());
    }

    private void a(Activity activity, AdSize adSize, String str) {
        int i = -2;
        View frameLayout = new FrameLayout(activity);
        frameLayout.setFocusable(false);
        this.a = new d(this, activity, adSize, str, frameLayout, false);
        setGravity(17);
        try {
            View a = j.a(activity, this.a);
            if (a != null) {
                a.addView(frameLayout, -2, -2);
                addView(a, -2, -2);
            } else {
                addView(frameLayout, -2, -2);
            }
        } catch (VerifyError e) {
            com.google.ads.util.b.a("Gestures disabled: Not supported on this version of Android.", e);
            addView(frameLayout, i, i);
        }
    }

    private void a(Context context, String str, AdSize adSize, AttributeSet attributeSet) {
        com.google.ads.util.b.b(str);
        a(context, str, -65536, adSize, attributeSet);
    }

    private void a(AdSize... adSizeArr) {
        Object obj = new Object[adSizeArr.length];
        int i = 0;
        while (i < adSizeArr.length) {
            obj[i] = AdSize.a(adSizeArr[i], getContext());
            i++;
        }
        this.a.h().l.a(obj);
    }

    private boolean a(Context context, AdSize adSize, AttributeSet attributeSet) {
        if (AdUtil.c(context)) {
            return true;
        }
        a(context, "You must have AdActivity declared in AndroidManifest.xml with configChanges.", adSize, attributeSet);
        return false;
    }

    private boolean b(Context context, AdSize adSize, AttributeSet attributeSet) {
        if (AdUtil.b(context)) {
            return true;
        }
        a(context, "You must have INTERNET and ACCESS_NETWORK_STATE permissions in AndroidManifest.xml.", adSize, attributeSet);
        return false;
    }

    public void a() {
        this.a.b();
    }

    void a(Context context, String str, int i, AdSize adSize, AttributeSet attributeSet) {
        if (adSize == null) {
            adSize = AdSize.b;
        }
        AdSize a = AdSize.a(adSize, context.getApplicationContext());
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
            int a2 = a(context, a.a());
            int a3 = a(context, a.b());
            linearLayout.addView(textView, a2 - 2, a3 - 2);
            linearLayout2.addView(linearLayout);
            addView(linearLayout2, a2, a3);
        }
    }

    public void a(AdRequest adRequest) {
        if (this.a != null) {
            if (b()) {
                this.a.e();
            }
            this.a.a(adRequest);
        }
    }

    public boolean b() {
        return this.a == null ? false : this.a.r();
    }

    public void c() {
        if (this.a != null) {
            this.a.z();
        }
    }

    protected void onMeasure(int i, int i2) {
        AdWebView k = this.a.k();
        if (k != null) {
            k.setVisibility(0);
        }
        super.onMeasure(i, i2);
    }

    public void setAdListener(AdListener adListener) {
        this.a.h().m.a(adListener);
    }

    protected void setAppEventListener(AppEventListener appEventListener) {
        this.a.h().n.a(appEventListener);
    }

    protected void setSupportedAdSizes(AdSize... adSizeArr) {
        if (this.a.h().l.a() == null) {
            com.google.ads.util.b.b("Error: Tried to set supported ad sizes on a single-size AdView.");
        } else {
            a(adSizeArr);
        }
    }
}
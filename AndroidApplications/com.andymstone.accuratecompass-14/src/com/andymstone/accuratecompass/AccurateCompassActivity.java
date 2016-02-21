package com.andymstone.accuratecompass;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.e;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.Menu;
import android.view.MenuItem;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.RelativeLayout;
import com.andymstone.core.a;
import com.andymstone.core.u;
import com.andymstone.core.x;
import com.mopub.mobileads.MoPubConversionTracker;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.mobileads.MoPubView;
import com.mopub.mobileads.MoPubView.BannerAdListener;

public class AccurateCompassActivity extends a implements BannerAdListener {
    protected ViewGroup n;
    private MoPubView o;

    public void a(MoPubView moPubView) {
    }

    public void a(MoPubView moPubView, MoPubErrorCode moPubErrorCode) {
    }

    public void b(MoPubView moPubView) {
    }

    public void c(MoPubView moPubView) {
    }

    public void d(MoPubView moPubView) {
    }

    boolean f() {
        Display defaultDisplay = getWindowManager().getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        if ((displayMetrics.heightPixels > displayMetrics.widthPixels) == 0) {
            return false;
        }
        return ((float) displayMetrics.widthPixels) / getResources().getDisplayMetrics().density >= 728.0f;
    }

    protected void g() {
        e h = h();
        if (q()) {
            h.a(e(), "GoProDialogFragment");
        }
    }

    public e h() {
        return new h();
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.n = (ViewGroup) findViewById(o.main_frame);
        this.o = new MoPubView(this);
        LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        if (getResources().getConfiguration().orientation == 2) {
            layoutParams.addRule(11);
        } else {
            layoutParams.addRule(12);
            layoutParams.addRule(14);
        }
        ((RelativeLayout) this.n).addView(this.o, layoutParams);
        if (f()) {
            this.o.setAdUnitId("80858e013e644b8197ccfb712538375d");
        } else {
            this.o.setAdUnitId("63cb60d57d8145d7aea54f33b8869ece");
        }
        this.o.b();
        this.o.setBannerAdListener(this);
        new MoPubConversionTracker().a((Context)this);
        u.a(this, getString(com.andymstone.compasslib.u.app_name), (x)this);
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(2131296256, menu);
        return true;
    }

    protected void onDestroy() {
        this.o.c();
        super.onDestroy();
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 2131361843) {
            j();
            return true;
        } else if (menuItem.getItemId() == 2131361839) {
            a.a(this, getString(q.app_package));
            return true;
        } else if (menuItem.getItemId() == 2131361844) {
            a.a(this);
            return true;
        } else if (menuItem.getItemId() == 2131361840) {
            m();
            return true;
        } else if (menuItem.getItemId() == 2131361842) {
            i();
            return true;
        } else if (menuItem.getItemId() != 2131361841) {
            return super.onOptionsItemSelected(menuItem);
        } else {
            g();
            return true;
        }
    }

    protected void onStart() {
        super.onStart();
    }

    protected void onStop() {
        super.onStop();
    }
}
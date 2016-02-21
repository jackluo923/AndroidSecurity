package com.mopub.mobileads;

import android.os.Bundle;
import android.view.View;
import com.mopub.mobileads.MraidView.ExpansionStyle;
import com.mopub.mobileads.MraidView.NativeCloseButtonStyle;
import com.mopub.mobileads.MraidView.OnCloseButtonStateChangeListener;
import com.mopub.mobileads.MraidView.OnCloseListener;
import com.mopub.mobileads.MraidView.OnReadyListener;
import com.mopub.mobileads.MraidView.PlacementType;
import com.mopub.mobileads.MraidView.ViewState;
import com.mopub.mobileads.factories.MraidViewFactory;
import com.mopub.mobileads.util.WebViews;

public class MraidActivity extends BaseInterstitialActivity {
    private MraidView b;

    public View a() {
        this.b = MraidViewFactory.a(this, ExpansionStyle.b, NativeCloseButtonStyle.c, PlacementType.b);
        this.b.setOnReadyListener(new OnReadyListener() {
            public void a(MraidView mraidView) {
                MraidActivity.this.b();
            }
        });
        this.b.setOnCloseButtonStateChange(new OnCloseButtonStateChangeListener() {
            public void a(MraidView mraidView, boolean z) {
                if (z) {
                    MraidActivity.this.b();
                } else {
                    MraidActivity.this.c();
                }
            }
        });
        this.b.setOnCloseListener(new OnCloseListener() {
            public void a(MraidView mraidView, ViewState viewState) {
                MraidActivity.this.finish();
            }
        });
        this.b.a(getIntent().getStringExtra("Html-Response-Body"));
        return this.b;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        a("com.mopub.action.interstitial.show");
        getWindow().setFlags(16777216, 16777216);
    }

    protected void onDestroy() {
        this.b.destroy();
        super.onDestroy();
    }

    protected void onPause() {
        super.onPause();
        WebViews.a(this.b);
    }

    protected void onResume() {
        super.onResume();
        WebViews.b(this.b);
    }
}
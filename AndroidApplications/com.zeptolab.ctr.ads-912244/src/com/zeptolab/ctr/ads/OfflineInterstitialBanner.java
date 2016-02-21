package com.zeptolab.ctr.ads;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.zeptolab.ctr.CtrRenderer;
import com.zeptolab.ctr.ads.R.drawable;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.zbuild.ZBuildConfig;
import com.zeptolab.zbuild.ZR;

public class OfflineInterstitialBanner implements InterstitialBanner {
    private Activity activity;
    private boolean available;
    private View view;

    public OfflineInterstitialBanner(Activity activity) {
        this.available = true;
        this.activity = activity;
        View relativeLayout = new RelativeLayout(this.activity);
        relativeLayout.setLayoutParams(new LayoutParams(-1, -1));
        relativeLayout.setGravity(ZBuildConfig.$targetsdk);
        View imageView = new ImageView(this.activity);
        drawable com_zeptolab_ctr_ads_R_drawable = ZR.drawable;
        imageView.setImageResource(R.drawable.banner1_big);
        imageView.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                OfflineInterstitialBanner.this.activity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://facebook.com/cuttherope")));
                OfflineInterstitialBanner.this.dismiss();
            }
        });
        float f = ((float) this.activity.getResources().getDisplayMetrics().widthPixels) / 320.0f;
        imageView.setLayoutParams(new LinearLayout.LayoutParams((int) (320.0f * f), (int) (f * 250.0f)));
        imageView.setAdjustViewBounds(true);
        relativeLayout.addView(imageView);
        relativeLayout.setVisibility(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED);
        this.view = relativeLayout;
    }

    public void dismiss() {
        this.activity.runOnUiThread(new Runnable() {
            public void run() {
                OfflineInterstitialBanner.this.view.setVisibility(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED);
                CtrRenderer.videoBannerFinished();
            }
        });
    }

    public boolean handleActivityResult(int i, int i2, Intent intent) {
        return false;
    }

    public boolean isAvailable() {
        return this.available;
    }

    public void onDestroy() {
    }

    public void onPause() {
    }

    public void onResume() {
    }

    public void setLayout(RelativeLayout relativeLayout) {
        relativeLayout.addView(this.view);
    }

    public boolean showInterstitial(boolean z, boolean z2) {
        return z2 ? showVideoBanner() : false;
    }

    public boolean showVideoBanner() {
        this.activity.runOnUiThread(new Runnable() {
            public void run() {
                OfflineInterstitialBanner.this.view.setVisibility(0);
                CtrRenderer.videoBannerRequestAdButton(OfflineInterstitialBanner.this);
            }
        });
        return true;
    }
}
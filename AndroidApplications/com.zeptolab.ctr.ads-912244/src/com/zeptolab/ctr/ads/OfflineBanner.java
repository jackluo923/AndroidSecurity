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
import com.zeptolab.ctr.ads.R.drawable;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.zbuild.ZR;

public class OfflineBanner extends AdBanner {
    private final String TAG;
    private RelativeLayout adView;

    public OfflineBanner(Activity activity) {
        super(activity);
        this.TAG = "OfflineBanner";
        this.adView = new RelativeLayout(this.activity);
        this.adView.setGravity(81);
        this.adView.setLayoutParams(new LayoutParams(-1, -1));
        View imageView = new ImageView(this.activity);
        drawable com_zeptolab_ctr_ads_R_drawable = ZR.drawable;
        imageView.setImageResource(R.drawable.banner1);
        imageView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        this.adView.addView(imageView);
        imageView.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                OfflineBanner.this.activity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://facebook.com/cuttherope")));
            }
        });
        hideBanner();
    }

    public void hideBanner() {
        this.activity.runOnUiThread(new Runnable() {
            public void run() {
                OfflineBanner.this.adView.setVisibility(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED);
            }
        });
    }

    public void setLayout(RelativeLayout relativeLayout) {
        relativeLayout.addView(this.adView);
    }

    public boolean showBanner() {
        if (this.activity == null) {
            return false;
        }
        this.activity.runOnUiThread(new Runnable() {
            public void run() {
                OfflineBanner.this.adView.setVisibility(0);
            }
        });
        return true;
    }
}
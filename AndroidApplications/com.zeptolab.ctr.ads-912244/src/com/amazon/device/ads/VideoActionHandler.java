package com.amazon.device.ads;

import android.app.Activity;
import android.os.Bundle;
import android.view.ViewGroup.LayoutParams;
import android.widget.RelativeLayout;
import com.amazon.device.ads.AdVideoPlayer.AdVideoPlayerListener;
import com.amazon.device.ads.Controller.Dimensions;
import com.amazon.device.ads.Controller.PlayerProperties;
import com.google.android.gms.plus.PlusShare;
import com.inmobi.re.container.IMWebView;
import com.zeptolab.ctr.ads.R;

class VideoActionHandler implements IAdActivityAdapter {
    private RelativeLayout a;
    private AdVideoPlayer b;
    private Activity c;

    VideoActionHandler() {
    }

    private void a(Bundle bundle) {
        LayoutParams layoutParams;
        PlayerProperties playerProperties = (PlayerProperties) bundle.getParcelable(IMWebView.PLAYER_PROPERTIES);
        Dimensions dimensions = (Dimensions) bundle.getParcelable("player_dimensions");
        this.b = new AdVideoPlayer(this.c);
        this.b.setPlayData(playerProperties, bundle.getString(PlusShare.KEY_CALL_TO_ACTION_URL));
        if (dimensions == null) {
            layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams.addRule(R.styleable.MapAttrs_zOrderOnTop);
        } else {
            layoutParams = new RelativeLayout.LayoutParams(dimensions.width, dimensions.height);
            layoutParams.topMargin = dimensions.y;
            layoutParams.leftMargin = dimensions.x;
        }
        this.b.setLayoutParams(layoutParams);
        this.b.setViewGroup(this.a);
        a(this.b);
    }

    private void a(AdVideoPlayer adVideoPlayer) {
        adVideoPlayer.setListener(new AdVideoPlayerListener() {
            public void onComplete() {
                VideoActionHandler.this.c.finish();
            }

            public void onError() {
                VideoActionHandler.this.c.finish();
            }
        });
    }

    public void onCreate() {
        Bundle extras = this.c.getIntent().getExtras();
        this.a = new RelativeLayout(this.c);
        this.a.setLayoutParams(new LayoutParams(-1, -1));
        this.c.setContentView(this.a);
        a(extras);
        this.b.playVideo();
    }

    public void onPause() {
    }

    public void onResume() {
    }

    public void onStop() {
        this.b.releasePlayer();
        this.b = null;
        this.c.finish();
    }

    public void preOnCreate() {
    }

    public void setActivity(Activity activity) {
        this.c = activity;
    }
}
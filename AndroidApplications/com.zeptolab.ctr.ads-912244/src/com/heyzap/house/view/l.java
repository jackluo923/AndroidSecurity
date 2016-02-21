package com.heyzap.house.view;

import android.view.View;
import android.view.View.OnClickListener;

class l implements OnClickListener {
    final /* synthetic */ VideoControlView a;

    l(VideoControlView videoControlView) {
        this.a = videoControlView;
    }

    public void onClick(View view) {
        if (this.a.listener != null) {
            this.a.listener.onSkip();
        }
    }
}
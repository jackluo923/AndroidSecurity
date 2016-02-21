package com.heyzap.house.view;

import android.view.View;
import android.view.View.OnClickListener;

class k implements OnClickListener {
    final /* synthetic */ VideoControlView a;

    k(VideoControlView videoControlView) {
        this.a = videoControlView;
    }

    public void onClick(View view) {
        if (this.a.listener != null) {
            this.a.listener.onHide();
        }
    }
}
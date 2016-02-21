package com.heyzap.house.view;

import android.view.View;
import android.view.View.OnClickListener;

class i implements OnClickListener {
    final /* synthetic */ VideoControlView a;

    i(VideoControlView videoControlView) {
        this.a = videoControlView;
    }

    public void onClick(View view) {
        if (this.a.listener != null) {
            this.a.listener.onClick();
        }
    }
}
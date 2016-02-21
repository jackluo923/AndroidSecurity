package com.mixpanel.android.surveys;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;

class c implements OnItemClickListener {
    final /* synthetic */ CardCarouselLayout a;
    final /* synthetic */ d b;

    c(d dVar, CardCarouselLayout cardCarouselLayout) {
        this.b = dVar;
        this.a = cardCarouselLayout;
    }

    public void onItemClick(AdapterView adapterView, View view, int i, long j) {
        if (CardCarouselLayout.a(this.b.a) != null) {
            this.b.a.postDelayed(new d(this, adapterView.getItemAtPosition(i).toString()), 165);
        }
    }
}
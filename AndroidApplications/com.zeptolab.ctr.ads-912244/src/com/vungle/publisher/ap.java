package com.vungle.publisher;

import android.content.Context;
import android.widget.ImageView;

public final class ap extends ImageView {
    public ap(Context context) {
        super(context);
    }

    public final boolean hasOverlappingRendering() {
        return false;
    }
}
package com.vungle.publisher.image;

import android.content.Context;
import android.graphics.BitmapFactory.Options;

public abstract class BaseBitmapFactory implements BitmapFactory {
    protected Options getOptions(Context context) {
        Options options = new Options();
        options.inDensity = 330;
        options.inTargetDensity = (int) (context.getResources().getDisplayMetrics().density * ((float) options.inDensity));
        return options;
    }
}
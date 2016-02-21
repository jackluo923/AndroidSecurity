package com.vungle.publisher.image;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import javax.inject.Inject;
import javax.inject.Singleton;

@Singleton
public class AssetBitmapFactory extends BaseBitmapFactory {
    @Inject
    Context a;

    public Bitmap getBitmap(String str) {
        return BitmapFactory.decodeStream(this.a.getAssets().open(str), null, getOptions(this.a));
    }
}
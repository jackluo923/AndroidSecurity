package com.IQzone.postitial.obfuscated;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import java.io.File;

final class bm extends pv {
    private /* synthetic */ bk a;

    bm(bk bkVar) {
        this.a = bkVar;
    }

    public final /* synthetic */ Object a() {
        if (this.a.a.getPackageName().equals("com.IQzone.postitial.staticdemo.bench")) {
            return this.a.a.getResources().getDrawable(this.a.a.getResources().getIdentifier("close", "drawable", this.a.a.getPackageName()));
        }
        Bitmap decodeFile = BitmapFactory.decodeFile(new File(d.a("postitial-configuration/postitial-assets", this.a.a, AccessibilityNodeInfoCompat.ACTION_PASTE), "close").getAbsolutePath());
        if (decodeFile != null) {
            return new BitmapDrawable(this.a.a.getResources(), decodeFile);
        }
        throw new om("Could not load image");
    }
}
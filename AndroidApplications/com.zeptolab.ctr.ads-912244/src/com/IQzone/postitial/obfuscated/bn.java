package com.IQzone.postitial.obfuscated;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.os.Environment;
import java.io.File;

final class bn extends pv {
    private /* synthetic */ bk a;

    bn(bk bkVar) {
        this.a = bkVar;
    }

    public final /* synthetic */ Object a() {
        if (this.a.a.getPackageName().equals("com.IQzone.postitial.staticdemo.bench")) {
            return this.a.a.getResources().getDrawable(this.a.a.getResources().getIdentifier("sound_demo", "drawable", this.a.a.getPackageName()));
        }
        Bitmap decodeFile = BitmapFactory.decodeFile(new File(new File(Environment.getExternalStorageDirectory().getPath() + "/postitial/images"), "sound_demo").getAbsolutePath());
        if (decodeFile != null) {
            return new BitmapDrawable(this.a.a.getResources(), decodeFile);
        }
        throw new om("Could not load image");
    }
}
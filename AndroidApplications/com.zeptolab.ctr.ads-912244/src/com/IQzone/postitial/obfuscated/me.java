package com.IQzone.postitial.obfuscated;

import android.content.Context;
import android.view.OrientationEventListener;
import android.view.WindowManager;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;
import java.util.HashSet;
import java.util.Set;

public class me {
    private static final Set a;
    private static final Set b;
    private final WindowManager c;
    private final OrientationEventListener d;
    private volatile int e;

    static {
        a = new HashSet();
        b = new HashSet();
        a.add(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED));
        a.add(Integer.valueOf(0));
        a.add(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_ERROR));
        a.add(Integer.valueOf(R.styleable.MapAttrs_uiZoomGestures));
        b.add(Integer.valueOf(ZBuildConfig.$minsdk));
        b.add(Integer.valueOf(1));
        b.add(Integer.valueOf(GoogleScorer.CLIENT_ALL));
        b.add(Integer.valueOf(R.styleable.MapAttrs_useViewLifecycle));
    }

    public me(Context context) {
        this.e = -1;
        this.c = (WindowManager) context.getSystemService("window");
        this.d = new mf(this, context);
    }

    static /* synthetic */ boolean a(me meVar) {
        int rotation = meVar.c.getDefaultDisplay().getRotation();
        int height = meVar.c.getDefaultDisplay().getHeight();
        int width = meVar.c.getDefaultDisplay().getWidth();
        if (rotation == 3 || rotation == 1) {
            return width < height;
        } else if (height >= width) {
            return false;
        } else {
            return true;
        }
    }

    public final void a() {
        this.d.enable();
    }

    public final boolean b() {
        return b.contains(Integer.valueOf(this.e));
    }

    public final boolean c() {
        return a.contains(Integer.valueOf(this.e));
    }
}
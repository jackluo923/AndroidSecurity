package com.google.android.gms.internal;

import android.os.Build.VERSION;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.zbuild.ZBuildConfig;

public final class fr {
    private static boolean ac(int i) {
        return VERSION.SDK_INT >= i;
    }

    public static boolean eJ() {
        return ac(R.styleable.MapAttrs_uiZoomGestures);
    }

    public static boolean eK() {
        return ac(R.styleable.MapAttrs_useViewLifecycle);
    }

    public static boolean eL() {
        return ac(R.styleable.MapAttrs_zOrderOnTop);
    }

    public static boolean eM() {
        return ac(MMException.REQUEST_NOT_FILLED);
    }

    public static boolean eN() {
        return ac(MMException.REQUEST_NOT_PERMITTED);
    }

    public static boolean eO() {
        return ac(ZBuildConfig.$targetsdk);
    }
}
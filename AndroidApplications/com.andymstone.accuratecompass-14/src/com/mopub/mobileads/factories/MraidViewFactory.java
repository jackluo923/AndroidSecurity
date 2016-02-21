package com.mopub.mobileads.factories;

import android.content.Context;
import com.mopub.mobileads.MraidActivity;
import com.mopub.mobileads.MraidView;
import com.mopub.mobileads.MraidView.ExpansionStyle;
import com.mopub.mobileads.MraidView.NativeCloseButtonStyle;
import com.mopub.mobileads.MraidView.PlacementType;

public class MraidViewFactory {
    private static MraidViewFactory a;

    static {
        a = new MraidViewFactory();
    }

    public static MraidView a(Context context) {
        return a.b(context);
    }

    public static MraidView a(MraidActivity mraidActivity, ExpansionStyle expansionStyle, NativeCloseButtonStyle nativeCloseButtonStyle, PlacementType placementType) {
        return a.b(mraidActivity, expansionStyle, nativeCloseButtonStyle, placementType);
    }

    protected MraidView b(Context context) {
        return new MraidView(context);
    }

    protected MraidView b(MraidActivity mraidActivity, ExpansionStyle expansionStyle, NativeCloseButtonStyle nativeCloseButtonStyle, PlacementType placementType) {
        return new MraidView(mraidActivity, expansionStyle, nativeCloseButtonStyle, placementType);
    }
}
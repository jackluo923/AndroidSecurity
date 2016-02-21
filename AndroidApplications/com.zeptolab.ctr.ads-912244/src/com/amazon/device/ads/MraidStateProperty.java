package com.amazon.device.ads;

import com.amazon.device.ads.MraidView.ViewState;
import java.util.Locale;

class MraidStateProperty extends MraidProperty {
    private final ViewState a;

    MraidStateProperty(ViewState viewState) {
        this.a = viewState;
    }

    public static MraidStateProperty createWithViewState(ViewState viewState) {
        return new MraidStateProperty(viewState);
    }

    public String toJsonPair() {
        return "state: '" + this.a.toString().toLowerCase(Locale.US) + "'";
    }
}
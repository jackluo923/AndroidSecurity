package com.mopub.mobileads;

import com.mopub.mobileads.MraidView.ViewState;

class MraidStateProperty extends MraidProperty {
    private final ViewState a;

    MraidStateProperty(ViewState viewState) {
        this.a = viewState;
    }

    public static MraidStateProperty a(ViewState viewState) {
        return new MraidStateProperty(viewState);
    }

    public String a() {
        return new StringBuilder("state: '").append(this.a.toString().toLowerCase()).append("'").toString();
    }
}
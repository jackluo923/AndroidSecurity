package com.mopub.mobileads;

class MraidAbstractController {
    private final MraidView a;

    MraidAbstractController(MraidView mraidView) {
        this.a = mraidView;
    }

    public MraidView a() {
        return this.a;
    }
}
package com.amazon.device.ads;

class MraidAbstractController {
    private final MraidView a;

    MraidAbstractController(MraidView mraidView) {
        this.a = mraidView;
    }

    public MraidView getView() {
        return this.a;
    }
}
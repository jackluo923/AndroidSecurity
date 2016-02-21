package com.vungle.publisher;

import com.vungle.log.Logger;
import javax.inject.Inject;

public class aw implements ay {
    private boolean a;
    @Inject
    public cj f;

    public final void b() {
        if (this.a) {
            Logger.w(Logger.EVENT_TAG, getClass().getName() + " already listening");
        } else {
            Logger.d(Logger.EVENT_TAG, getClass().getName() + " listening");
            this.f.a(this, "onEvent", false);
            this.a = true;
        }
    }

    public final void c() {
        if (this.a) {
            Logger.w(Logger.EVENT_TAG, getClass().getName() + " already listening sticky");
        } else {
            Logger.d(Logger.EVENT_TAG, getClass().getName() + " listening sticky");
            this.f.a(this, "onEvent", true);
            this.a = true;
        }
    }

    public final void d() {
        Logger.d(Logger.EVENT_TAG, getClass().getName() + " unregistered");
        this.f.a(this);
        this.a = false;
    }
}
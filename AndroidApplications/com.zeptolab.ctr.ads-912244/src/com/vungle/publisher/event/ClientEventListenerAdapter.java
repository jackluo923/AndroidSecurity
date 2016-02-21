package com.vungle.publisher.event;

import com.vungle.log.Logger;
import com.vungle.publisher.EventListener;
import com.vungle.publisher.ab;
import com.vungle.publisher.ac;
import com.vungle.publisher.ad;
import com.vungle.publisher.ag;
import com.vungle.publisher.async.ScheduledPriorityExecutor;
import com.vungle.publisher.async.ScheduledPriorityExecutor.b;
import com.vungle.publisher.aw;
import com.vungle.publisher.h;
import com.vungle.publisher.i;
import com.vungle.publisher.n;
import com.vungle.publisher.t;
import com.vungle.publisher.x;
import com.vungle.publisher.y;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

public class ClientEventListenerAdapter extends aw {
    public EventListener a;
    @Inject
    ScheduledPriorityExecutor b;
    private int c;
    private int d;

    final class AnonymousClass_2 implements Runnable {
        final /* synthetic */ boolean a;
        final /* synthetic */ int b;
        final /* synthetic */ int c;

        AnonymousClass_2(boolean z, int i, int i2) {
            this.a = z;
            this.b = i;
            this.c = i2;
        }

        public final void run() {
            ClientEventListenerAdapter.this.a.onVideoView(this.a, this.b, this.c);
        }
    }

    final class AnonymousClass_3 implements Runnable {
        final /* synthetic */ boolean a;

        AnonymousClass_3(boolean z) {
            this.a = z;
        }

        public final void run() {
            ClientEventListenerAdapter.this.a.onAdEnd(this.a);
        }
    }

    @Singleton
    public static class Factory {
        @Inject
        public Provider a;
    }

    ClientEventListenerAdapter() {
    }

    public void onEvent(ab abVar) {
        Logger.d(Logger.EVENT_TAG, "onAdUnavailable(not initialized) callback");
        this.a.onAdUnavailable("Vungle Publisher SDK was not successfully initialized - please check the logs");
    }

    public void onEvent(ac acVar) {
        Logger.d(Logger.EVENT_TAG, "onAdUnavailable(throttled) callback");
        this.a.onAdUnavailable(new StringBuilder("Only ").append(acVar.a).append(" of minimum ").append(acVar.b).append(" seconds elapsed between ads").toString());
    }

    public void onEvent(ad adVar) {
        Logger.d(Logger.EVENT_TAG, "onAdUnavailable(unavailable) callback");
        this.a.onAdUnavailable("No cached or streaming ad available");
    }

    public void onEvent(ag agVar) {
        boolean z;
        int i = this.c;
        int i2 = this.d;
        z = ((float) i) / ((float) i2) > 0.8f;
        Logger.d(Logger.EVENT_TAG, new StringBuilder("onVideoEnd(").append(z).append(", ").append(i).append(", ").append(i2).append(") callback").toString());
        this.b.a(new AnonymousClass_2(z, i, i2), b.l);
        z = agVar.b;
        Logger.d(Logger.EVENT_TAG, new StringBuilder("onAdEnd(").append(z).append(") callback").toString());
        this.b.a(new AnonymousClass_3(z), b.l);
    }

    public void onEvent(h hVar) {
        this.d = hVar.a;
    }

    public void onEvent(i iVar) {
        int i = iVar.a;
        if (i > this.c) {
            Logger.d(Logger.EVENT_TAG, new StringBuilder("new watched millis ").append(i).toString());
            this.c = i;
        } else {
            Logger.d(Logger.EVENT_TAG, new StringBuilder("shorter watched millis ").append(i).toString());
        }
    }

    public void onEvent(n nVar) {
        Logger.d(Logger.EVENT_TAG, "onCachedAdAvailable() callback");
        this.a.onCachedAdAvailable();
    }

    public void onEvent(t tVar) {
        Logger.d(Logger.EVENT_TAG, "onAdStart() callback");
        this.c = 0;
        this.d = 0;
        this.b.a(new Runnable() {
            public final void run() {
                ClientEventListenerAdapter.this.onAdStart();
            }
        }, b.l);
    }

    public void onEvent(x xVar) {
        Logger.d(Logger.EVENT_TAG, "onAdUnavailable(error) callback");
        this.a.onAdUnavailable("Error launching ad");
    }

    public void onEvent(y yVar) {
        Logger.d(Logger.EVENT_TAG, "onAdUnavailable(already playing) callback");
        this.a.onAdUnavailable("Ad already playing");
    }
}
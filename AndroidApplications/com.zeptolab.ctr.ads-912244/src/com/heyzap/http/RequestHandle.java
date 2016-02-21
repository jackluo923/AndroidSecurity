package com.heyzap.http;

import java.lang.ref.WeakReference;

public class RequestHandle {
    private final WeakReference request;

    public RequestHandle(d dVar) {
        this.request = new WeakReference(dVar);
    }

    public boolean cancel(boolean z) {
        d dVar = (d) this.request.get();
        return dVar == null || dVar.a(z);
    }

    public boolean isCancelled() {
        d dVar = (d) this.request.get();
        return dVar == null || dVar.a();
    }

    public boolean isFinished() {
        d dVar = (d) this.request.get();
        return dVar == null || dVar.b();
    }

    public boolean shouldBeGarbageCollected() {
        boolean z;
        z = isCancelled() || isFinished();
        if (z) {
            this.request.clear();
        }
        return z;
    }
}
package com.google.android.gms.drive.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.c;

public class ak extends c {
    private final c vj;

    public ak(c cVar) {
        this.vj = cVar;
    }

    public void l(Status status) {
        this.vj.b(status);
    }

    public void onSuccess() {
        this.vj.b(Status.zQ);
    }
}
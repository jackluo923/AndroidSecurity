package me.kiip.internal.a;

import android.content.Intent;

public class a extends s {
    private Intent b;

    public a(i iVar) {
        super(iVar);
    }

    public String getMessage() {
        return this.b != null ? "User needs to (re)enter credentials." : super.getMessage();
    }
}
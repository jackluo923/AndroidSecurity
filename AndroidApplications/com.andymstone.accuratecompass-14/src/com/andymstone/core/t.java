package com.andymstone.core;

import android.os.Bundle;
import android.support.v4.app.i;

public abstract class t extends i implements y {
    private boolean n;

    public t() {
        this.n = false;
    }

    protected void onPostResume() {
        super.onPostResume();
        this.n = false;
    }

    protected void onSaveInstanceState(Bundle bundle) {
        this.n = true;
        super.onSaveInstanceState(bundle);
    }

    public boolean q() {
        return !this.n && !isFinishing();
    }
}
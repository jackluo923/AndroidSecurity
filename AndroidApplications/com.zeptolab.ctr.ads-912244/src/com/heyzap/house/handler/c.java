package com.heyzap.house.handler;

import android.app.ProgressDialog;

class c implements Runnable {
    final /* synthetic */ ProgressDialog a;
    final /* synthetic */ ClickHandler b;

    c(ClickHandler clickHandler, ProgressDialog progressDialog) {
        this.b = clickHandler;
        this.a = progressDialog;
    }

    public void run() {
        try {
            this.a.dismiss();
        } catch (IllegalArgumentException e) {
            e.printStackTrace();
        }
    }
}
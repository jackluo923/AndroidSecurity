package com.facebook.ads.internal.action;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.Log;

public class LinkAdAction implements AdAction {
    private static final String TAG;
    private final Context context;
    private final Uri uri;

    static {
        TAG = LinkAdAction.class.getSimpleName();
    }

    public LinkAdAction(Context context, Uri uri) {
        this.context = context;
        this.uri = uri;
    }

    public void execute() {
        try {
            this.context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(this.uri.getQueryParameter("link"))));
        } catch (Exception e) {
            Log.d(TAG, "Failed to open market url: " + this.uri.toString(), e);
        }
    }
}
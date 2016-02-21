package com.mopub.mobileads;

import android.content.Context;
import android.content.Intent;
import android.util.Log;

class MraidBrowserController extends MraidAbstractController {
    MraidBrowserController(MraidView mraidView) {
        super(mraidView);
    }

    protected void a(String str) {
        Log.d("MraidBrowserController", new StringBuilder("Opening in-app browser: ").append(str).toString());
        MraidView a = a();
        if (a.getOnOpenListener() != null) {
            a.getOnOpenListener().a(a);
        }
        Context context = a().getContext();
        Intent intent = new Intent(context, MraidBrowser.class);
        intent.putExtra("extra_url", str);
        intent.addFlags(268435456);
        context.startActivity(intent);
    }
}
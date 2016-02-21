package com.amazon.device.ads;

import android.net.Uri;

class MraidBrowserController extends MraidAbstractController {
    private static final String a = "MraidBrowserController";

    MraidBrowserController(MraidView mraidView) {
        super(mraidView);
    }

    protected void a(MraidView mraidView, String str) {
        if (mraidView.getOnSpecialUrlClickListener() != null) {
            if (mraidView.i().g()) {
                mraidView.i().h();
            }
            mraidView.getOnSpecialUrlClickListener().onSpecialUrlClick(mraidView, str);
        }
    }

    protected void a(String str) {
        MraidView view = getView();
        if (str == null || str.length() == 0) {
            Log.e(a, "URI cannot be null or empty");
        } else {
            Log.d(a, "Opening in-app browser: %s", new Object[]{str});
            Uri parse = Uri.parse(str);
            if (parse.getScheme() == null || !parse.getScheme().equals(AdWebViewClient.AMAZON_MOBILE)) {
                try {
                    String queryParameter = parse.getQueryParameter("d.url");
                    if (queryParameter != null) {
                        str = queryParameter;
                    }
                    if (str.startsWith("amazonmobile:")) {
                        a(view, str);
                    } else {
                        if (view.getOnOpenListener() != null) {
                            view.getOnOpenListener().onOpen(view);
                        }
                        if (str.startsWith("http:") || str.startsWith("https:")) {
                            new MraidBrowserBuilder().a(getView().getContext()).a(str).a().b();
                        } else {
                            view.c.launchExternalBrowserForLink(str);
                        }
                    }
                } catch (UnsupportedOperationException e) {
                    Log.e(a, "Could not open non-hierarchical URI: %s", new Object[]{str});
                }
            } else {
                a(view, str);
            }
        }
    }
}
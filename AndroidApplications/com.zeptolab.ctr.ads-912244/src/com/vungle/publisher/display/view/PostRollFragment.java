package com.vungle.publisher.display.view;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.vungle.log.Logger;
import com.vungle.publisher.an;

public class PostRollFragment extends WebViewFragment {
    private a d;

    public static class a extends com.vungle.publisher.an.a {
    }

    public PostRollFragment(String str, a aVar, com.vungle.publisher.ao.a aVar2) {
        super(str);
        a(aVar, aVar2);
    }

    public final void a() {
        try {
            this.d.a();
        } catch (Exception e) {
            Logger.w(Logger.AD_TAG, "exception in onBackPressed", e);
        }
    }

    public final /* bridge */ /* synthetic */ void a(com.vungle.publisher.ao.a aVar) {
        super.a(aVar);
    }

    public final void a(a aVar, com.vungle.publisher.ao.a aVar2) {
        try {
            super.a(aVar2);
            this.d = aVar;
        } catch (Exception e) {
            Logger.w(Logger.AD_TAG, "exception in onActivityCreated", e);
        }
    }

    public final String b() {
        return "postRollFragment";
    }

    public void onCreate(Bundle bundle) {
        try {
            super.onCreate(bundle);
        } catch (Exception e) {
            Logger.w(Logger.AD_TAG, "exception in onCreate", e);
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView;
        try {
            onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
            try {
                this.b.setWebChromeClient(new an(this.d));
            } catch (Exception e) {
                th = e;
                Logger.w(Logger.AD_TAG, "exception in onCreateView", th);
                return onCreateView;
            }
        } catch (Exception e2) {
            onCreateView = null;
            Throwable th2 = e2;
            Logger.w(Logger.AD_TAG, "exception in onCreateView", th2);
            return onCreateView;
        }
        return onCreateView;
    }

    public /* bridge */ /* synthetic */ void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
    }
}
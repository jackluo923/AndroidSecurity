package com.vungle.publisher.display.view;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.vungle.log.Logger;
import com.vungle.publisher.inject.Injector;

public abstract class AdFragment extends Fragment {
    public abstract void a();

    public void a(boolean z) {
        Logger.v(Logger.AD_TAG, (z ? "gained" : "lost") + " window focus");
    }

    public boolean a(int i) {
        return false;
    }

    public abstract String b();

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Injector.getInstance().a.a(this);
    }
}
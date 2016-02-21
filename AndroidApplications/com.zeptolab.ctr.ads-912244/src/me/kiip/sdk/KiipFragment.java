package me.kiip.sdk;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Fragment;
import android.content.DialogInterface.OnDismissListener;
import android.content.DialogInterface.OnShowListener;
import android.os.Bundle;
import java.util.List;
import me.kiip.internal.i.c;

@TargetApi(11)
public class KiipFragment extends Fragment {
    private c a;

    public KiipFragment() {
        setRetainInstance(true);
        this.a = new c();
    }

    public static List getDefaultQueue() {
        return c.a();
    }

    public static void setDefaultQueue(List list) {
        c.a(list);
    }

    public void dismissPoptart(Poptart poptart) {
        this.a.b(poptart);
    }

    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.a.a(activity);
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.a.a(bundle);
    }

    public void onDestroy() {
        this.a.e();
        super.onDestroy();
    }

    public void onDestroyView() {
        this.a.d();
        super.onDestroyView();
    }

    public void onDetach() {
        this.a.f();
        super.onDetach();
    }

    public void onStart() {
        super.onStart();
        this.a.b();
    }

    public void onStop() {
        this.a.c();
        super.onStop();
    }

    public void setOnDismissListener(OnDismissListener onDismissListener) {
        this.a.a(onDismissListener);
    }

    public void setOnShowListener(OnShowListener onShowListener) {
        this.a.a(onShowListener);
    }

    public void showPoptart(Poptart poptart) {
        this.a.a(poptart);
    }
}
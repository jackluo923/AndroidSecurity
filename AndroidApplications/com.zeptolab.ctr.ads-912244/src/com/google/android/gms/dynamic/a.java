package com.google.android.gms.dynamic;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.Iterator;
import java.util.LinkedList;

public abstract class a {
    private LifecycleDelegate Fp;
    private Bundle Fq;
    private LinkedList Fr;
    private final d Fs;

    private static interface a {
        void b(LifecycleDelegate lifecycleDelegate);

        int getState();
    }

    class AnonymousClass_2 implements a {
        final /* synthetic */ Activity Fu;
        final /* synthetic */ Bundle Fv;
        final /* synthetic */ Bundle Fw;

        AnonymousClass_2(Activity activity, Bundle bundle, Bundle bundle2) {
            this.Fu = activity;
            this.Fv = bundle;
            this.Fw = bundle2;
        }

        public void b(LifecycleDelegate lifecycleDelegate) {
            a.this.Fp.onInflate(this.Fu, this.Fv, this.Fw);
        }

        public int getState() {
            return 0;
        }
    }

    class AnonymousClass_3 implements a {
        final /* synthetic */ Bundle Fw;

        AnonymousClass_3(Bundle bundle) {
            this.Fw = bundle;
        }

        public void b(LifecycleDelegate lifecycleDelegate) {
            a.this.Fp.onCreate(this.Fw);
        }

        public int getState() {
            return 1;
        }
    }

    class AnonymousClass_4 implements a {
        final /* synthetic */ Bundle Fw;
        final /* synthetic */ FrameLayout Fx;
        final /* synthetic */ LayoutInflater Fy;
        final /* synthetic */ ViewGroup Fz;

        AnonymousClass_4(FrameLayout frameLayout, LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
            this.Fx = frameLayout;
            this.Fy = layoutInflater;
            this.Fz = viewGroup;
            this.Fw = bundle;
        }

        public void b(LifecycleDelegate lifecycleDelegate) {
            this.Fx.removeAllViews();
            this.Fx.addView(a.this.Fp.onCreateView(this.Fy, this.Fz, this.Fw));
        }

        public int getState() {
            return GoogleScorer.CLIENT_PLUS;
        }
    }

    final class AnonymousClass_5 implements OnClickListener {
        final /* synthetic */ int FA;
        final /* synthetic */ Context os;

        AnonymousClass_5(Context context, int i) {
            this.os = context;
            this.FA = i;
        }

        public void onClick(View view) {
            this.os.startActivity(GooglePlayServicesUtil.a(this.os, this.FA, -1));
        }
    }

    public a() {
        this.Fs = new d() {
            public void a(LifecycleDelegate lifecycleDelegate) {
                a.this.Fp = lifecycleDelegate;
                Iterator it = a.this.Fr.iterator();
                while (it.hasNext()) {
                    ((a) it.next()).b(a.this.Fp);
                }
                a.this.Fr.clear();
                a.this.Fq = null;
            }
        };
    }

    private void a_(Bundle bundle, a aVar) {
        if (this.Fp != null) {
            aVar.b(this.Fp);
        } else {
            if (this.Fr == null) {
                this.Fr = new LinkedList();
            }
            this.Fr.add(aVar);
            if (bundle != null) {
                if (this.Fq == null) {
                    this.Fq = (Bundle) bundle.clone();
                } else {
                    this.Fq.putAll(bundle);
                }
            }
            a(this.Fs);
        }
    }

    private void aO(int i) {
        while (!this.Fr.isEmpty() && ((a) this.Fr.getLast()).getState() >= i) {
            this.Fr.removeLast();
        }
    }

    public static void b(FrameLayout frameLayout) {
        Context context = frameLayout.getContext();
        int isGooglePlayServicesAvailable = GooglePlayServicesUtil.isGooglePlayServicesAvailable(context);
        CharSequence b = GooglePlayServicesUtil.b(context, isGooglePlayServicesAvailable, -1);
        CharSequence b2 = GooglePlayServicesUtil.b(context, isGooglePlayServicesAvailable);
        View linearLayout = new LinearLayout(frameLayout.getContext());
        linearLayout.setOrientation(1);
        linearLayout.setLayoutParams(new LayoutParams(-2, -2));
        frameLayout.addView(linearLayout);
        View textView = new TextView(frameLayout.getContext());
        textView.setLayoutParams(new LayoutParams(-2, -2));
        textView.setText(b);
        linearLayout.addView(textView);
        if (b2 != null) {
            View button = new Button(context);
            button.setLayoutParams(new LayoutParams(-2, -2));
            button.setText(b2);
            linearLayout.addView(button);
            button.setOnClickListener(new AnonymousClass_5(context, isGooglePlayServicesAvailable));
        }
    }

    protected void a_(FrameLayout frameLayout) {
        b(frameLayout);
    }

    protected abstract void a_(d dVar);

    public LifecycleDelegate fj() {
        return this.Fp;
    }

    public void onCreate(Bundle bundle) {
        a(bundle, new AnonymousClass_3(bundle));
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        FrameLayout frameLayout = new FrameLayout(layoutInflater.getContext());
        a(bundle, new AnonymousClass_4(frameLayout, layoutInflater, viewGroup, bundle));
        if (this.Fp == null) {
            a(frameLayout);
        }
        return frameLayout;
    }

    public void onDestroy() {
        if (this.Fp != null) {
            this.Fp.onDestroy();
        } else {
            aO(1);
        }
    }

    public void onDestroyView() {
        if (this.Fp != null) {
            this.Fp.onDestroyView();
        } else {
            aO(GoogleScorer.CLIENT_PLUS);
        }
    }

    public void onInflate(Activity activity, Bundle bundle, Bundle bundle2) {
        a(bundle2, new AnonymousClass_2(activity, bundle, bundle2));
    }

    public void onLowMemory() {
        if (this.Fp != null) {
            this.Fp.onLowMemory();
        }
    }

    public void onPause() {
        if (this.Fp != null) {
            this.Fp.onPause();
        } else {
            aO(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR);
        }
    }

    public void onResume() {
        a(null, new a() {
            public void b(LifecycleDelegate lifecycleDelegate) {
                a.this.Fp.onResume();
            }

            public int getState() {
                return IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR;
            }
        });
    }

    public void onSaveInstanceState(Bundle bundle) {
        if (this.Fp != null) {
            this.Fp.onSaveInstanceState(bundle);
        } else if (this.Fq != null) {
            bundle.putAll(this.Fq);
        }
    }
}
package com.mopub.mobileads;

import android.app.Activity;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Bundle;
import android.support.v4.a.c;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.andymstone.core.o;
import com.mopub.mobileads.resource.Drawables;
import com.mopub.mobileads.util.Dips;

public abstract class BaseInterstitialActivity extends Activity {
    public static final IntentFilter a;
    private ImageView b;
    private RelativeLayout c;
    private int d;
    private int e;

    static {
        a = e();
    }

    private void d() {
        this.b = new ImageButton(this);
        Drawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{-16842919}, Drawables.i.a(this));
        stateListDrawable.addState(new int[]{16842919}, Drawables.j.a(this));
        this.b.setImageDrawable(stateListDrawable);
        this.b.setBackgroundDrawable(null);
        this.b.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                BaseInterstitialActivity.this.finish();
            }
        });
        LayoutParams layoutParams = new RelativeLayout.LayoutParams(this.d, this.d);
        layoutParams.addRule(11);
        layoutParams.setMargins(this.e, 0, this.e, 0);
        this.c.addView(this.b, layoutParams);
    }

    private static IntentFilter e() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.mopub.action.interstitial.fail");
        intentFilter.addAction("com.mopub.action.interstitial.show");
        intentFilter.addAction("com.mopub.action.interstitial.dismiss");
        intentFilter.addAction("com.mopub.action.interstitial.click");
        return intentFilter;
    }

    public abstract View a();

    protected void a(String str) {
        c.a(this).a(new Intent(str));
    }

    protected void b() {
        this.b.setVisibility(0);
    }

    protected void c() {
        this.b.setVisibility(o.MyAlertDialog_MAD_buttonBarStyle);
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        getWindow().addFlags(1024);
        this.d = Dips.b(50.0f, this);
        this.e = Dips.b(8.0f, this);
        this.c = new RelativeLayout(this);
        LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(13);
        this.c.addView(a(), layoutParams);
        setContentView(this.c);
        d();
    }

    protected void onDestroy() {
        a("com.mopub.action.interstitial.dismiss");
        this.c.removeAllViews();
        super.onDestroy();
    }
}
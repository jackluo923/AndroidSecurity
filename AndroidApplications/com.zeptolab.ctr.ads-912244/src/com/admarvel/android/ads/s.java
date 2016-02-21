package com.admarvel.android.ads;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.LightingColorFilter;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.PathShape;
import android.graphics.drawable.shapes.RectShape;
import android.net.Uri;
import android.util.TypedValue;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.admarvel.android.util.AdMarvelBitmapDrawableUtils;
import com.google.android.gms.drive.DriveFile;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.zbuild.ZBuildConfig;
import java.lang.ref.WeakReference;

class s extends LinearLayout {
    static int a;
    final String b;
    private final WeakReference c;

    public class a extends Button {

        protected class a extends LayerDrawable {
            protected int a;
            protected ColorFilter b;

            public a(Drawable drawable) {
                super(new Drawable[]{drawable});
                this.a = 100;
                this.b = new LightingColorFilter(3768514, 1);
            }

            public boolean isStateful() {
                return true;
            }

            protected boolean onStateChange(int[] iArr) {
                boolean z = 0;
                int length = iArr.length;
                int i = 0;
                boolean z2 = false;
                while (i < length) {
                    int i2 = iArr[i];
                    if (i2 == 16842910) {
                        z2 = true;
                    } else if (i2 == 16842919) {
                        z = true;
                    }
                    i++;
                }
                if (i != 0 && i != 0) {
                    setColorFilter(this.b);
                } else if (i == 0) {
                    setColorFilter(null);
                    setAlpha(this.a);
                } else {
                    setColorFilter(null);
                }
                invalidateSelf();
                return super.onStateChange(iArr);
            }
        }

        public a(Context context) {
            super(context);
        }

        public void setBackgroundDrawable(Drawable drawable) {
            super.setBackgroundDrawable(new a(drawable));
        }
    }

    static {
        a = 100001;
    }

    @SuppressLint({"NewApi"})
    s(Activity activity, Context context, String str) {
        super(context);
        this.c = new WeakReference(activity);
        this.b = str;
        setId(a);
        setGravity(ZBuildConfig.$targetsdk);
        setOrientation(1);
        LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(R.styleable.MapAttrs_useViewLifecycle);
        setLayoutParams(layoutParams);
        LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, (int) TypedValue.applyDimension(1, 5.0f, getResources().getDisplayMetrics()));
        Drawable shapeDrawable = new ShapeDrawable();
        shapeDrawable.getPaint().setColor(Color.parseColor("#33B5E5"));
        Drawable clipDrawable = new ClipDrawable(shapeDrawable, 3, 1);
        View progressBar = new ProgressBar(context, null, 16842872);
        progressBar.setLayoutParams(layoutParams2);
        progressBar.setTag(this.b + "PROGRESS_BAR");
        progressBar.setBackgroundColor(0);
        progressBar.setProgressDrawable(clipDrawable);
        progressBar.setVisibility(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED);
        float applyDimension = TypedValue.applyDimension(1, 34.0f, getResources().getDisplayMetrics());
        LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, a(36.0f));
        layoutParams3.weight = 25.0f;
        layoutParams3.gravity = 17;
        LayoutParams layoutParams4 = new RelativeLayout.LayoutParams((int) applyDimension, (int) applyDimension);
        layoutParams4.addRule(R.styleable.MapAttrs_zOrderOnTop);
        View aVar = new a(context);
        aVar.setTag(this.b + "CLOSE_BUTTON");
        aVar.setLayoutParams(layoutParams4);
        View relativeLayout = new RelativeLayout(context);
        relativeLayout.setTag(this.b + "CLOSE_BUTTON_LAYOUT");
        relativeLayout.setLayoutParams(layoutParams3);
        relativeLayout.addView(aVar);
        aVar.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                Activity activity = (Activity) s.this.c.get();
                if (activity != null && activity instanceof AdMarvelActivity) {
                    AdMarvelActivity adMarvelActivity = (AdMarvelActivity) activity;
                    if (adMarvelActivity.c()) {
                        AdMarvelInterstitialAds.getListener().b();
                    } else {
                        adMarvelActivity.finish();
                    }
                    if (AdMarvelInternalWebView.d(s.this.b) != null) {
                        AdMarvelInternalWebView.d(s.this.b).a(s.this.b);
                    }
                }
            }
        });
        aVar.setBackgroundDrawable(AdMarvelBitmapDrawableUtils.getBitMapDrawable("done", context));
        aVar = new a(context);
        aVar.setTag(this.b + "BACK_BUTTON");
        aVar.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                s.this.b();
            }
        });
        aVar.setLayoutParams(layoutParams4);
        aVar.setEnabled(false);
        View relativeLayout2 = new RelativeLayout(context);
        relativeLayout2.setTag(this.b + "BACK_BUTTON_LAYOUT");
        relativeLayout2.setLayoutParams(layoutParams3);
        relativeLayout2.addView(aVar);
        aVar = new a(context);
        aVar.setTag(this.b + "FORWARD_BUTTON");
        aVar.setLayoutParams(layoutParams4);
        aVar.setEnabled(false);
        View relativeLayout3 = new RelativeLayout(context);
        aVar.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                s.this.c();
            }
        });
        relativeLayout3.setTag(this.b + "FORWARD_BUTTON_LAYOUT");
        relativeLayout3.setLayoutParams(layoutParams3);
        relativeLayout3.addView(aVar);
        aVar = new a(context);
        aVar.setTag(this.b + "RELOAD_BUTTON");
        aVar.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                s.this.d();
            }
        });
        aVar.setLayoutParams(layoutParams4);
        Path path = new Path();
        path.arcTo(new RectF(15.0f, 40.0f, 85.0f, 75.0f), BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_VIOLET, false);
        path.rLineTo(BitmapDescriptorFactory.HUE_RED, 10.0f);
        path.rLineTo(40.0f, -15.0f);
        path.rLineTo(-40.0f, -15.0f);
        path.rLineTo(BitmapDescriptorFactory.HUE_RED, 10.0f);
        path.arcTo(new RectF(5.0f, 30.0f, 95.0f, 85.0f), BitmapDescriptorFactory.HUE_VIOLET, -270.0f, false);
        path.close();
        Drawable shapeDrawable2 = new ShapeDrawable(new PathShape(path, 100.0f, 100.0f));
        shapeDrawable2.getPaint().setColor(-1);
        shapeDrawable2.getPaint().setStyle(Style.FILL);
        shapeDrawable2.getPaint().setAntiAlias(true);
        aVar.setBackgroundDrawable(shapeDrawable2);
        RelativeLayout relativeLayout4 = new RelativeLayout(context);
        relativeLayout4.setTag(this.b + "RELOAD_BUTTON_LAYOUT");
        relativeLayout4.setLayoutParams(layoutParams3);
        relativeLayout4.addView(aVar);
        aVar = new a(context);
        aVar.setTag(this.b + "BROWSER_BUTTON");
        aVar.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                s.this.e();
            }
        });
        aVar.setLayoutParams(layoutParams4);
        aVar.setBackgroundDrawable(AdMarvelBitmapDrawableUtils.getBitMapDrawable("open_url", getContext()));
        View relativeLayout5 = new RelativeLayout(context);
        relativeLayout5.setTag(this.b + "BROWSER_BUTTON_LAYOUT");
        relativeLayout5.setLayoutParams(layoutParams3);
        relativeLayout5.addView(aVar);
        applyDimension = TypedValue.applyDimension(1, 40.0f, getResources().getDisplayMetrics());
        clipDrawable = new ShapeDrawable(new RectShape());
        clipDrawable.getPaint().setColor(Color.parseColor("#FF1D1C1D"));
        LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-1, (int) applyDimension);
        aVar = new LinearLayout(context);
        aVar.setGravity(ZBuildConfig.$targetsdk);
        aVar.setTag(this.b + "BUTTON_BAR_LAYOUT");
        aVar.setLayoutParams(layoutParams5);
        aVar.setOrientation(0);
        aVar.setWeightSum(100.0f);
        aVar.setBackgroundDrawable(clipDrawable);
        aVar.addView(relativeLayout);
        aVar.addView(relativeLayout2);
        aVar.addView(relativeLayout3);
        aVar.addView(relativeLayout5);
        addView(progressBar);
        addView(aVar);
    }

    private int a(float f) {
        return (int) TypedValue.applyDimension(1, f, getResources().getDisplayMetrics());
    }

    private void b() {
        AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) ((RelativeLayout) getParent()).findViewWithTag(this.b + "WEBVIEW");
        if (adMarvelInternalWebView.canGoBack()) {
            adMarvelInternalWebView.goBack();
            a();
        }
    }

    private void c() {
        AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) ((RelativeLayout) getParent()).findViewWithTag(this.b + "WEBVIEW");
        if (adMarvelInternalWebView.canGoForward()) {
            adMarvelInternalWebView.goForward();
            a();
        }
    }

    private void d() {
        ((AdMarvelInternalWebView) ((RelativeLayout) getParent()).findViewWithTag(this.b + "WEBVIEW")).reload();
        a();
    }

    private void e() {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(((AdMarvelInternalWebView) ((RelativeLayout) getParent()).findViewWithTag(this.b + "WEBVIEW")).getUrl()));
        intent.addFlags(DriveFile.MODE_READ_ONLY);
        Activity activity = (Activity) this.c.get();
        if (activity != null && activity instanceof AdMarvelActivity) {
            AdMarvelActivity adMarvelActivity = (AdMarvelActivity) activity;
            if (Utils.isIntentAvailable(getContext(), intent)) {
                adMarvelActivity.startActivity(intent);
            }
            if (adMarvelActivity.c()) {
                AdMarvelInterstitialAds.getListener().b();
                adMarvelActivity.b();
            }
            if (adMarvelActivity.a() > 3) {
                adMarvelActivity.finish();
            } else {
                adMarvelActivity.finish();
            }
        }
    }

    void a() {
        Drawable bitMapDrawable;
        Drawable bitMapDrawable2;
        Path path = new Path();
        path.moveTo(BitmapDescriptorFactory.HUE_RED, 50.0f);
        path.rLineTo(80.0f, BitmapDescriptorFactory.HUE_ORANGE);
        path.rLineTo(BitmapDescriptorFactory.HUE_RED, -60.0f);
        path.rLineTo(-80.0f, BitmapDescriptorFactory.HUE_ORANGE);
        path.close();
        AdMarvelInternalWebView adMarvelInternalWebView = (AdMarvelInternalWebView) ((RelativeLayout) getParent()).findViewWithTag(this.b + "WEBVIEW");
        a aVar = (a) findViewWithTag(this.b + "BACK_BUTTON_LAYOUT").findViewWithTag(this.b + "BACK_BUTTON");
        a aVar2 = (a) findViewWithTag(this.b + "FORWARD_BUTTON_LAYOUT").findViewWithTag(this.b + "FORWARD_BUTTON");
        a aVar3 = (a) findViewWithTag(this.b + "BROWSER_BUTTON_LAYOUT").findViewWithTag(this.b + "BROWSER_BUTTON");
        String str = AdTrackerConstants.BLANK;
        if (adMarvelInternalWebView.canGoBack()) {
            aVar.setEnabled(true);
            str = "backward.png";
            bitMapDrawable = AdMarvelBitmapDrawableUtils.getBitMapDrawable("backward", getContext());
        } else {
            aVar.setEnabled(false);
            str = "backward_disable.png";
            bitMapDrawable = AdMarvelBitmapDrawableUtils.getBitMapDrawable("backward_disable", getContext());
        }
        aVar.setBackgroundDrawable(bitMapDrawable);
        String str2 = AdTrackerConstants.BLANK;
        if (adMarvelInternalWebView.canGoForward()) {
            aVar2.setEnabled(true);
            str2 = "resume.png";
            bitMapDrawable2 = AdMarvelBitmapDrawableUtils.getBitMapDrawable("resume", getContext());
        } else {
            aVar2.setEnabled(false);
            str2 = "resume_disable.png";
            bitMapDrawable2 = AdMarvelBitmapDrawableUtils.getBitMapDrawable("resume_disable", getContext());
        }
        aVar2.setBackgroundDrawable(bitMapDrawable2);
        aVar3.setBackgroundDrawable(AdMarvelBitmapDrawableUtils.getBitMapDrawable("open_url", getContext()));
        String url = adMarvelInternalWebView.getUrl();
        if (url == null || !url.contains("http://")) {
            aVar3.setEnabled(false);
        } else {
            aVar3.setEnabled(true);
        }
    }

    public void setVisibility(int i) {
        super.setVisibility(i);
        if (i == 0) {
            a();
        }
    }
}
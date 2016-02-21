package com.admarvel.android.ads;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Shader.TileMode;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.StateListDrawable;
import android.graphics.drawable.shapes.RectShape;
import android.os.AsyncTask;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import com.admarvel.android.ads.AdMarvelVideoActivity.m;
import com.admarvel.android.util.AdMarvelBitmapDrawableUtils;
import com.admarvel.android.util.Logging;
import com.brightcove.player.event.EventType;
import com.brightcove.player.media.CuePointFields;
import com.google.android.gms.drive.DriveFile;
import com.google.android.gms.plus.PlusShare;
import com.heyzap.house.impl.AbstractActivity;
import com.inmobi.commons.analytics.db.AnalyticsSQLiteHelper;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;
import java.lang.ref.WeakReference;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

class x extends LinearLayout {
    static int a;
    public boolean b;
    LinearLayout c;
    final String d;
    AdMarvelXMLReader e;
    AdMarvelXMLElement f;
    private final WeakReference g;
    private final WeakReference h;
    private boolean i;
    private boolean j;

    private class a extends AsyncTask {
        ImageView a;

        public a(ImageView imageView) {
            this.a = imageView;
        }

        protected Bitmap a_(String... strArr) {
            Bitmap bitmap = null;
            try {
                return BitmapFactory.decodeStream(new URL(strArr[0]).openStream());
            } catch (Exception e) {
                Logging.log(Log.getStackTraceString(e));
                return bitmap;
            }
        }

        protected void a_(Bitmap bitmap) {
            this.a.setImageBitmap(bitmap);
        }

        protected /* synthetic */ Object doInBackground(Object[] objArr) {
            return a((String[]) objArr);
        }

        protected /* synthetic */ void onPostExecute(Object obj) {
            a((Bitmap) obj);
        }
    }

    private class b implements Runnable {
        private final WeakReference b;
        private String c;

        public b(ImageView imageView, String str) {
            this.b = new WeakReference(imageView);
            this.c = str;
        }

        public void run() {
            if (this.b.get() != null) {
                new a((ImageView) this.b.get()).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[]{this.c});
            }
        }
    }

    public enum c {
        PauseVideo,
        StopVideo,
        CloseVideo;

        static {
            a = new com.admarvel.android.ads.x.c("PauseVideo", 0);
            b = new com.admarvel.android.ads.x.c("StopVideo", 1);
            c = new com.admarvel.android.ads.x.c("CloseVideo", 2);
            d = new com.admarvel.android.ads.x.c[]{a, b, c};
        }
    }

    class d extends RelativeLayout {
        public String a;
        public String b;
        public String c;
        public com.admarvel.android.ads.x.c d;
        public List e;

        class AnonymousClass_1 implements OnClickListener {
            final /* synthetic */ x a;

            AnonymousClass_1(x xVar) {
                this.a = xVar;
            }

            public void onClick(View view) {
                d.this.f.a(view);
            }
        }

        public d(Context context, AdMarvelXMLElement adMarvelXMLElement, LayoutParams layoutParams) {
            super(context);
            this.a = null;
            this.b = null;
            this.c = null;
            this.d = com.admarvel.android.ads.x.c.a;
            AdMarvelXMLElement adMarvelXMLElement2 = adMarvelXMLElement.getChildren().get(AbstractActivity.ACTIVITY_INTENT_ACTION_KEY) != null ? (AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement.getChildren().get(AbstractActivity.ACTIVITY_INTENT_ACTION_KEY)).get(0) : null;
            if (adMarvelXMLElement2 != null) {
                String str = (String) adMarvelXMLElement2.getAttributes().get(AnalyticsSQLiteHelper.EVENT_LIST_TYPE);
                this.c = str;
                if ("open_url".equalsIgnoreCase(str)) {
                    this.a = adMarvelXMLElement2.getData();
                    str = (String) adMarvelXMLElement2.getAttributes().get("videoOpenUrlBehavior");
                    if (str != null) {
                        if (str.equalsIgnoreCase("pauseVideo")) {
                            this.d = com.admarvel.android.ads.x.c.a;
                        } else if (str.equalsIgnoreCase("stopVideo")) {
                            this.d = com.admarvel.android.ads.x.c.b;
                        } else if (str.equalsIgnoreCase("closeVideo")) {
                            this.d = com.admarvel.android.ads.x.c.c;
                        }
                    }
                } else if ("done".equalsIgnoreCase(str)) {
                    x.this.i = true;
                } else if ("play_movie".equalsIgnoreCase(str)) {
                    this.b = adMarvelXMLElement2.getData();
                }
            }
            AdMarvelXMLElement adMarvelXMLElement3 = adMarvelXMLElement.getChildren().get("clickTracking") != null ? (AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement.getChildren().get("clickTracking")).get(0) : null;
            if (adMarvelXMLElement3 != null) {
                adMarvelXMLElement3 = (AdMarvelXMLElement) ((ArrayList) adMarvelXMLElement3.getChildren().get("pixels")).get(0);
                if (adMarvelXMLElement3 != null && adMarvelXMLElement3.getChildren().containsKey("pixel")) {
                    ArrayList arrayList = (ArrayList) adMarvelXMLElement3.getChildren().get("pixel");
                    this.e = new ArrayList();
                    this.e.clear();
                    int i = 0;
                    while (i < arrayList.size()) {
                        this.e.add(((AdMarvelXMLElement) arrayList.get(i)).getData());
                        i++;
                    }
                }
            }
            setLayoutParams(layoutParams);
            setClickable(true);
            addStatesFromChildren();
            setGravity(ZBuildConfig.$targetsdk);
            setOnClickListener(new AnonymousClass_1(x.this));
        }
    }

    static {
        a = 100001;
    }

    x(m mVar, AdMarvelVideoActivity adMarvelVideoActivity, Context context, String str, String str2) {
        super(context);
        this.b = false;
        this.j = false;
        this.g = new WeakReference(adMarvelVideoActivity);
        this.h = new WeakReference(mVar);
        this.i = false;
        this.d = str2;
        setId(a);
        ViewGroup.LayoutParams layoutParams = new LayoutParams(-1, -1);
        layoutParams.gravity = 16;
        setLayoutParams(layoutParams);
        setGravity(MMException.REQUEST_NOT_PERMITTED);
        float applyDimension = TypedValue.applyDimension(1, 40.0f, getResources().getDisplayMetrics());
        Drawable shapeDrawable = new ShapeDrawable(new RectShape());
        LayoutParams layoutParams2 = new LayoutParams(-2, -1);
        layoutParams2.gravity = 3;
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, (int) TypedValue.applyDimension(1, 32.0f, getResources().getDisplayMetrics()));
        layoutParams3.addRule(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, (int) TypedValue.applyDimension(1, 36.0f, getResources().getDisplayMetrics()));
        int applyDimension2 = (int) TypedValue.applyDimension(1, a(5.0f), getResources().getDisplayMetrics());
        layoutParams4.addRule(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR);
        layoutParams4.setMargins(applyDimension2, 0, applyDimension2, 0);
        layoutParams3.setMargins(applyDimension2, 0, applyDimension2, 0);
        this.e = new AdMarvelXMLReader();
        this.e.parseXMLString(str);
        this.f = this.e.getParsedXMLData();
        if (this.f != null && this.f.getChildren().containsKey("toolbar")) {
            String str3;
            AdMarvelXMLElement adMarvelXMLElement = (AdMarvelXMLElement) ((ArrayList) this.f.getChildren().get("toolbar")).get(0);
            String str4 = "#3E3E3E";
            str3 = adMarvelXMLElement == null ? null : (String) adMarvelXMLElement.getAttributes().get("background");
            if (str3 != null) {
                shapeDrawable.getPaint().setColor(Color.parseColor(str3));
            } else {
                shapeDrawable.getPaint().setColor(Color.parseColor(str4));
            }
            str3 = adMarvelXMLElement == null ? null : (String) adMarvelXMLElement.getAttributes().get("alpha");
            shapeDrawable.setAlpha(str3 != null ? Integer.parseInt(str3) : 175);
            setBackgroundDrawable(shapeDrawable);
            if (adMarvelXMLElement != null && adMarvelXMLElement.getChildren().containsKey("item")) {
                ArrayList arrayList = (ArrayList) adMarvelXMLElement.getChildren().get("item");
                int i = 0;
                while (i < arrayList.size()) {
                    AdMarvelXMLElement adMarvelXMLElement2 = (AdMarvelXMLElement) arrayList.get(i);
                    String str5 = (String) adMarvelXMLElement2.getAttributes().get(AnalyticsSQLiteHelper.EVENT_LIST_TYPE);
                    str3 = (String) adMarvelXMLElement2.getAttributes().get("subtype");
                    if ("SystemItem".equalsIgnoreCase(str5)) {
                        if (!("UIBarButtonSystemItemFlexibleSpace".equalsIgnoreCase(str3) || "UIBarButtonSystemItemFixedSpace".equalsIgnoreCase(str3))) {
                            a(context, layoutParams3, layoutParams2, adMarvelXMLElement2, this);
                        }
                    } else if ("Title".equalsIgnoreCase(str5)) {
                        b(context, layoutParams4, layoutParams2, adMarvelXMLElement2, this);
                    } else if ("Image".equalsIgnoreCase(str5)) {
                        c(context, layoutParams3, layoutParams2, adMarvelXMLElement2, this);
                    } else if ("Timer".equalsIgnoreCase(str5) && adMarvelVideoActivity.k > 0) {
                        this.j = true;
                    } else if ("Toggle".equalsIgnoreCase(str5)) {
                        a(context, layoutParams4, layoutParams3, layoutParams2, adMarvelXMLElement2, this);
                    }
                    i++;
                }
            }
        }
        layoutParams = new RelativeLayout.LayoutParams(-1, (int) applyDimension);
        layoutParams.addRule(R.styleable.MapAttrs_useViewLifecycle);
        layoutParams.addRule(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, AdMarvelInternalWebView.VIEW_ID);
        setLayoutParams(layoutParams);
        if (this.j) {
            a(context, layoutParams4, layoutParams2);
        }
    }

    private float a(float f) {
        return TypedValue.applyDimension(1, f, getResources().getDisplayMetrics());
    }

    private void a(Context context, RelativeLayout.LayoutParams layoutParams, LayoutParams layoutParams2) {
        View linearLayout = new LinearLayout(context);
        linearLayout.setVisibility(GoogleScorer.CLIENT_APPSTATE);
        ViewGroup.LayoutParams layoutParams3 = new LayoutParams(-2, -1);
        layoutParams3.gravity = 5;
        linearLayout.setOrientation(0);
        layoutParams3.weight = 1.0f;
        layoutParams.addRule(MMException.REQUEST_BAD_RESPONSE);
        linearLayout.setLayoutParams(layoutParams3);
        linearLayout.setTag(this.d + "TIMER_BUTTON_LAYOUT");
        linearLayout.setClickable(false);
        linearLayout.addStatesFromChildren();
        linearLayout.setGravity(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR);
        View textView = new TextView(context);
        ViewGroup.LayoutParams layoutParams4 = new LayoutParams(-2, -1);
        layoutParams4.setMargins((int) a(5.0f), 0, (int) a(5.0f), 0);
        textView.setTextColor(Color.parseColor("#0e78b9"));
        textView.setLayoutParams(layoutParams);
        textView.setGravity(MMException.REQUEST_NOT_PERMITTED);
        textView.setTypeface(Typeface.DEFAULT_BOLD);
        textView.setSingleLine(true);
        Drawable bitMapDrawable = AdMarvelBitmapDrawableUtils.getBitMapDrawable(CuePointFields.TIME, getContext());
        View imageView = new ImageView(context);
        imageView.setImageDrawable(bitMapDrawable);
        ViewGroup.LayoutParams layoutParams5 = new LayoutParams((int) a(32.0f), (int) a(32.0f));
        layoutParams5.gravity = 16;
        linearLayout.addView(textView, layoutParams4);
        linearLayout.addView(imageView, layoutParams5);
        addView(linearLayout);
    }

    private void a(Context context, RelativeLayout.LayoutParams layoutParams, LayoutParams layoutParams2, AdMarvelXMLElement adMarvelXMLElement, ViewGroup viewGroup) {
        Drawable shapeDrawable = new ShapeDrawable(new RectShape());
        shapeDrawable.getPaint().setShader(new LinearGradient(0.0f, 0.0f, 0.0f, a(40.0f), Color.parseColor("#AAFFFFFF"), Color.parseColor("#AA3E3E3E"), TileMode.REPEAT));
        Drawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{16842919}, shapeDrawable);
        View dVar = new d(context, adMarvelXMLElement, layoutParams2);
        if (dVar.c != null) {
            View imageView = new ImageView(context);
            imageView.setLayoutParams(layoutParams);
            dVar.setBackgroundDrawable(stateListDrawable);
            if (dVar.c.equalsIgnoreCase("done")) {
                stateListDrawable = AdMarvelBitmapDrawableUtils.getBitMapDrawable("close", getContext());
                LinearLayout linearLayout = new LinearLayout(context);
                ViewGroup.LayoutParams layoutParams3 = new LayoutParams((int) a(36.0f), (int) a(36.0f));
                layoutParams2.gravity = 53;
                linearLayout.addView(imageView, layoutParams3);
                imageView.setTag(Constants.ADM_VIDEO_SYSTEM_ICON_DONE_BUTTON);
                a(linearLayout);
            } else {
                layoutParams.addRule(MMException.REQUEST_BAD_RESPONSE);
                stateListDrawable = AdMarvelBitmapDrawableUtils.getBitMapDrawable(dVar.c, getContext());
                dVar.addView(imageView);
                viewGroup.addView(dVar);
            }
            imageView.setImageDrawable(stateListDrawable);
        }
    }

    private void a(Context context, RelativeLayout.LayoutParams layoutParams, RelativeLayout.LayoutParams layoutParams2, LayoutParams layoutParams3, AdMarvelXMLElement adMarvelXMLElement, ViewGroup viewGroup) {
        try {
            View viewSwitcher = new ViewSwitcher(context);
            viewSwitcher.setLayoutParams(layoutParams3);
            viewSwitcher.addStatesFromChildren();
            if (adMarvelXMLElement != null && adMarvelXMLElement.getChildren().containsKey("subitem")) {
                this.b = true;
                ArrayList arrayList = (ArrayList) adMarvelXMLElement.getChildren().get("subitem");
                int i = 0;
                while (i < arrayList.size()) {
                    AdMarvelXMLElement adMarvelXMLElement2 = (AdMarvelXMLElement) arrayList.get(i);
                    String str = (String) adMarvelXMLElement2.getAttributes().get(AnalyticsSQLiteHelper.EVENT_LIST_TYPE);
                    if ("SystemItem".equalsIgnoreCase(str)) {
                        a(context, layoutParams2, layoutParams3, adMarvelXMLElement2, viewSwitcher);
                    } else if ("Title".equalsIgnoreCase(str)) {
                        b(context, layoutParams, layoutParams3, adMarvelXMLElement2, viewSwitcher);
                    } else if ("Image".equalsIgnoreCase(str)) {
                        c(context, layoutParams2, layoutParams3, adMarvelXMLElement2, viewSwitcher);
                    }
                    i++;
                }
            }
            if (viewSwitcher.getChildCount() == 2) {
                viewGroup.addView(viewSwitcher);
            }
        } catch (Exception e) {
            Logging.log("Exception in addToggleButton API" + e.getMessage());
        }
    }

    private void a(View view) {
        if (view != null && view instanceof d) {
            d dVar = (d) view;
            AdMarvelVideoActivity adMarvelVideoActivity = (AdMarvelVideoActivity) this.g.get();
            if (adMarvelVideoActivity != null) {
                adMarvelVideoActivity.onUserInteraction();
                if (dVar.e != null) {
                    adMarvelVideoActivity.a(dVar.e);
                }
            }
            if (view.getParent() instanceof ViewSwitcher) {
                ViewSwitcher viewSwitcher = (ViewSwitcher) view.getParent();
                if (viewSwitcher != null) {
                    if (viewSwitcher.getDisplayedChild() == 0) {
                        viewSwitcher.showNext();
                    } else {
                        viewSwitcher.showPrevious();
                    }
                }
            }
            if (dVar.c != null && dVar.c.equalsIgnoreCase("open_url")) {
                a(dVar);
            } else if (dVar.c == null || !dVar.c.equalsIgnoreCase("play_movie")) {
                if (dVar.c == null || !dVar.c.equalsIgnoreCase("done")) {
                    if (dVar.c != null && dVar.c.equalsIgnoreCase(EventType.STOP)) {
                        d();
                    } else if (dVar.c != null && dVar.c.equalsIgnoreCase("replay")) {
                        c();
                    } else if (dVar.c != null && dVar.c.equalsIgnoreCase(EventType.PAUSE)) {
                        a(true);
                    } else if (dVar.c != null && dVar.c.equalsIgnoreCase("resume")) {
                        e();
                    } else if (dVar.c != null && dVar.c.equalsIgnoreCase("mute")) {
                        f();
                    } else if (dVar.c != null && dVar.c.equalsIgnoreCase("unmute")) {
                        g();
                    }
                } else if (adMarvelVideoActivity != null) {
                    adMarvelVideoActivity.c();
                }
            } else if (dVar.b != null) {
                a(dVar.b);
            }
        }
    }

    private void a(d dVar) {
        if (dVar != null) {
            AdMarvelVideoActivity adMarvelVideoActivity = (AdMarvelVideoActivity) this.g.get();
            if (adMarvelVideoActivity != null) {
                if (dVar.d == c.a) {
                    a(false);
                } else if (dVar.d == c.b) {
                    d();
                } else if (dVar.d == c.c) {
                    adMarvelVideoActivity.c();
                }
                if (dVar.a != null && dVar.a.length() > 0) {
                    if (AdMarvelInterstitialAds.getEnableClickRedirect()) {
                        adMarvelVideoActivity.d = true;
                        Intent intent = new Intent(adMarvelVideoActivity, AdMarvelActivity.class);
                        intent.addFlags(DriveFile.MODE_READ_ONLY);
                        intent.putExtra(PlusShare.KEY_CALL_TO_ACTION_URL, dVar.a);
                        intent.putExtra("isInterstitial", false);
                        intent.putExtra("isInterstitialClick", false);
                        intent.putExtra("GUID", this.d);
                        adMarvelVideoActivity.startActivity(intent);
                    }
                    AdMarvelInterstitialAds.getListener().a(adMarvelVideoActivity, dVar.a, AdTrackerConstants.BLANK, 0, null, AdTrackerConstants.BLANK);
                }
            }
        }
    }

    private void a(String str) {
        if (str != null) {
            AdMarvelVideoActivity adMarvelVideoActivity = (AdMarvelVideoActivity) this.g.get();
            if (adMarvelVideoActivity != null) {
                adMarvelVideoActivity.c(str);
            }
        }
    }

    private void a(boolean z) {
        AdMarvelVideoActivity adMarvelVideoActivity = (AdMarvelVideoActivity) this.g.get();
        if (adMarvelVideoActivity != null) {
            adMarvelVideoActivity.a(z);
        }
    }

    @SuppressLint({"NewApi"})
    private void b(Context context, RelativeLayout.LayoutParams layoutParams, LayoutParams layoutParams2, AdMarvelXMLElement adMarvelXMLElement, ViewGroup viewGroup) {
        View dVar = new d(context, adMarvelXMLElement, layoutParams2);
        layoutParams.addRule(MMException.REQUEST_BAD_RESPONSE);
        Drawable shapeDrawable = new ShapeDrawable(new RectShape());
        Drawable shapeDrawable2 = new ShapeDrawable(new RectShape());
        shapeDrawable2.getPaint().setColor(Color.parseColor("#000000FF"));
        shapeDrawable.getPaint().setColor(Color.parseColor("#AA3E3E3E"));
        Drawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{16842919}, shapeDrawable);
        stateListDrawable.addState(new int[]{-16842913}, shapeDrawable2);
        stateListDrawable.addState(new int[]{16842913}, shapeDrawable);
        Drawable stateListDrawable2 = new StateListDrawable();
        stateListDrawable2.addState(new int[]{16842919}, shapeDrawable);
        if (dVar.c != null) {
            String str = (String) adMarvelXMLElement.getAttributes().get(PlusShare.KEY_CONTENT_DEEP_LINK_METADATA_TITLE);
            View textView = new TextView(context);
            textView.setLayoutParams(layoutParams);
            textView.setBackgroundColor(-16776961);
            textView.setGravity(ZBuildConfig.$targetsdk);
            layoutParams.addRule(MMException.REQUEST_BAD_RESPONSE);
            textView.setDuplicateParentStateEnabled(true);
            textView.setClickable(false);
            textView.setSingleLine();
            textView.setTextColor(Color.parseColor("#84c043"));
            textView.setTypeface(Typeface.DEFAULT_BOLD);
            textView.setTextSize(17.0f);
            String str2 = (String) adMarvelXMLElement.getAttributes().get("color");
            String str3 = (String) adMarvelXMLElement.getAttributes().get("textSize");
            if (str2 != null && str2.length() > 0) {
                textView.setTextColor(Color.parseColor(str2));
                textView.setTypeface(Typeface.DEFAULT_BOLD);
                if (str3 != null) {
                    try {
                        textView.setTextSize((float) Integer.parseInt(str3));
                    } catch (Exception e) {
                        Exception exception = e;
                        textView.setTextSize(18.0f);
                        Logging.log("Exception in setting Done button text size" + exception.getMessage());
                    }
                }
            }
            if (Version.getAndroidSDKVersion() >= 16) {
                textView.setBackground(stateListDrawable);
            } else {
                textView.setBackgroundDrawable(stateListDrawable);
            }
            if (str != null && str.length() > 0) {
                textView.setText(str);
            }
            dVar.setBackgroundDrawable(stateListDrawable2);
            if (dVar.c.equalsIgnoreCase("done")) {
                LinearLayout linearLayout = new LinearLayout(context);
                ViewGroup.LayoutParams layoutParams3 = new LayoutParams(-2, -2);
                layoutParams2.gravity = 5;
                textView.setLayoutParams(layoutParams);
                linearLayout.setLayoutParams(layoutParams3);
                textView.setTag(Constants.ADM_VIDEO_CUSTOM_DONE_BUTTON);
                if (str != null && str.length() > 0) {
                    textView.setText(str);
                }
                linearLayout.addView(textView);
                a(linearLayout);
            } else {
                dVar.addView(textView);
                viewGroup.addView(dVar, layoutParams);
            }
        }
    }

    private void c() {
        AdMarvelVideoActivity adMarvelVideoActivity = (AdMarvelVideoActivity) this.g.get();
        if (adMarvelVideoActivity != null) {
            adMarvelVideoActivity.f();
        }
    }

    private void c(Context context, RelativeLayout.LayoutParams layoutParams, LayoutParams layoutParams2, AdMarvelXMLElement adMarvelXMLElement, ViewGroup viewGroup) {
        Drawable shapeDrawable = new ShapeDrawable(new RectShape());
        shapeDrawable.getPaint().setShader(new LinearGradient(0.0f, 0.0f, 0.0f, a(40.0f), Color.parseColor("#AAFFFFFF"), Color.parseColor("#AA3E3E3E"), TileMode.REPEAT));
        Drawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{16842919}, shapeDrawable);
        View dVar = new d(context, adMarvelXMLElement, layoutParams2);
        if (dVar.c != null) {
            String str = (String) adMarvelXMLElement.getAttributes().get(Constants.NATIVE_AD_IMAGE_ELEMENT);
            String str2 = (String) adMarvelXMLElement.getAttributes().get("image_high");
            String str3 = (String) adMarvelXMLElement.getAttributes().get("image_retina");
            AdMarvelVideoActivity adMarvelVideoActivity = (AdMarvelVideoActivity) this.g.get();
            if (adMarvelVideoActivity != null) {
                float deviceDensity = Utils.getDeviceDensity(adMarvelVideoActivity);
                if (deviceDensity > 1.0f) {
                    if (deviceDensity <= 1.0f || deviceDensity >= 2.0f) {
                        if (str3 != null && str3.length() > 0) {
                            str = str3;
                        }
                    } else if (str2 != null && str2.length() > 0) {
                        str = str2;
                    }
                }
                layoutParams.width = (int) a(32.0f);
                layoutParams.height = (int) a(32.0f);
                layoutParams.addRule(R.styleable.MapAttrs_zOrderOnTop);
                View imageView = new ImageView(context);
                imageView.setLayoutParams(layoutParams);
                if (Version.getAndroidSDKVersion() >= 11) {
                    adMarvelVideoActivity.a().post(new b(imageView, str));
                } else {
                    new a(imageView).execute(new String[]{str});
                }
                dVar.setBackgroundDrawable(stateListDrawable);
                if (dVar.c.equalsIgnoreCase("done")) {
                    LinearLayout linearLayout = new LinearLayout(context);
                    ViewGroup.LayoutParams layoutParams3 = new LayoutParams((int) a(40.0f), (int) a(40.0f));
                    layoutParams2.weight = 25.0f;
                    layoutParams2.gravity = 5;
                    linearLayout.addView(imageView, layoutParams3);
                    imageView.setTag(Constants.ADM_VIDEO_IMAGE_ICON_DONE_BUTTON);
                    a(linearLayout);
                } else {
                    dVar.addView(imageView);
                    viewGroup.addView(dVar);
                }
            }
        }
    }

    private void d() {
        AdMarvelVideoActivity adMarvelVideoActivity = (AdMarvelVideoActivity) this.g.get();
        if (adMarvelVideoActivity != null) {
            adMarvelVideoActivity.d();
        }
    }

    private void e() {
        AdMarvelVideoActivity adMarvelVideoActivity = (AdMarvelVideoActivity) this.g.get();
        if (adMarvelVideoActivity != null) {
            adMarvelVideoActivity.e();
        }
    }

    private void f() {
        AdMarvelVideoActivity adMarvelVideoActivity = (AdMarvelVideoActivity) this.g.get();
        m mVar = (m) this.h.get();
        if (mVar != null) {
            mVar.b();
        }
        if (adMarvelVideoActivity != null) {
            adMarvelVideoActivity.j = m.a;
        }
    }

    private void g() {
        AdMarvelVideoActivity adMarvelVideoActivity = (AdMarvelVideoActivity) this.g.get();
        m mVar = (m) this.h.get();
        if (mVar != null) {
            mVar.c();
        }
        if (adMarvelVideoActivity != null) {
            adMarvelVideoActivity.j = m.b;
        }
    }

    public LinearLayout a() {
        return this.c;
    }

    public void a(LinearLayout linearLayout) {
        this.c = linearLayout;
    }

    public boolean b() {
        return this.i;
    }
}
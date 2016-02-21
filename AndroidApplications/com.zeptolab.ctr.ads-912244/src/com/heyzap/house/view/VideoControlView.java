package com.heyzap.house.view;

import android.app.Activity;
import android.content.Context;
import android.text.SpannableString;
import android.text.style.StyleSpan;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.heyzap.house.model.VideoModel;
import com.heyzap.internal.Utils;
import com.inmobi.androidsdk.impl.AdException;
import com.inmobi.androidsdk.impl.ConfigException;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;
import java.text.SimpleDateFormat;
import java.util.Locale;

public class VideoControlView extends FrameLayout {
    private RelativeLayout hideButton;
    public OnActionListener listener;
    public View scrubBar;
    private SimpleDateFormat secondFormatter;
    private RelativeLayout skipButton;
    public String skipButtonText;
    private TextView skipButtonTextView;
    public TextView timeTextView;

    public static interface OnActionListener {
        void onClick();

        void onHide();

        void onSkip();
    }

    private VideoControlView(Context context) {
        super(context);
        this.skipButtonText = "Skip";
    }

    public VideoControlView(Context context, VideoModel videoModel) {
        super(context);
        this.skipButtonText = "Skip";
        setBackgroundColor(0);
        setOnClickListener(new i(this));
        addScrubBar(videoModel.showCountdown());
    }

    public void addHideButton() {
        OnClickListener kVar = new k(this);
        this.hideButton = new RelativeLayout(getContext());
        this.hideButton.setBackgroundColor(0);
        this.hideButton.setOnClickListener(kVar);
        View imageView = new ImageView(getContext());
        imageView.setImageResource(17301560);
        imageView.setPadding(0, Utils.dpToPx(getContext(), R.styleable.MapAttrs_uiZoomControls), Utils.dpToPx(getContext(), R.styleable.MapAttrs_uiZoomControls), 0);
        LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(R.styleable.MapAttrs_uiZoomGestures);
        this.hideButton.addView(imageView, layoutParams);
        LayoutParams layoutParams2 = new FrameLayout.LayoutParams(Utils.dpToPx(getContext(), MMException.UNKNOWN_ERROR), Utils.dpToPx(getContext(), MMException.UNKNOWN_ERROR));
        layoutParams2.gravity = 53;
        addView(this.hideButton, layoutParams2);
    }

    public void addScrubBar(Boolean bool) {
        this.scrubBar = new RelativeLayout(getContext());
        this.scrubBar.setBackgroundColor(16777215);
        LayoutParams layoutParams = new FrameLayout.LayoutParams(0, Utils.dpToPx(getContext(), GoogleScorer.CLIENT_APPSTATE));
        layoutParams.gravity = 83;
        addView(this.scrubBar, layoutParams);
        this.timeTextView = new TextView(getContext());
        this.timeTextView.setTextColor(-1);
        this.timeTextView.setGravity(ZBuildConfig.$targetsdk);
        if (!Utils.isTablet(getContext())) {
            this.timeTextView.setPadding(R.styleable.MapAttrs_uiZoomControls, R.styleable.MapAttrs_uiZoomControls, R.styleable.MapAttrs_uiZoomControls, R.styleable.MapAttrs_uiZoomControls);
        }
        this.timeTextView.setGravity(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE);
        this.timeTextView.setTextSize(40.0f);
        this.timeTextView.setShadowLayer(0.01f, -2.0f, 2.0f, -7829368);
        LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams2.gravity = 83;
        layoutParams2.leftMargin = Utils.dpToPx(getContext(), R.styleable.MapAttrs_useViewLifecycle);
        if (!bool.booleanValue()) {
            this.timeTextView.setVisibility(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED);
        }
        addView(this.timeTextView, layoutParams2);
    }

    public void addSkipButton(Boolean bool, long j) {
        int dpToPx;
        OnClickListener lVar = new l(this);
        this.skipButton = new RelativeLayout(getContext());
        this.skipButton.setBackgroundColor(0);
        this.skipButton.setOnClickListener(lVar);
        View linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(0);
        linearLayout.setBackgroundColor(0);
        linearLayout.setGravity(MMException.REQUEST_NOT_PERMITTED);
        linearLayout.setPadding(0, Utils.dpToPx(getContext(), ZBuildConfig.$minsdk), Utils.dpToPx(getContext(), ZBuildConfig.$minsdk), 0);
        this.skipButtonTextView = new TextView(getContext());
        this.skipButtonTextView.setTextSize(20.0f);
        this.skipButtonTextView.setTextColor(-1);
        this.skipButtonTextView.setGravity(ZBuildConfig.$targetsdk);
        this.skipButtonTextView.setShadowLayer(0.01f, -2.0f, 2.0f, -7829368);
        dpToPx = Utils.getSdkVersion() < 11 ? Utils.dpToPx(getContext(), GoogleScorer.CLIENT_ALL) : 0;
        this.skipButtonTextView.setPadding(Utils.dpToPx(getContext(), GoogleScorer.CLIENT_ALL), Utils.dpToPx(getContext(), ConfigException.MISSING_ACTIVITY_DECLARATION), dpToPx, 0);
        linearLayout.addView(this.skipButtonTextView, new LinearLayout.LayoutParams(-2, -2));
        View imageView = new ImageView(getContext());
        imageView.setImageResource(17301538);
        if (Utils.getSdkVersion() < 11) {
            imageView.setPadding(0, 0, dpToPx, 0);
        }
        linearLayout.addView(imageView, new LinearLayout.LayoutParams(-2, -2));
        LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(R.styleable.MapAttrs_uiZoomGestures);
        this.skipButton.addView(linearLayout, layoutParams);
        layoutParams = new FrameLayout.LayoutParams(Utils.dpToPx(getContext(), AdException.INTERNAL_ERROR), Utils.dpToPx(getContext(), 150));
        layoutParams.gravity = 5;
        addView(this.skipButton, layoutParams);
        if (bool.booleanValue()) {
            this.skipButton.setEnabled(false);
            new m(this, j, 100).start();
        } else {
            this.skipButton.setVisibility(0);
            CharSequence spannableString = new SpannableString(this.skipButtonText);
            spannableString.setSpan(new StyleSpan(1), 0, spannableString.length(), 0);
            this.skipButtonTextView.setText(spannableString);
        }
    }

    public void setOnActionListener(OnActionListener onActionListener) {
        this.listener = onActionListener;
    }

    public void updateScrubber(int i, float f) {
        DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
        if (this.secondFormatter == null) {
            this.secondFormatter = new SimpleDateFormat("s", Locale.US);
        }
        SpannableString spannableString = new SpannableString(i >= 1000 ? this.secondFormatter.format(Integer.valueOf(i)) : AdTrackerConstants.BLANK);
        spannableString.setSpan(new StyleSpan(1), 0, spannableString.length(), 0);
        ((Activity) getContext()).runOnUiThread(new j(this, spannableString, f, displayMetrics));
    }
}
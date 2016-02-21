package com.mixpanel.android.surveys;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.os.Bundle;
import android.support.v4.view.MotionEventCompat;
import android.util.Log;
import android.view.View;
import android.widget.TextView;
import com.google.ads.AdSize;
import com.mixpanel.android.a.c;
import com.mixpanel.android.a.d;
import com.mixpanel.android.mpmetrics.SurveyState;
import com.mixpanel.android.mpmetrics.SurveyState.AnswerMap;
import com.mixpanel.android.mpmetrics.aa;
import com.mixpanel.android.mpmetrics.aa.b;
import com.mixpanel.android.mpmetrics.j;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.TimeZone;
import org.json.JSONException;
import org.json.JSONObject;

public class SurveyActivity extends Activity {
    private static final String i = "com.mixpanel.android.surveys.SurveyActivity.CURRENT_QUESTION_BUNDLE_KEY";
    private static final String j = "com.mixpanel.android.surveys.SurveyActivity.SURVEY_STATE_BUNDLE_KEY";
    private static final String k = "MixpanelAPI";
    private static final int l;
    private j a;
    private View b;
    private View c;
    private TextView d;
    private CardCarouselLayout e;
    private SurveyState f;
    private int g;
    private int h;

    static {
        l = Color.argb(MotionEventCompat.ACTION_MASK, AdSize.LARGE_AD_HEIGHT, AdSize.LARGE_AD_HEIGHT, AdSize.LARGE_AD_HEIGHT);
    }

    public SurveyActivity() {
        this.g = 0;
        this.h = -1;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void a(int r7) {
        throw new UnsupportedOperationException("Method not decompiled: com.mixpanel.android.surveys.SurveyActivity.a(int):void");
        /*
        r6 = this;
        r2 = 0;
        r5 = 1;
        r0 = r6.f;
        r0 = r0.a();
        r1 = r0.d();
        if (r7 == 0) goto L_0x0014;
    L_0x000e:
        r0 = r1.size();
        if (r0 != 0) goto L_0x007a;
    L_0x0014:
        r0 = r6.b;
        r0.setEnabled(r2);
    L_0x0019:
        r0 = r1.size();
        r0 = r0 + -1;
        if (r7 < r0) goto L_0x0080;
    L_0x0021:
        r0 = r6.c;
        r0.setEnabled(r2);
    L_0x0026:
        r2 = r6.g;
        r6.g = r7;
        r0 = r1.get(r7);
        r0 = (com.mixpanel.android.mpmetrics.aa.b) r0;
        r3 = r6.f;
        r3 = r3.e();
        r4 = r0.a();
        r4 = java.lang.Integer.valueOf(r4);
        r3 = r3.a(r4);
        if (r2 >= r7) goto L_0x0086;
    L_0x0044:
        r2 = r6.e;	 Catch:{ e -> 0x0090 }
        r4 = com.mixpanel.android.surveys.CardCarouselLayout.b.a;	 Catch:{ e -> 0x0090 }
        r2.a(r0, r3, r4);	 Catch:{ e -> 0x0090 }
    L_0x004b:
        r0 = r1.size();
        if (r0 <= r5) goto L_0x009b;
    L_0x0051:
        r0 = r6.d;
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "";
        r2 = r2.append(r3);
        r3 = r7 + 1;
        r2 = r2.append(r3);
        r3 = " of ";
        r2 = r2.append(r3);
        r1 = r1.size();
        r1 = r2.append(r1);
        r1 = r1.toString();
        r0.setText(r1);
    L_0x0079:
        return;
    L_0x007a:
        r0 = r6.b;
        r0.setEnabled(r5);
        goto L_0x0019;
    L_0x0080:
        r0 = r6.c;
        r0.setEnabled(r5);
        goto L_0x0026;
    L_0x0086:
        if (r2 <= r7) goto L_0x0095;
    L_0x0088:
        r2 = r6.e;	 Catch:{ e -> 0x0090 }
        r4 = com.mixpanel.android.surveys.CardCarouselLayout.b.b;	 Catch:{ e -> 0x0090 }
        r2.a(r0, r3, r4);	 Catch:{ e -> 0x0090 }
        goto L_0x004b;
    L_0x0090:
        r0 = move-exception;
        r6.goToNextQuestion();
        goto L_0x0079;
    L_0x0095:
        r2 = r6.e;	 Catch:{ e -> 0x0090 }
        r2.a(r0, r3);	 Catch:{ e -> 0x0090 }
        goto L_0x004b;
    L_0x009b:
        r0 = r6.d;
        r1 = "";
        r0.setText(r1);
        goto L_0x0079;
        */
    }

    private void a(b bVar, String str) {
        this.f.e().a(Integer.valueOf(bVar.a()), str.toString());
    }

    private void completeSurvey() {
        finish();
    }

    private void goToNextQuestion() {
        if (this.g < this.f.a().d().size() - 1) {
            a(this.g + 1);
        } else {
            completeSurvey();
        }
    }

    private void goToPreviousQuestion() {
        if (this.g > 0) {
            a(this.g - 1);
        } else {
            completeSurvey();
        }
    }

    public void completeSurvey(View view) {
        completeSurvey();
    }

    public void goToNextQuestion(View view) {
        goToNextQuestion();
    }

    public void goToPreviousQuestion(View view) {
        goToPreviousQuestion();
    }

    public void onBackPressed() {
        if (this.g > 0) {
            goToPreviousQuestion();
        } else {
            super.onBackPressed();
        }
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        SurveyState surveyState = null;
        if (bundle != null) {
            surveyState = (SurveyState) bundle.getParcelable(j);
        }
        this.h = getIntent().getIntExtra("intentID", Integer.MAX_VALUE);
        this.f = SurveyState.a(surveyState, this.h);
        if (this.f == null) {
            Log.e(k, "Survey intent received, but no survey was found.");
            finish();
        } else {
            if (bundle != null) {
                this.g = bundle.getInt(i, 0);
            }
            setContentView(d.com_mixpanel_android_activity_survey);
            Bitmap d = this.f.d();
            if (d == null) {
                findViewById(c.com_mixpanel_android_activity_survey_id).setBackgroundColor(l);
            } else {
                getWindow().setBackgroundDrawable(new BitmapDrawable(getResources(), d));
            }
            this.b = findViewById(c.com_mixpanel_android_button_previous);
            this.c = findViewById(c.com_mixpanel_android_button_next);
            this.d = (TextView) findViewById(c.com_mixpanel_android_progress_text);
            this.e = (CardCarouselLayout) findViewById(c.com_mixpanel_android_question_card_holder);
            this.e.a(new e(this));
            aa a = this.f.a();
            String b = this.f.b();
            if (b == null) {
                Log.i(k, "Can't show a survey to a user with no distinct id set");
                finish();
            } else {
                this.a = j.a(this, this.f.c());
                j.c e = this.a.d().e(b);
                e.c("$surveys", Integer.valueOf(a.b()));
                e.c("$collections", Integer.valueOf(a.c()));
                this.a.a();
                a(this.g);
            }
        }
    }

    @SuppressLint({"SimpleDateFormat"})
    protected void onDestroy() {
        if (this.a != null) {
            if (this.f != null) {
                aa a = this.f.a();
                List d = a.d();
                j.c e = this.a.d().e(this.f.b());
                e.c("$responses", Integer.valueOf(a.c()));
                AnswerMap e2 = this.f.e();
                Iterator it = d.iterator();
                while (it.hasNext()) {
                    b bVar = (b) it.next();
                    String a2 = e2.a(Integer.valueOf(bVar.a()));
                    if (a2 != null) {
                        try {
                            JSONObject jSONObject = new JSONObject();
                            jSONObject.put("$survey_id", a.b());
                            jSONObject.put("$collection_id", a.c());
                            jSONObject.put("$question_id", bVar.a());
                            jSONObject.put("$question_type", bVar.d().toString());
                            DateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss");
                            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
                            jSONObject.put("$time", simpleDateFormat.format(new Date()));
                            jSONObject.put("$value", a2);
                            e.c("$answers", jSONObject);
                        } catch (JSONException e3) {
                            Log.e(k, "Couldn't record user's answer.", e3);
                        }
                    }
                }
            }
            this.a.a();
        }
        SurveyState.a(this.h);
        super.onDestroy();
    }

    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt(i, this.g);
        bundle.putParcelable(j, this.f);
    }
}
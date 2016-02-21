package me.kiip.internal.l;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Color;
import android.os.Bundle;
import android.text.TextUtils.TruncateAt;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import java.util.HashMap;
import me.kiip.internal.a.l;
import me.kiip.internal.a.m;
import me.kiip.internal.a.s;
import me.kiip.internal.k.f;
import me.kiip.sdk.Kiip.KiipAdapter;
import me.kiip.sdk.Kiip.OnContentListener;
import me.kiip.sdk.Kiip.OnSwarmListener;
import me.kiip.sdk.Notification;
import me.kiip.sdk.Poptart;
import org.json.JSONException;
import org.json.JSONObject;

public class d {
    private final me.kiip.internal.i.a a;
    private final HashMap b;
    private KiipAdapter c;
    private OnSwarmListener d;
    private OnContentListener e;

    public static interface a {
        void a_(d dVar, Poptart poptart, Exception exception);
    }

    class AnonymousClass_1 implements me.kiip.internal.a.n.b {
        final /* synthetic */ long a;
        final /* synthetic */ c b;
        final /* synthetic */ me.kiip.internal.l.d.a c;

        AnonymousClass_1(long j, c cVar, me.kiip.internal.l.d.a aVar) {
            this.a = j;
            this.b = cVar;
            this.c = aVar;
        }

        public void a(Bitmap bitmap) {
            d.this.a("notification_preload", Long.valueOf(this.a), Long.valueOf(System.currentTimeMillis()), this.b.a(), null, null, null);
            this.b.b().f = bitmap;
            this.c.a(d.this, this.b, null);
        }
    }

    class AnonymousClass_2 implements me.kiip.internal.a.n.a {
        final /* synthetic */ me.kiip.internal.l.d.a a;
        final /* synthetic */ c b;

        AnonymousClass_2(me.kiip.internal.l.d.a aVar, c cVar) {
            this.a = aVar;
            this.b = cVar;
        }

        public void a(s sVar) {
            this.a.a(d.this, this.b, sVar);
        }
    }

    private static class b extends RelativeLayout {
        public b(Context context, Poptart poptart) {
            super(context);
            Notification notification = poptart.getNotification();
            float f = getResources().getDisplayMetrics().density;
            int identifier = getResources().getIdentifier("kp_notification_bg", "drawable", getContext().getPackageName());
            if (identifier == 0) {
                Log.w("KiipSDK", "Unable to find kp_notification_bg.png in drawable-*");
            }
            setBackgroundResource(identifier);
            setLayoutParams(new LayoutParams(-1, (int) (46.0f * f)));
            View imageView = new ImageView(context);
            imageView.setImageBitmap(notification.getIcon());
            ViewGroup.LayoutParams layoutParams = new LayoutParams((int) (55.0f * f), (int) (42.0f * f));
            layoutParams.leftMargin = (int) (5.0f * f);
            layoutParams.topMargin = (int) (0.0f * f);
            addView(imageView, layoutParams);
            imageView = new TextView(context);
            imageView.setEllipsize(TruncateAt.END);
            imageView.setSingleLine();
            imageView.setText(notification.getTitle());
            imageView.setTextColor(Color.parseColor("#7c8080"));
            imageView.setTextSize(12.0f);
            layoutParams = new LayoutParams(-1, -2);
            layoutParams.leftMargin = (int) (65.0f * f);
            layoutParams.topMargin = (int) (4.0f * f);
            layoutParams.rightMargin = (int) (30.0f * f);
            addView(imageView, layoutParams);
            imageView = new TextView(context);
            imageView.setEllipsize(TruncateAt.END);
            imageView.setSingleLine();
            imageView.setText(notification.getMessage());
            imageView.setTextColor(Color.parseColor("#9b9f9f"));
            imageView.setTextSize(12.0f);
            ViewGroup.LayoutParams layoutParams2 = new LayoutParams(-1, -2);
            layoutParams2.leftMargin = (int) (65.0f * f);
            layoutParams2.topMargin = (int) (21.0f * f);
            layoutParams2.rightMargin = (int) (f * 10.0f);
            addView(imageView, layoutParams2);
        }

        public void setPressed(boolean z) {
            f.a(this, z ? 0.8f : 1.0f);
            super.setPressed(z);
        }
    }

    public d(me.kiip.internal.i.a aVar) {
        this.a = aVar;
        this.b = new HashMap();
    }

    public View a(Context context, c cVar) {
        return this.c != null ? this.c.getNotificationView(context, cVar.b().b(), cVar) : new b(context, cVar);
    }

    public HashMap a() {
        return this.b;
    }

    public void a(String str) {
        this.b.put(Event.INTENT_EMAIL, str);
    }

    public void a(String str, Long l, Long l2, String str2, String str3, String str4, String str5) {
        Bundle bundle = new Bundle();
        if (str2 != null) {
            bundle.putString("view_id", str2);
        }
        if (!(str3 == null || str4 == null || str5 == null)) {
            bundle.putString("error_code", str3);
            bundle.putString("error_description", str4);
            bundle.putString("error_failing_url", str5);
        }
        this.a.a(str, l, l2, bundle);
    }

    public void a(KiipAdapter kiipAdapter) {
        this.c = kiipAdapter;
    }

    public void a(OnContentListener onContentListener) {
        this.e = onContentListener;
    }

    public void a(OnSwarmListener onSwarmListener) {
        this.d = onSwarmListener;
    }

    public void a(JSONObject jSONObject, a aVar) {
        try {
            Poptart a = c.a(this, jSONObject);
            a c = a.c();
            c.a(this.d);
            c.a(this.e);
            long currentTimeMillis = System.currentTimeMillis();
            if (a.b() == null) {
                aVar.a(this, a, null);
            } else {
                m b = this.a.b();
                String str = a.b().c;
                AnonymousClass_1 anonymousClass_1 = new AnonymousClass_1(currentTimeMillis, a, aVar);
                Config config = Config.ARGB_8888;
                me.kiip.internal.a.n.a anonymousClass_2 = new AnonymousClass_2(aVar, a);
                l hVar = lVar;
                String str2 = str;
                AnonymousClass_1 anonymousClass_12 = anonymousClass_1;
                int i = 0;
                b.a(lVar);
            }
        } catch (JSONException e) {
            aVar.a(this, null, e);
        }
    }

    public String b() {
        return (String) this.b.get(Event.INTENT_EMAIL);
    }

    public void b(String str) {
        this.b.put("alias", str);
    }

    public String c() {
        return (String) this.b.get("alias");
    }

    public OnSwarmListener d_() {
        return this.d;
    }

    public OnContentListener e() {
        return this.e;
    }
}
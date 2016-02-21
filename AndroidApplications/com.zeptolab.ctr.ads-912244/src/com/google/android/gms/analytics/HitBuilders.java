package com.google.android.gms.analytics;

import android.text.TextUtils;
import com.google.android.gms.analytics.u.a;
import com.google.android.gms.tagmanager.DataLayer;
import com.vungle.publisher.VungleService;
import java.util.HashMap;
import java.util.Map;

public class HitBuilders {

    protected static class HitBuilder {
        private Map tO;

        protected HitBuilder() {
            this.tO = new HashMap();
        }

        public Map build() {
            return this.tO;
        }

        protected String get(String str) {
            return (String) this.tO.get(str);
        }

        public final HitBuilder set(String str, String str2) {
            u.bR().a(a.sl);
            if (str != null) {
                this.tO.put(str, str2);
            } else {
                aa.w(" HitBuilder.set() called with a null paramName.");
            }
            return this;
        }

        public final HitBuilder setAll(Map map) {
            u.bR().a(a.sm);
            if (map != null) {
                this.tO.putAll(new HashMap(map));
            }
            return this;
        }

        public HitBuilder setCampaignParamsFromUrl(String str) {
            u.bR().a(a.so);
            Object J = ak.J(str);
            if (!TextUtils.isEmpty(J)) {
                Map I = ak.I(J);
                set("&cc", (String) I.get("utm_content"));
                set("&cm", (String) I.get("utm_medium"));
                set("&cn", (String) I.get("utm_campaign"));
                set("&cs", (String) I.get("utm_source"));
                set("&ck", (String) I.get("utm_term"));
                set("&ci", (String) I.get("utm_id"));
                set("&gclid", (String) I.get("gclid"));
                set("&dclid", (String) I.get("dclid"));
                set("&gmob_t", (String) I.get("gmob_t"));
            }
            return this;
        }

        public HitBuilder setCustomDimension(int i, String str) {
            set(o.q(i), str);
            return this;
        }

        public HitBuilder setCustomMetric(int i, float f) {
            set(o.r(i), Float.toString(f));
            return this;
        }

        protected HitBuilder setHitType(String str) {
            set("&t", str);
            return this;
        }

        public HitBuilder setNewSession() {
            set("&sc", "start");
            return this;
        }

        public HitBuilder setNonInteraction(boolean z) {
            set("&ni", ak.s(z));
            return this;
        }
    }

    public static class AppViewBuilder extends HitBuilder {
        public AppViewBuilder() {
            u.bR().a(a.tv);
            set("&t", "appview");
        }

        public /* bridge */ /* synthetic */ Map build() {
            return super.build();
        }
    }

    public static class EventBuilder extends HitBuilder {
        public EventBuilder() {
            u.bR().a(a.tj);
            set("&t", DataLayer.EVENT_KEY);
        }

        public EventBuilder(String str, String str2) {
            this();
            setCategory(str);
            setAction(str2);
        }

        public /* bridge */ /* synthetic */ Map build() {
            return super.build();
        }

        public com.google.android.gms.analytics.HitBuilders.EventBuilder setAction(String str) {
            set("&ea", str);
            return this;
        }

        public com.google.android.gms.analytics.HitBuilders.EventBuilder setCategory(String str) {
            set("&ec", str);
            return this;
        }

        public com.google.android.gms.analytics.HitBuilders.EventBuilder setLabel(String str) {
            set("&el", str);
            return this;
        }

        public com.google.android.gms.analytics.HitBuilders.EventBuilder setValue(long j) {
            set("&ev", Long.toString(j));
            return this;
        }
    }

    public static class ExceptionBuilder extends HitBuilder {
        public ExceptionBuilder() {
            u.bR().a(a.sS);
            set("&t", "exception");
        }

        public /* bridge */ /* synthetic */ Map build() {
            return super.build();
        }

        public com.google.android.gms.analytics.HitBuilders.ExceptionBuilder setDescription(String str) {
            set("&exd", str);
            return this;
        }

        public com.google.android.gms.analytics.HitBuilders.ExceptionBuilder setFatal(boolean z) {
            set("&exf", ak.s(z));
            return this;
        }
    }

    public static class ItemBuilder extends HitBuilder {
        public ItemBuilder() {
            u.bR().a(a.tk);
            set("&t", "item");
        }

        public /* bridge */ /* synthetic */ Map build() {
            return super.build();
        }

        public com.google.android.gms.analytics.HitBuilders.ItemBuilder setCategory(String str) {
            set("&iv", str);
            return this;
        }

        public com.google.android.gms.analytics.HitBuilders.ItemBuilder setCurrencyCode(String str) {
            set("&cu", str);
            return this;
        }

        public com.google.android.gms.analytics.HitBuilders.ItemBuilder setName(String str) {
            set("&in", str);
            return this;
        }

        public com.google.android.gms.analytics.HitBuilders.ItemBuilder setPrice(double d) {
            set("&ip", Double.toString(d));
            return this;
        }

        public com.google.android.gms.analytics.HitBuilders.ItemBuilder setQuantity(long j) {
            set("&iq", Long.toString(j));
            return this;
        }

        public com.google.android.gms.analytics.HitBuilders.ItemBuilder setSku(String str) {
            set("&ic", str);
            return this;
        }

        public com.google.android.gms.analytics.HitBuilders.ItemBuilder setTransactionId(String str) {
            set("&ti", str);
            return this;
        }
    }

    public static class SocialBuilder extends HitBuilder {
        public SocialBuilder() {
            u.bR().a(a.sV);
            set("&t", "social");
        }

        public /* bridge */ /* synthetic */ Map build() {
            return super.build();
        }

        public com.google.android.gms.analytics.HitBuilders.SocialBuilder setAction(String str) {
            set("&sa", str);
            return this;
        }

        public com.google.android.gms.analytics.HitBuilders.SocialBuilder setNetwork(String str) {
            set("&sn", str);
            return this;
        }

        public com.google.android.gms.analytics.HitBuilders.SocialBuilder setTarget(String str) {
            set("&st", str);
            return this;
        }
    }

    public static class TimingBuilder extends HitBuilder {
        public TimingBuilder() {
            u.bR().a(a.sU);
            set("&t", "timing");
        }

        public TimingBuilder(String str, String str2, long j) {
            this();
            setVariable(str2);
            setValue(j);
            setCategory(str);
        }

        public /* bridge */ /* synthetic */ Map build() {
            return super.build();
        }

        public com.google.android.gms.analytics.HitBuilders.TimingBuilder setCategory(String str) {
            set("&utc", str);
            return this;
        }

        public com.google.android.gms.analytics.HitBuilders.TimingBuilder setLabel(String str) {
            set("&utl", str);
            return this;
        }

        public com.google.android.gms.analytics.HitBuilders.TimingBuilder setValue(long j) {
            set("&utt", Long.toString(j));
            return this;
        }

        public com.google.android.gms.analytics.HitBuilders.TimingBuilder setVariable(String str) {
            set("&utv", str);
            return this;
        }
    }

    public static class TransactionBuilder extends HitBuilder {
        public TransactionBuilder() {
            u.bR().a(a.sR);
            set("&t", VungleService.HTTP_TRANSACTION_EXTRA_KEY);
        }

        public /* bridge */ /* synthetic */ Map build() {
            return super.build();
        }

        public com.google.android.gms.analytics.HitBuilders.TransactionBuilder setAffiliation(String str) {
            set("&ta", str);
            return this;
        }

        public com.google.android.gms.analytics.HitBuilders.TransactionBuilder setCurrencyCode(String str) {
            set("&cu", str);
            return this;
        }

        public com.google.android.gms.analytics.HitBuilders.TransactionBuilder setRevenue(double d) {
            set("&tr", Double.toString(d));
            return this;
        }

        public com.google.android.gms.analytics.HitBuilders.TransactionBuilder setShipping(double d) {
            set("&ts", Double.toString(d));
            return this;
        }

        public com.google.android.gms.analytics.HitBuilders.TransactionBuilder setTax(double d) {
            set("&tt", Double.toString(d));
            return this;
        }

        public com.google.android.gms.analytics.HitBuilders.TransactionBuilder setTransactionId(String str) {
            set("&ti", str);
            return this;
        }
    }
}
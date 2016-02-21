package me.kiip.internal.n;

import android.net.Uri;
import com.brightcove.player.util.ErrorUtil;
import com.vungle.sdk.VunglePub.Gender;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import me.kiip.internal.a.n;
import me.kiip.internal.a.n.a;
import me.kiip.internal.a.s;
import me.kiip.internal.b.i;
import org.json.JSONException;
import org.json.JSONObject;

public class b extends i {
    private static final DateFormat a;
    private String b;
    private String c;

    static {
        a = new SimpleDateFormat("EEE, d MMM yyyy HH:mm:ss Z", Locale.ENGLISH);
        a.setTimeZone(TimeZone.getTimeZone("UTC"));
    }

    public b(int i, String str, JSONObject jSONObject, me.kiip.internal.a.n.b bVar, a aVar) {
        super(i, str, jSONObject, bVar, aVar);
    }

    private String v() {
        switch (a()) {
            case Gender.UNKNOWN:
                return "POST";
            case IabHelper.BILLING_RESPONSE_RESULT_OK:
                return "GET";
            case GoogleScorer.CLIENT_GAMES:
                return "POST";
            case GoogleScorer.CLIENT_PLUS:
                return "PUT";
            case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                return "DELETE";
            default:
                throw new IllegalStateException("Unknown method type.");
        }
    }

    protected n a(me.kiip.internal.a.i iVar) {
        n a = super.a(iVar);
        return (a.a == null || !((JSONObject) a.a).has(ErrorUtil.ERROR)) ? a : n.a(new me.kiip.internal.m.a(((JSONObject) a.a).optString(ErrorUtil.ERROR)));
    }

    public void a(String str, String str2) {
        this.b = str;
        this.c = str2;
    }

    public void b_(s sVar) {
        String str = null;
        if (sVar.a != null) {
            try {
                str = new JSONObject(new String(sVar.a.b)).optString(ErrorUtil.ERROR, null);
            } catch (JSONException e) {
            }
        }
        if (str != null) {
            sVar = new me.kiip.internal.m.a(str);
        }
        super.b(sVar);
    }

    public Map g() {
        Map hashMap = new HashMap();
        try {
            String format = a.format(new Date());
            MessageDigest instance = MessageDigest.getInstance("MD5");
            Key secretKeySpec = new SecretKeySpec(this.c.getBytes(), "HmacSHA1");
            Mac instance2 = Mac.getInstance("HmacSHA1");
            instance.update(o());
            String format2 = String.format("%s\n%s\n%s\n%s\n%s", new Object[]{v(), me.kiip.internal.h.a.a(instance.digest(), GoogleScorer.CLIENT_PLUS), n(), format, Uri.parse(c()).getPath()});
            instance2.init(secretKeySpec);
            String a = me.kiip.internal.h.a.a(instance2.doFinal(format2.getBytes()), GoogleScorer.CLIENT_PLUS);
            hashMap.put("Date", format);
            hashMap.put("Content-MD5", str);
            hashMap.put("Authorization", String.format("KiipV2 %s:%s", new Object[]{this.b, a}));
        } catch (NoSuchAlgorithmException e) {
        } catch (InvalidKeyException e2) {
        }
        return hashMap;
    }
}
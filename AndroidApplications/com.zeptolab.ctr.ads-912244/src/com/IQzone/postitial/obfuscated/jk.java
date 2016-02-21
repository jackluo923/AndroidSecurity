package com.IQzone.postitial.obfuscated;

import android.content.Context;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.telephony.TelephonyManager;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.IQzone.postitial.configuration.module.Reflected3AdModule;
import com.admarvel.android.ads.AdMarvelAd;
import com.admarvel.android.ads.AdMarvelView;
import com.admarvel.android.ads.Version;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.utils.HTMLEncoder;
import com.zeptolab.zbuild.ZBuildConfig;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import javax.xml.parsers.ParserConfigurationException;
import org.xml.sax.SAXException;

public class jk extends ak {
    private static final ql i;
    private final gp j;
    private final gb k;
    private final Executor l;
    private final ExecutorService m;

    static {
        i = new ql();
    }

    public jk(Context context, mx mxVar, mx mxVar2, mx mxVar3, mx mxVar4, mx mxVar5, mx mxVar6, Handler handler) {
        super(context, mxVar, mxVar2, mxVar3, mxVar4, mxVar5, mxVar6, handler);
        this.j = new gp();
        this.k = new gb();
        this.l = new nr(Executors.newSingleThreadExecutor());
        this.m = new nr(Executors.newFixedThreadPool(GoogleScorer.CLIENT_PLUS));
    }

    private static String a(Map map, String str) {
        if (map == null) {
            return null;
        }
        StringBuilder stringBuilder = new StringBuilder();
        Iterator it = map.keySet().iterator();
        while (it.hasNext()) {
            String str2 = (String) it.next();
            String toString = map.get(str2).toString();
            if (toString != null && toString.length() > 0) {
                if (stringBuilder.length() > 0) {
                    stringBuilder.append(str);
                }
                try {
                    stringBuilder.append(URLEncoder.encode(str2, HTMLEncoder.ENCODE_NAME_DEFAULT)).append("=>").append(URLEncoder.encode(toString, HTMLEncoder.ENCODE_NAME_DEFAULT));
                } catch (UnsupportedEncodingException e) {
                    ql qlVar = i;
                }
            }
        }
        return stringBuilder.toString();
    }

    private static Map a(String str) {
        ql qlVar = i;
        new StringBuilder("parsing ").append(str).toString();
        Map hashMap = new HashMap();
        String[] split = str.split(";");
        int length = split.length;
        int i = 0;
        while (i < length) {
            String str2 = split[i];
            if (str2.contains("=")) {
                String[] split2 = str2.split("=");
                String str3 = split2[0];
                str2 = split2[1];
                hashMap.put(str3, str2);
                ql qlVar2 = i;
                new StringBuilder("key = ").append(str3).toString();
                ql qlVar3 = i;
                new StringBuilder("value = ").append(str2).toString();
            }
            i++;
        }
        return hashMap;
    }

    static /* synthetic */ void a(jk jkVar, ViewGroup viewGroup, View view, boolean z) {
        jkVar.k().a(null);
        Runnable kkVar = new kk(jkVar, viewGroup, view, (RelativeLayout) new by(jkVar.i()).a());
        if (Looper.getMainLooper() == Looper.myLooper()) {
            kkVar.run();
        } else {
            jkVar.h().post(kkVar);
        }
        jkVar.h().postDelayed(new kl(jkVar), 7000);
    }

    static /* synthetic */ void a(jk jkVar, AdMarvelView adMarvelView, AdMarvelAd adMarvelAd, ViewGroup viewGroup, mx mxVar, int i, int i2, kn knVar) {
        LayoutParams layoutParams;
        RelativeLayout relativeLayout = new RelativeLayout(jkVar.i());
        if (i > 0) {
            layoutParams = new LayoutParams(i, i2);
        } else {
            adMarvelView.setGravity(ZBuildConfig.$targetsdk);
            layoutParams = new LayoutParams(-2, -2);
        }
        layoutParams.addRule(R.styleable.MapAttrs_zOrderOnTop);
        pw puVar = new pu();
        try {
            puVar.a(Long.valueOf(0));
        } catch (om e) {
            ql qlVar = i;
        }
        adMarvelView.setListener(new jx(jkVar, puVar, relativeLayout, mxVar));
        mxVar.a(new ah(true, false, new kb(jkVar, puVar, knVar, adMarvelView, adMarvelAd, relativeLayout, layoutParams, viewGroup), (byte) 0));
    }

    static /* synthetic */ void a(jk jkVar, String str, String str2, ViewGroup viewGroup, mx mxVar) {
        mx mxVar2 = null;
        boolean z = false;
        ql qlVar = i;
        try {
            Map b = Reflected3AdModule.b();
            String str3 = Version.ADMARVEL_API_VERSION;
            String str4 = "java";
            String str5 = "xml";
            String str6 = "http://ads.admarvel.com/fam/vastGetAd.php";
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(URLEncoder.encode("site_id", HTMLEncoder.ENCODE_NAME_DEFAULT)).append("=").append(URLEncoder.encode(str2, HTMLEncoder.ENCODE_NAME_DEFAULT));
            stringBuilder.append("&").append(URLEncoder.encode("partner_id", HTMLEncoder.ENCODE_NAME_DEFAULT)).append("=").append(URLEncoder.encode(str, HTMLEncoder.ENCODE_NAME_DEFAULT));
            stringBuilder.append("&").append(URLEncoder.encode("timeout", HTMLEncoder.ENCODE_NAME_DEFAULT)).append("=").append(URLEncoder.encode(Integer.toString(GoogleScorer.CLIENT_PLUS), HTMLEncoder.ENCODE_NAME_DEFAULT));
            stringBuilder.append("&").append(URLEncoder.encode("version", HTMLEncoder.ENCODE_NAME_DEFAULT)).append("=").append(URLEncoder.encode(str3, HTMLEncoder.ENCODE_NAME_DEFAULT));
            stringBuilder.append("&").append(URLEncoder.encode("language", HTMLEncoder.ENCODE_NAME_DEFAULT)).append("=").append(URLEncoder.encode(str4, HTMLEncoder.ENCODE_NAME_DEFAULT));
            stringBuilder.append("&").append(URLEncoder.encode("format", HTMLEncoder.ENCODE_NAME_DEFAULT)).append("=").append(URLEncoder.encode(str5, HTMLEncoder.ENCODE_NAME_DEFAULT));
            String a = a(b, "||");
            if (a != null && a.length() > 0) {
                stringBuilder.append("&").append(URLEncoder.encode("target_params", HTMLEncoder.ENCODE_NAME_DEFAULT)).append("=").append(URLEncoder.encode(a, HTMLEncoder.ENCODE_NAME_DEFAULT));
            }
            b = new HashMap();
            b.put("Content-Length", Integer.toString(stringBuilder.length()));
            ql qlVar2 = i;
            new StringBuilder("params ").append(stringBuilder.toString()).toString();
            a = qd.a(new URL(str6), b, stringBuilder.toString());
            qlVar2 = i;
            new StringBuilder("response ").append(a).toString();
            ks ksVar = new ks();
            ksVar.a(a);
            qlVar = i;
            new StringBuilder("click through ").append(ksVar.f()).toString();
            qlVar = i;
            new StringBuilder("data ").append(ksVar.h()).toString();
            if (ksVar.h() != null) {
                File file = new File(Environment.getExternalStorageDirectory().getPath() + "/postitial/ads/video");
                file.mkdirs();
                File file2 = new File(file, jkVar.i().getPackageName() + "-video-cache-file" + (ksVar.h().toLowerCase().endsWith(".mp4") ? ".mp4" : AdTrackerConstants.BLANK));
                bh.a(new FileOutputStream(file2), ksVar.h());
                qlVar = i;
                jkVar.h().post(new jq(jkVar, ksVar, viewGroup, file2, mxVar));
            } else {
                mxVar.a(new ah(false, false, null));
            }
        } catch (FileNotFoundException e) {
            qlVar = i;
            mxVar.a(new ah(false, false, null));
        } catch (MalformedURLException e2) {
            qlVar = i;
            mxVar.a(new ah(false, false, null));
        } catch (IOException e3) {
            qlVar = i;
            mxVar.a(new ah(false, false, null));
        } catch (pz e4) {
            qlVar = i;
            mxVar.a(new ah(z, z, mxVar2, z));
        } catch (ParserConfigurationException e5) {
            qlVar = i;
            mxVar.a(new ah(z, z, mxVar2, z));
        } catch (SAXException e6) {
            qlVar = i;
            mxVar.a(new ah(z, z, mxVar2, z));
        }
    }

    static /* synthetic */ void a(jk jkVar, String str, String str2, ViewGroup viewGroup, mx mxVar, int i, int i2, kn knVar, boolean z, boolean z2) {
        ql qlVar = i;
        AdMarvelView adMarvelView = new AdMarvelView(jkVar.i());
        adMarvelView.setPostitialView(true);
        if (z) {
            adMarvelView.setEnableFitToScreenForTablets(true);
        }
        adMarvelView.setExtendedListener(new jv(jkVar, z2, viewGroup, mxVar, -1, -1, knVar));
        adMarvelView.setListener(new jw(jkVar, mxVar));
        adMarvelView.fetchNewAd(Reflected3AdModule.b(), str, str2);
    }

    static /* synthetic */ boolean a(jk jkVar, Context context) {
        return ((TelephonyManager) context.getSystemService(ZBuildConfig.device)).getPhoneType() == 0;
    }

    public final void a() {
        super.a();
        File file = new File(Environment.getExternalStorageDirectory().getPath() + "/postitial/ads/video");
        File file2 = new File(file, i().getPackageName() + "-video-cache-file.mp4");
        File file3 = new File(file, i().getPackageName() + "-video-cache-file");
        if (file2.exists()) {
            file2.delete();
        }
        if (file3.exists()) {
            file3.delete();
        }
    }

    public final void a(m mVar, String str, ViewGroup viewGroup, mx mxVar, boolean z) {
        ql qlVar = i;
        new StringBuilder("attempting ").append(mVar).toString();
        String str2 = (String) a(str).get(mVar.toString());
        if (str2 == null || !str2.contains(":")) {
            qlVar = i;
            mxVar.a(new ah(false, false, null, (byte) 0));
        } else {
            h().post(new jm(this, mVar, mxVar, str2.split(":"), viewGroup, z));
        }
    }

    public final Set b() {
        Set muVar = new mu();
        muVar.add(new gg());
        return muVar;
    }

    public final Set c() {
        Set muVar = new mu();
        muVar.add(this.k);
        return muVar;
    }

    public final Set d() {
        Set muVar = new mu();
        muVar.add(new go());
        return muVar;
    }

    public final Set e() {
        Set muVar = new mu();
        muVar.add(this.j);
        return muVar;
    }
}
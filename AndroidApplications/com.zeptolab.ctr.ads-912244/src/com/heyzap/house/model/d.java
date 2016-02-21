package com.heyzap.house.model;

import android.os.AsyncTask;
import com.admarvel.android.ads.Constants;
import com.heyzap.house.model.AdModel.HtmlAssetFetcher;
import com.heyzap.internal.GenericCallback;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.io.IOException;
import java.net.MalformedURLException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

final class d extends AsyncTask {
    final /* synthetic */ List a;
    final /* synthetic */ Map b;
    final /* synthetic */ List c;
    final /* synthetic */ Map d;
    final /* synthetic */ String e;
    final /* synthetic */ AdModel f;
    final /* synthetic */ GenericCallback g;

    d(List list, Map map, List list2, Map map2, String str, AdModel adModel, GenericCallback genericCallback) {
        this.a = list;
        this.b = map;
        this.c = list2;
        this.d = map2;
        this.e = str;
        this.f = adModel;
        this.g = genericCallback;
    }

    protected Void a(Void... voidArr) {
        String str;
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            str = (String) it.next();
            try {
                Object replace = HtmlAssetFetcher.getBase64FromUrl(str).replace(Constants.FORMATTER, AdTrackerConstants.BLANK);
            } catch (MalformedURLException e) {
                replace = null;
            } catch (IOException e2) {
                e2.printStackTrace();
                replace = null;
            }
            if (replace != null) {
                this.b.put(str, replace);
            }
        }
        it = this.c.iterator();
        while (it.hasNext()) {
            try {
                replace = HtmlAssetFetcher.getBase64FromUrl((String) it.next()).replace(Constants.FORMATTER, AdTrackerConstants.BLANK);
            } catch (MalformedURLException e3) {
                e3.printStackTrace();
                replace = null;
            } catch (IOException e4) {
                e4.printStackTrace();
                replace = null;
            }
            if (replace != null) {
                this.d.put(String.format("\"%s\"", new Object[]{str}), replace);
            }
        }
        str = this.e;
        Iterator it2 = this.b.entrySet().iterator();
        String str2 = str;
        while (it2.hasNext()) {
            Entry entry = (Entry) it2.next();
            str2 = str2.replace((String) entry.getKey(), "data:application/octet-stream;base64," + ((String) entry.getValue()));
        }
        it2 = this.d.entrySet().iterator();
        while (it2.hasNext()) {
            entry = (Entry) it2.next();
            str2 = str2.replace((String) entry.getKey(), "data:text/css;base64," + ((String) entry.getValue()));
        }
        this.f.setHtmlData(str2);
        if (this.g != null) {
            this.g.onCallback(this.f, null);
        }
        return null;
    }

    protected /* synthetic */ Object doInBackground(Object[] objArr) {
        return a((Void[]) objArr);
    }
}
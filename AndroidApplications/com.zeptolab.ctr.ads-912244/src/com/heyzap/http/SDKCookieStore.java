package com.heyzap.http;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.http.client.CookieStore;
import org.apache.http.cookie.Cookie;
import org.apache.http.impl.cookie.BasicClientCookie;

public class SDKCookieStore implements CookieStore {
    private static final String COOKIE_NAME_PREFIX = "cookie_";
    private static final String COOKIE_NAME_STORE = "names";
    private static final String COOKIE_PREFS = "CookiePrefsFile";
    private static final SimpleDateFormat DATE_FORMAT;
    private Context context;
    private final SharedPreferences cookiePrefs;
    private final ConcurrentHashMap cookies;

    static {
        DATE_FORMAT = new SimpleDateFormat("EEE, dd-MMM-yyyy hh:mm:ss z");
    }

    public SDKCookieStore(Context context) {
        this.cookiePrefs = context.getSharedPreferences(COOKIE_PREFS, IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE);
        this.cookies = new ConcurrentHashMap();
        this.context = context;
    }

    public void addCookie(Cookie cookie) {
        String name = cookie.getName();
        if (cookie.isExpired(new Date())) {
            this.cookies.remove(name);
        } else {
            this.cookies.put(name, cookie);
        }
    }

    public void addCookies(String str) {
        String[] split = str.split(";\\s+");
        int length = split.length;
        int i = 0;
        while (i < length) {
            String[] split2 = split[i].split(";");
            if (split2.length > 0) {
                split2 = split2[0].split("=");
                if (split2.length == 2) {
                    Cookie basicClientCookie = new BasicClientCookie(split2[0], split2[1]);
                    basicClientCookie.setDomain(".heyzap.com");
                    addCookie(basicClientCookie);
                }
            }
            i++;
        }
    }

    public void clear() {
        this.cookies.clear();
    }

    public boolean clearExpired(Date date) {
        Editor edit = this.cookiePrefs.edit();
        Iterator it = this.cookies.entrySet().iterator();
        boolean z = false;
        while (it.hasNext()) {
            boolean z2;
            Entry entry = (Entry) it.next();
            String str = (String) entry.getKey();
            if (((Cookie) entry.getValue()).isExpired(date)) {
                this.cookies.remove(str);
                edit.remove(COOKIE_NAME_PREFIX + str);
                z2 = 1;
            } else {
                z2 = z;
            }
            z = z2;
        }
        if (z) {
            edit.putString(COOKIE_NAME_STORE, TextUtils.join(",", this.cookies.keySet()));
        }
        edit.commit();
        return z;
    }

    public String getCookieString() {
        Iterable arrayList = new ArrayList();
        Iterator it = this.cookies.values().iterator();
        while (it.hasNext()) {
            arrayList.add(getCookieString((Cookie) it.next()));
        }
        return TextUtils.join("; ", arrayList);
    }

    public String getCookieString(Cookie cookie) {
        return String.format("%s=%s", new Object[]{cookie.getName(), cookie.getValue()});
    }

    public List getCookies() {
        return new ArrayList(this.cookies.values());
    }
}
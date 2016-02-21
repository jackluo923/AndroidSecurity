package com.loopj.android.http;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import com.millennialmedia.android.MMException;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.http.client.CookieStore;
import org.apache.http.cookie.Cookie;

public class PersistentCookieStore implements CookieStore {
    private static final String COOKIE_NAME_PREFIX = "cookie_";
    private static final String COOKIE_NAME_STORE = "names";
    private static final String COOKIE_PREFS = "CookiePrefsFile";
    private final SharedPreferences cookiePrefs;
    private final ConcurrentHashMap cookies;

    public PersistentCookieStore(Context context) {
        int i = 0;
        this.cookiePrefs = context.getSharedPreferences(COOKIE_PREFS, 0);
        this.cookies = new ConcurrentHashMap();
        String string = this.cookiePrefs.getString(COOKIE_NAME_STORE, null);
        if (string != null) {
            String[] split = TextUtils.split(string, ",");
            int length = split.length;
            while (i < length) {
                String str = split[i];
                String string2 = this.cookiePrefs.getString(COOKIE_NAME_PREFIX + str, null);
                if (string2 != null) {
                    Cookie decodeCookie = decodeCookie(string2);
                    if (decodeCookie != null) {
                        this.cookies.put(str, decodeCookie);
                    }
                }
                i++;
            }
            clearExpired(new Date());
        }
    }

    public void addCookie(Cookie cookie) {
        String name = cookie.getName();
        if (cookie.isExpired(new Date())) {
            this.cookies.remove(name);
        } else {
            this.cookies.put(name, cookie);
        }
        Editor edit = this.cookiePrefs.edit();
        edit.putString(COOKIE_NAME_STORE, TextUtils.join(",", this.cookies.keySet()));
        edit.putString(COOKIE_NAME_PREFIX + name, encodeCookie(new SerializableCookie(cookie)));
        edit.commit();
    }

    protected String byteArrayToHexString(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer(bArr.length * 2);
        int length = bArr.length;
        int i = 0;
        while (i < length) {
            int i2 = bArr[i] & 255;
            if (i2 < 16) {
                stringBuffer.append('0');
            }
            stringBuffer.append(Integer.toHexString(i2));
            i++;
        }
        return stringBuffer.toString().toUpperCase();
    }

    public void clear() {
        this.cookies.clear();
        Editor edit = this.cookiePrefs.edit();
        Iterator it = this.cookies.keySet().iterator();
        while (it.hasNext()) {
            edit.remove(COOKIE_NAME_PREFIX + ((String) it.next()));
        }
        edit.remove(COOKIE_NAME_STORE);
        edit.commit();
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

    protected Cookie decodeCookie(String str) {
        Cookie cookie = null;
        try {
            return ((SerializableCookie) new ObjectInputStream(new ByteArrayInputStream(hexStringToByteArray(str))).readObject()).getCookie();
        } catch (Exception e) {
            e.printStackTrace();
            return cookie;
        }
    }

    protected String encodeCookie(SerializableCookie serializableCookie) {
        OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            new ObjectOutputStream(byteArrayOutputStream).writeObject(serializableCookie);
            return byteArrayToHexString(byteArrayOutputStream.toByteArray());
        } catch (Exception e) {
            return null;
        }
    }

    public List getCookies() {
        return new ArrayList(this.cookies.values());
    }

    protected byte[] hexStringToByteArray(String str) {
        int length = str.length();
        byte[] bArr = new byte[(length / 2)];
        int i = 0;
        while (i < length) {
            bArr[i / 2] = (byte) (Character.digit(str.charAt(i), MMException.REQUEST_NOT_PERMITTED) << 4 + Character.digit(str.charAt(i + 1), MMException.REQUEST_NOT_PERMITTED));
            i += 2;
        }
        return bArr;
    }
}
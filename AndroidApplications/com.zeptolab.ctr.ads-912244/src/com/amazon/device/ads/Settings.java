package com.amazon.device.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Build.VERSION;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.locks.ReentrantLock;

class Settings {
    public static final String SETTING_ENABLE_WEBVIEW_PAUSE_LOGIC = "shouldPauseWebViewTimersInWebViewRelatedActivities";
    protected static final String a = "testingEnabled";
    protected static final String b = "tlsEnabled";
    private static final String c;
    private static final String d = "AmazonMobileAds";
    private static Settings e;
    private ArrayList f;
    private final ReentrantLock g;
    private final ReentrantLock h;
    private final ConcurrentHashMap i;
    private SharedPreferences j;
    private final CountDownLatch k;

    static interface SettingsListener {
        void settingsLoaded();
    }

    class AnonymousClass_1 implements Runnable {
        final /* synthetic */ Context a;

        AnonymousClass_1(Context context) {
            this.a = context;
        }

        public void run() {
            Settings.this.c(this.a);
        }
    }

    class AnonymousClass_2 implements Runnable {
        final /* synthetic */ SharedPreferences a;

        AnonymousClass_2(SharedPreferences sharedPreferences) {
            this.a = sharedPreferences;
        }

        public void run() {
            Settings.this.h.lock();
            Editor edit = this.a.edit();
            edit.clear();
            Iterator it = Settings.this.i.entrySet().iterator();
            while (it.hasNext()) {
                Entry entry = (Entry) it.next();
                Value value = (Value) entry.getValue();
                if (!value.isTransientData) {
                    if (value.clazz == String.class) {
                        edit.putString((String) entry.getKey(), (String) value.value);
                    } else if (value.clazz == Long.class) {
                        edit.putLong((String) entry.getKey(), ((Long) value.value).longValue());
                    } else if (value.clazz == Integer.class) {
                        edit.putInt((String) entry.getKey(), ((Integer) value.value).intValue());
                    } else if (value.clazz == Boolean.class) {
                        edit.putBoolean((String) entry.getKey(), ((Boolean) value.value).booleanValue());
                    }
                }
            }
            Settings.this.a(edit);
            Settings.this.h.unlock();
        }
    }

    private class Value {
        public Class clazz;
        public boolean isTransientData;
        public Object value;

        public Value(Class cls, Object obj) {
            this.clazz = cls;
            this.value = obj;
        }
    }

    private class TransientValue extends Value {
        public TransientValue(Class cls, Object obj) {
            super(cls, obj);
            this.isTransientData = true;
        }
    }

    static {
        c = Settings.class.getSimpleName();
        e = new Settings();
    }

    protected Settings() {
        this.f = new ArrayList();
        this.g = new ReentrantLock();
        this.h = new ReentrantLock();
        this.k = new CountDownLatch(1);
        this.i = new ConcurrentHashMap();
    }

    protected static void a() {
        e = new Settings();
    }

    private void a(Editor editor) {
        if (ThreadUtils.isOnMainThread()) {
            Log.e(c, "Committing settings must be executed on a background thread.");
        }
        if (VERSION.SDK_INT >= 9) {
            AndroidTargetUtils.editorApply(editor);
        } else {
            editor.commit();
        }
    }

    protected static void a(Settings settings) {
        e = settings;
    }

    private void a(String str, Value value) {
        b(str, value);
        if (!value.isTransientData && isSettingsLoaded()) {
            flush();
        }
    }

    private void b(String str, Value value) {
        this.i.put(str, value);
    }

    private void e() {
        b(this.j);
    }

    public static Settings getInstance() {
        return e;
    }

    protected void a(Context context) {
        ThreadUtils.executeRunnable(new AnonymousClass_1(context));
    }

    protected void a(SharedPreferences sharedPreferences) {
        a(sharedPreferences.getAll());
    }

    protected void a(Map map) {
        Iterator it = map.entrySet().iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            String str = (String) entry.getKey();
            if (!(str == null || this.i.containsKey(str))) {
                Object value = entry.getValue();
                this.i.put(str, new Value(value.getClass(), value));
            }
        }
    }

    protected SharedPreferences b() {
        return this.j;
    }

    protected SharedPreferences b(Context context) {
        return context.getSharedPreferences(d, 0);
    }

    protected void b(SharedPreferences sharedPreferences) {
        ThreadUtils.executeRunnable(new AnonymousClass_2(sharedPreferences));
    }

    protected ConcurrentHashMap c() {
        return this.i;
    }

    protected void c(Context context) {
        if (!isSettingsLoaded()) {
            SharedPreferences b = b(context);
            a(b);
            this.j = b;
            b(b);
        }
        this.k.countDown();
        d();
    }

    public boolean containsKey(String str) {
        return this.i.containsKey(str);
    }

    public void contextReceived(Context context) {
        if (context != null) {
            a(context);
        }
    }

    protected void d() {
        this.g.lock();
        Iterator it = this.f.iterator();
        while (it.hasNext()) {
            ((SettingsListener) it.next()).settingsLoaded();
        }
        this.f.clear();
        this.f = null;
        this.g.unlock();
    }

    public void flush() {
        e();
    }

    public Boolean getBoolean(String str, Boolean bool) {
        Value value = (Value) this.i.get(str);
        return value == null ? bool : (Boolean) value.value;
    }

    public boolean getBoolean(String str, boolean z) {
        Boolean bool = getBoolean(str, null);
        return bool == null ? z : bool.booleanValue();
    }

    public int getInt(String str, int i) {
        Value value = (Value) this.i.get(str);
        return value == null ? i : ((Integer) value.value).intValue();
    }

    public long getLong(String str, long j) {
        Value value = (Value) this.i.get(str);
        return value == null ? j : ((Long) value.value).longValue();
    }

    public String getString(String str, String str2) {
        Value value = (Value) this.i.get(str);
        return value == null ? str2 : (String) value.value;
    }

    public boolean isSettingsLoaded() {
        return this.j != null;
    }

    public void listenForSettings(SettingsListener settingsListener) {
        this.g.lock();
        if (isSettingsLoaded()) {
            settingsListener.settingsLoaded();
        } else {
            this.f.add(settingsListener);
        }
        this.g.unlock();
    }

    public void putBoolean(String str, boolean z) {
        a(str, new Value(Boolean.class, Boolean.valueOf(z)));
    }

    public void putBooleanWithNoFlush(String str, boolean z) {
        b(str, new Value(Boolean.class, Boolean.valueOf(z)));
    }

    public void putInt(String str, int i) {
        a(str, new Value(Integer.class, Integer.valueOf(i)));
    }

    public void putIntWithNoFlush(String str, int i) {
        b(str, new Value(Integer.class, Integer.valueOf(i)));
    }

    public void putLong(String str, long j) {
        a(str, new Value(Long.class, Long.valueOf(j)));
    }

    public void putLongWithNoFlush(String str, long j) {
        b(str, new Value(Long.class, Long.valueOf(j)));
    }

    public void putString(String str, String str2) {
        a(str, new Value(String.class, str2));
    }

    public void putStringWithNoFlush(String str, String str2) {
        b(str, new Value(String.class, str2));
    }

    public void putTransientBoolean(String str, boolean z) {
        b(str, new TransientValue(Boolean.class, Boolean.valueOf(z)));
    }

    public void putTransientInt(String str, int i) {
        b(str, new TransientValue(Integer.class, Integer.valueOf(i)));
    }

    public void putTransientLong(String str, long j) {
        b(str, new TransientValue(Long.class, Long.valueOf(j)));
    }

    public void putTransientString(String str, String str2) {
        b(str, new TransientValue(String.class, str2));
    }

    public void remove(String str) {
        Value value = (Value) this.i.remove(str);
        if (value != null && !value.isTransientData && isSettingsLoaded()) {
            flush();
        }
    }

    public void removeWithNoFlush(String str) {
        this.i.remove(str);
    }
}
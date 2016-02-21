package com.mixpanel.android.mpmetrics;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.util.Log;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.UUID;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class w {
    private static boolean j = false;
    private static final Object k;
    private static final String l = "MixpanelAPI PersistentProperties";
    private final Future a;
    private final Future b;
    private final OnSharedPreferenceChangeListener c;
    private JSONObject d;
    private Map e;
    private boolean f;
    private String g;
    private String h;
    private JSONArray i;

    static {
        j = true;
        k = new Object();
    }

    public w(Future future, Future future2) {
        this.b = future;
        this.a = future2;
        this.d = null;
        this.e = null;
        this.f = false;
        this.c = new x(this);
    }

    public static JSONArray a(SharedPreferences sharedPreferences) {
        String string = sharedPreferences.getString("people_distinct_id", null);
        String string2 = sharedPreferences.getString("waiting_array", null);
        if (string2 == null || string == null) {
            return null;
        }
        try {
            JSONArray jSONArray = new JSONArray(string2);
            JSONArray jSONArray2 = new JSONArray();
            int i = 0;
            while (i < jSONArray.length()) {
                try {
                    JSONObject jSONObject = jSONArray.getJSONObject(i);
                    jSONObject.put("$distinct_id", string);
                    jSONArray2.put(jSONObject);
                } catch (JSONException e) {
                    Log.e(l, "Unparsable object found in waiting people records", e);
                }
                i++;
            }
            Editor edit = sharedPreferences.edit();
            edit.remove("waiting_array");
            edit.commit();
            return jSONArray2;
        } catch (JSONException e2) {
            Log.e(l, "Waiting people records were unreadable.");
            return null;
        }
    }

    public static void a(Context context, String str, Map map) {
        synchronized (k) {
            Editor edit = context.getSharedPreferences(str, 0).edit();
            edit.clear();
            Iterator it = map.entrySet().iterator();
            while (it.hasNext()) {
                Entry entry = (Entry) it.next();
                edit.putString((String) entry.getKey(), (String) entry.getValue());
            }
            edit.commit();
            j = true;
        }
    }

    private void k() {
        try {
            this.d = new JSONObject(((SharedPreferences) this.a.get()).getString("super_properties", "{}"));
            if (this.d == null) {
                this.d = new JSONObject();
            }
        } catch (Throwable th) {
            if (this.d == null) {
                this.d = new JSONObject();
            }
        }
    }

    private void l() {
        this.e = new HashMap();
        try {
            SharedPreferences sharedPreferences = (SharedPreferences) this.b.get();
            sharedPreferences.unregisterOnSharedPreferenceChangeListener(this.c);
            sharedPreferences.registerOnSharedPreferenceChangeListener(this.c);
            Iterator it = sharedPreferences.getAll().entrySet().iterator();
            while (it.hasNext()) {
                Entry entry = (Entry) it.next();
                this.e.put((String) entry.getKey(), entry.getValue().toString());
            }
        } catch (ExecutionException e) {
            Log.e(l, "Cannot load referrer properties from shared preferences.", e.getCause());
        } catch (InterruptedException e2) {
            Log.e(l, "Cannot load referrer properties from shared preferences.", e2);
        }
    }

    private void m() {
        if (this.d == null) {
            Log.e(l, "storeSuperProperties should not be called with uninitialized superPropertiesCache.");
        } else {
            String toString = this.d.toString();
            try {
                Editor edit = ((SharedPreferences) this.a.get()).edit();
                edit.putString("super_properties", toString);
                edit.commit();
            } catch (ExecutionException e) {
                Log.e(l, "Cannot store superProperties in shared preferences.", e.getCause());
            } catch (InterruptedException e2) {
                Log.e(l, "Cannot store superProperties in shared preferences.", e2);
            }
        }
    }

    private void n() {
        String string;
        String str = null;
        try {
            SharedPreferences sharedPreferences = (SharedPreferences) this.a.get();
        } catch (ExecutionException e) {
            Log.e(l, "Cannot read distinct ids from sharedPreferences.", e.getCause());
            string = str;
        } catch (InterruptedException e2) {
            Log.e(l, "Cannot read distinct ids from sharedPreferences.", e2);
            string = str;
        }
        if (sharedPreferences != null) {
            this.g = sharedPreferences.getString("events_distinct_id", str);
            this.h = sharedPreferences.getString("people_distinct_id", str);
            this.i = str;
            string = sharedPreferences.getString("waiting_array", str);
            if (string != null) {
                try {
                    this.i = new JSONArray(string);
                } catch (JSONException e3) {
                    Log.e(l, "Could not interpret waiting people JSON record " + string);
                }
            }
            if (this.g == null) {
                this.g = UUID.randomUUID().toString();
                o();
            }
            this.f = true;
        }
    }

    private void o() {
        try {
            Editor edit = ((SharedPreferences) this.a.get()).edit();
            edit.putString("events_distinct_id", this.g);
            edit.putString("people_distinct_id", this.h);
            if (this.i == null) {
                edit.remove("waiting_array");
            } else {
                edit.putString("waiting_array", this.i.toString());
            }
            edit.commit();
        } catch (ExecutionException e) {
            Log.e(l, "Can't write distinct ids to shared preferences.", e.getCause());
        } catch (InterruptedException e2) {
            Log.e(l, "Can't write distinct ids to shared preferences.", e2);
        }
    }

    public JSONObject a() {
        if (this.d == null) {
            k();
        }
        return this.d;
    }

    public void a(String str) {
        if (!this.f) {
            n();
        }
        this.g = str;
        o();
    }

    public void a(JSONObject jSONObject) {
        if (!this.f) {
            n();
        }
        if (this.i == null) {
            this.i = new JSONArray();
        }
        this.i.put(jSONObject);
        o();
    }

    public Map b() {
        synchronized (k) {
            if (j || this.e == null) {
                l();
                j = false;
            }
        }
        return this.e;
    }

    public void b(String str) {
        if (!this.f) {
            n();
        }
        this.h = str;
        o();
    }

    public void b(JSONObject jSONObject) {
        JSONObject a = a();
        Iterator keys = jSONObject.keys();
        while (keys.hasNext()) {
            String str = (String) keys.next();
            try {
                a.put(str, jSONObject.get(str));
            } catch (JSONException e) {
                Log.e(l, "Exception registering super property.", e);
            }
        }
        m();
    }

    public String c() {
        if (!this.f) {
            n();
        }
        return this.g;
    }

    public void c(String str) {
        try {
            Editor edit = ((SharedPreferences) this.a.get()).edit();
            edit.putString("push_id", str);
            edit.commit();
        } catch (ExecutionException e) {
            Log.e(l, "Can't write push id to shared preferences", e.getCause());
        } catch (InterruptedException e2) {
            Log.e(l, "Can't write push id to shared preferences", e2);
        }
    }

    public void c(JSONObject jSONObject) {
        JSONObject a = a();
        Iterator keys = jSONObject.keys();
        while (keys.hasNext()) {
            String str = (String) keys.next();
            if (!a.has(str)) {
                try {
                    a.put(str, jSONObject.get(str));
                } catch (JSONException e) {
                    Log.e(l, "Exception registering super property.", e);
                }
            }
        }
        m();
    }

    public String d() {
        if (!this.f) {
            n();
        }
        return this.h;
    }

    public void d(String str) {
        a().remove(str);
        m();
    }

    public JSONArray e() {
        JSONArray a;
        JSONArray jSONArray = null;
        try {
            a = a((SharedPreferences) this.a.get());
            try {
                n();
            } catch (ExecutionException e) {
                executionException = e;
                Log.e(l, "Couldn't read waiting people records from shared preferences.", executionException.getCause());
                return a;
            } catch (InterruptedException e2) {
                th = e2;
                Log.e(l, "Couldn't read waiting people records from shared preferences.", th);
                return a;
            }
        } catch (ExecutionException e3) {
            a = jSONArray;
            ExecutionException executionException2 = e3;
            Log.e(l, "Couldn't read waiting people records from shared preferences.", executionException2.getCause());
            return a;
        } catch (InterruptedException e4) {
            a = jSONArray;
            Throwable th2 = e4;
            Log.e(l, "Couldn't read waiting people records from shared preferences.", th2);
            return a;
        }
        return a;
    }

    public void f() {
        try {
            ((SharedPreferences) this.a.get()).edit().clear().commit();
            k();
            n();
        } catch (ExecutionException e) {
            throw new RuntimeException(e.getCause());
        } catch (InterruptedException e2) {
            throw new RuntimeException(e2.getCause());
        }
    }

    public void g() {
        try {
            Editor edit = ((SharedPreferences) this.a.get()).edit();
            edit.remove("push_id");
            edit.commit();
        } catch (ExecutionException e) {
            Log.e(l, "Can't write push id to shared preferences", e.getCause());
        } catch (InterruptedException e2) {
            Log.e(l, "Can't write push id to shared preferences", e2);
        }
    }

    public String h() {
        String str = null;
        try {
            return ((SharedPreferences) this.a.get()).getString("push_id", null);
        } catch (ExecutionException e) {
            Log.e(l, "Can't write push id to shared preferences", e.getCause());
            return str;
        } catch (InterruptedException e2) {
            Log.e(l, "Can't write push id to shared preferences", e2);
            return str;
        }
    }

    public void i() {
        this.d = new JSONObject();
        m();
    }
}
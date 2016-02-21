package com.heyzap.house.handler;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.heyzap.house.Manager;
import com.heyzap.http.JsonHttpResponseHandler;
import com.heyzap.internal.Logger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map.Entry;
import org.apache.http.Header;
import org.json.JSONObject;

class a extends JsonHttpResponseHandler {
    final /* synthetic */ Boolean a;
    final /* synthetic */ Context b;
    final /* synthetic */ ArrayList c;
    final /* synthetic */ AttributionHandler d;

    a(AttributionHandler attributionHandler, Boolean bool, Context context, ArrayList arrayList) {
        this.d = attributionHandler;
        this.a = bool;
        this.b = context;
        this.c = arrayList;
    }

    public void onFailure(int i, Header[] headerArr, Object obj, JSONObject jSONObject) {
        Logger.log(obj);
    }

    public void onSuccess(int i, Header[] headerArr, JSONObject jSONObject) {
        try {
            if (jSONObject.getInt("status") == 200 && !this.a.booleanValue()) {
                SharedPreferences sharedPreferences = this.b.getSharedPreferences(Manager.PREFERENCES_KEY, 0);
                Editor edit = sharedPreferences.edit();
                Iterator it = sharedPreferences.getAll().entrySet().iterator();
                while (it.hasNext()) {
                    Entry entry = (Entry) it.next();
                    if (((String) entry.getKey()).startsWith("impression") && this.c.contains(entry.getValue())) {
                        Logger.format("(INSTALL) %s (%s)", new Object[]{entry.getValue(), entry.getKey()});
                        edit.remove((String) entry.getKey());
                    }
                }
                edit.commit();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
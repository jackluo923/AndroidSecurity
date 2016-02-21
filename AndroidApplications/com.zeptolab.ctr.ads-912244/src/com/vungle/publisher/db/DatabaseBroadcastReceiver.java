package com.vungle.publisher.db;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.vungle.log.Logger;
import com.vungle.publisher.at;
import javax.inject.Inject;
import javax.inject.Singleton;

@Singleton
public class DatabaseBroadcastReceiver extends BroadcastReceiver {
    public boolean a;
    @Inject
    public Context b;
    @Inject
    DatabaseHelper c;
    @Inject
    at d;

    DatabaseBroadcastReceiver() {
        this.a = false;
    }

    public void onReceive(Context context, Intent intent) {
        if ("com.vungle.publisher.db.DUMP_TABLES".equals(intent.getAction())) {
            Logger.d(Logger.DATABASE_DUMP_TAG, this.d.b() + " received dump tables request");
            this.c.a(intent.getStringArrayExtra("tables"));
        }
    }
}
package com.vungle.publisher.db;

import a.a.b;
import a.a.l;
import android.content.Context;
import com.vungle.publisher.at;
import java.util.Set;
import javax.inject.Provider;

public final class DatabaseBroadcastReceiver$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;
    private b c;

    public DatabaseBroadcastReceiver$$InjectAdapter() {
        super("com.vungle.publisher.db.DatabaseBroadcastReceiver", "members/com.vungle.publisher.db.DatabaseBroadcastReceiver", true, DatabaseBroadcastReceiver.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("android.content.Context", (Object)DatabaseBroadcastReceiver.class, getClass().getClassLoader());
        this.b = lVar.a("com.vungle.publisher.db.DatabaseHelper", (Object)DatabaseBroadcastReceiver.class, getClass().getClassLoader());
        this.c = lVar.a("com.vungle.publisher.at", (Object)DatabaseBroadcastReceiver.class, getClass().getClassLoader());
    }

    public final DatabaseBroadcastReceiver get() {
        DatabaseBroadcastReceiver databaseBroadcastReceiver = new DatabaseBroadcastReceiver();
        injectMembers(databaseBroadcastReceiver);
        return databaseBroadcastReceiver;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
        set2.add(this.c);
    }

    public final void injectMembers(DatabaseBroadcastReceiver databaseBroadcastReceiver) {
        databaseBroadcastReceiver.b = (Context) this.a.get();
        databaseBroadcastReceiver.c = (DatabaseHelper) this.b.get();
        databaseBroadcastReceiver.d = (at) this.c.get();
    }
}
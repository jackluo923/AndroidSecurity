package com.vungle.publisher.db;

import a.a.b;
import a.a.l;
import android.content.Context;
import com.vungle.publisher.async.ScheduledPriorityExecutor;
import com.vungle.publisher.at;
import com.vungle.publisher.cj;
import com.vungle.publisher.file.CacheManager;
import java.util.Set;
import javax.inject.Provider;

public final class DatabaseHelper$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;
    private b c;
    private b d;
    private b e;

    public DatabaseHelper$$InjectAdapter() {
        super("com.vungle.publisher.db.DatabaseHelper", "members/com.vungle.publisher.db.DatabaseHelper", true, DatabaseHelper.class);
    }

    public final void attach(l lVar) {
        this.e = lVar.a("android.content.Context", (Object)DatabaseHelper.class, getClass().getClassLoader());
        this.a = lVar.a("com.vungle.publisher.file.CacheManager", (Object)DatabaseHelper.class, getClass().getClassLoader());
        this.b = lVar.a("com.vungle.publisher.cj", (Object)DatabaseHelper.class, getClass().getClassLoader());
        this.c = lVar.a("com.vungle.publisher.at", (Object)DatabaseHelper.class, getClass().getClassLoader());
        this.d = lVar.a("com.vungle.publisher.async.ScheduledPriorityExecutor", (Object)DatabaseHelper.class, getClass().getClassLoader());
    }

    public final DatabaseHelper get() {
        DatabaseHelper databaseHelper = new DatabaseHelper((Context) this.e.get());
        injectMembers(databaseHelper);
        return databaseHelper;
    }

    public final void getDependencies(Set set, Set set2) {
        set.add(this.e);
        set2.add(this.a);
        set2.add(this.b);
        set2.add(this.c);
        set2.add(this.d);
    }

    public final void injectMembers(DatabaseHelper databaseHelper) {
        databaseHelper.a = (CacheManager) this.a.get();
        databaseHelper.b = (cj) this.b.get();
        databaseHelper.c = (at) this.c.get();
        databaseHelper.d = (ScheduledPriorityExecutor) this.d.get();
    }
}
package com.andymstone.core;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageManager.NameNotFoundException;
import android.preference.PreferenceManager;

class z {
    Context a;
    SharedPreferences b;

    z(Context context) {
        this.a = context;
        this.b = a(context);
    }

    static SharedPreferences a(Context context) {
        return PreferenceManager.getDefaultSharedPreferences(context);
    }

    static void b(Context context) {
        Editor edit = a(context).edit();
        edit.putBoolean("rate_dontshowagain", true);
        edit.commit();
    }

    void a() {
        if (!this.b.contains("rate_launch_count")) {
            SharedPreferences sharedPreferences = this.a.getSharedPreferences("apprater", 0);
            if (sharedPreferences.contains("launch_count")) {
                Editor edit = this.b.edit();
                edit.putLong("rate_launch_count", sharedPreferences.getLong("launch_count", 0));
                edit.putLong("rate_date_firstlaunch", sharedPreferences.getLong("date_firstlaunch", 0));
                if (sharedPreferences.contains("dontshowagain")) {
                    edit.putBoolean("rate_dontshowagain", sharedPreferences.getBoolean("dontshowagain", false));
                }
                edit.commit();
            }
        }
    }

    void a(long j) {
        Editor edit = this.b.edit();
        edit.putLong("lastRunVersionCode", j);
        edit.commit();
    }

    long b() {
        return this.b.getLong("gopro_date_lastshown", 0);
    }

    long c() {
        return this.b.getLong("rate_lastshown", 0);
    }

    long d() {
        return this.b.getLong("rate_date_firstlaunch", 0);
    }

    long e() {
        return this.b.getLong("rate_launch_count", 0);
    }

    void f() {
        this.b.edit().putLong("gopro_date_lastshown", System.currentTimeMillis()).commit();
    }

    void g() {
        this.b.edit().putLong("rate_lastshown", System.currentTimeMillis()).commit();
    }

    void h() {
        this.b.edit().putLong("dialogLastShown", System.currentTimeMillis()).commit();
    }

    long i() {
        return this.b.getLong("dialogLastShown", 0);
    }

    long j() {
        return this.b.getLong("lastRunVersionCode", 0);
    }

    void k() {
        Editor edit = this.b.edit();
        edit.putLong("rate_launch_count", this.b.getLong("rate_launch_count", 0) + 1);
        if (this.b.getLong("rate_date_firstlaunch", 0) == 0) {
            edit.putLong("rate_date_firstlaunch", System.currentTimeMillis());
        }
        edit.commit();
    }

    boolean l() {
        return this.b.getBoolean("rate_dontshowagain", false);
    }

    long m() {
        try {
            return (long) this.a.getPackageManager().getPackageInfo(this.a.getPackageName(), 128).versionCode;
        } catch (NameNotFoundException e) {
            return -1;
        }
    }
}
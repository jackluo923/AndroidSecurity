package com.google.ads.mediation;

import android.content.Context;
import android.location.Location;
import com.google.ads.AdRequest;
import com.google.ads.AdRequest.Gender;
import java.util.Collections;
import java.util.Date;
import java.util.Set;

public class MediationAdRequest {
    private AdRequest a;
    private boolean b;
    private boolean c;

    public MediationAdRequest(AdRequest adRequest, Context context, boolean z) {
        this.a = adRequest;
        this.c = z;
        if (context == null) {
            this.b = true;
        } else {
            this.b = adRequest.b(context);
        }
    }

    public Gender a() {
        return this.a.a();
    }

    public Date b() {
        return this.a.b();
    }

    public Set c() {
        return this.a.c() == null ? null : Collections.unmodifiableSet(this.a.c());
    }

    public Location d() {
        return (this.a.d() == null || !this.c) ? null : new Location(this.a.d());
    }

    public boolean e() {
        return this.b;
    }
}
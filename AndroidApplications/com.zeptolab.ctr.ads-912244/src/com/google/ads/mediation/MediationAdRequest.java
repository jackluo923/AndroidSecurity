package com.google.ads.mediation;

import android.location.Location;
import com.google.ads.AdRequest.Gender;
import java.util.Date;
import java.util.Set;

@Deprecated
public final class MediationAdRequest {
    private final Date d;
    private final Gender e;
    private final Set f;
    private final boolean g;

    public MediationAdRequest(Date date, Gender gender, Set set, boolean z) {
        this.d = date;
        this.e = gender;
        this.f = set;
        this.g = z;
    }

    public Integer getAgeInYears() {
        return null;
    }

    public Date getBirthday() {
        return this.d;
    }

    public Gender getGender() {
        return this.e;
    }

    public Set getKeywords() {
        return this.f;
    }

    public Location getLocation() {
        return null;
    }

    public boolean isTesting() {
        return this.g;
    }
}
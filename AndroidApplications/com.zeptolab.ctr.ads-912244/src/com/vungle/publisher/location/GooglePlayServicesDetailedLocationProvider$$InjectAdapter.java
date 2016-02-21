package com.vungle.publisher.location;

import a.a.b;
import a.a.l;
import android.content.Context;
import java.util.Set;
import javax.inject.Provider;

public final class GooglePlayServicesDetailedLocationProvider$$InjectAdapter extends b implements a.b, Provider {
    private b a;

    public GooglePlayServicesDetailedLocationProvider$$InjectAdapter() {
        super("com.vungle.publisher.location.GooglePlayServicesDetailedLocationProvider", "members/com.vungle.publisher.location.GooglePlayServicesDetailedLocationProvider", true, GooglePlayServicesDetailedLocationProvider.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("android.content.Context", (Object)GooglePlayServicesDetailedLocationProvider.class, getClass().getClassLoader());
    }

    public final GooglePlayServicesDetailedLocationProvider get() {
        GooglePlayServicesDetailedLocationProvider googlePlayServicesDetailedLocationProvider = new GooglePlayServicesDetailedLocationProvider();
        injectMembers(googlePlayServicesDetailedLocationProvider);
        return googlePlayServicesDetailedLocationProvider;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
    }

    public final void injectMembers(GooglePlayServicesDetailedLocationProvider googlePlayServicesDetailedLocationProvider) {
        googlePlayServicesDetailedLocationProvider.a = (Context) this.a.get();
    }
}
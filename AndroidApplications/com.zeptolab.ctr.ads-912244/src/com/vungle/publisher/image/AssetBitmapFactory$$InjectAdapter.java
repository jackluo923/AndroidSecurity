package com.vungle.publisher.image;

import a.a.b;
import a.a.l;
import android.content.Context;
import java.util.Set;
import javax.inject.Provider;

public final class AssetBitmapFactory$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;

    public AssetBitmapFactory$$InjectAdapter() {
        super("com.vungle.publisher.image.AssetBitmapFactory", "members/com.vungle.publisher.image.AssetBitmapFactory", true, AssetBitmapFactory.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("android.content.Context", (Object)AssetBitmapFactory.class, getClass().getClassLoader());
        this.b = lVar.a("members/com.vungle.publisher.image.BaseBitmapFactory", AssetBitmapFactory.class, getClass().getClassLoader(), false, true);
    }

    public final AssetBitmapFactory get() {
        AssetBitmapFactory assetBitmapFactory = new AssetBitmapFactory();
        injectMembers(assetBitmapFactory);
        return assetBitmapFactory;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
    }

    public final void injectMembers(AssetBitmapFactory assetBitmapFactory) {
        assetBitmapFactory.a = (Context) this.a.get();
        this.b.injectMembers(assetBitmapFactory);
    }
}
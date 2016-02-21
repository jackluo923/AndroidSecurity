package com.vungle.publisher.display.view;

import a.a.b;
import a.a.l;
import android.media.AudioManager;
import com.vungle.publisher.audio.VolumeChangeContentObserver.Factory;
import com.vungle.publisher.cj;
import com.vungle.publisher.image.BitmapFactory;
import java.util.Set;
import javax.inject.Provider;

public final class VideoFragment$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;
    private b c;
    private b d;
    private b e;
    private b f;
    private b g;
    private b h;
    private b i;

    public VideoFragment$$InjectAdapter() {
        super("com.vungle.publisher.display.view.VideoFragment", "members/com.vungle.publisher.display.view.VideoFragment", false, VideoFragment.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.display.view.AlertDialogFactory", (Object)VideoFragment.class, getClass().getClassLoader());
        this.b = lVar.a("android.media.AudioManager", (Object)VideoFragment.class, getClass().getClassLoader());
        this.c = lVar.a("com.vungle.publisher.image.BitmapFactory", (Object)VideoFragment.class, getClass().getClassLoader());
        this.d = lVar.a("com.vungle.publisher.display.view.CountdownProgressView$Factory", (Object)VideoFragment.class, getClass().getClassLoader());
        this.e = lVar.a("com.vungle.publisher.display.view.DisplayUtils", (Object)VideoFragment.class, getClass().getClassLoader());
        this.f = lVar.a("com.vungle.publisher.cj", (Object)VideoFragment.class, getClass().getClassLoader());
        this.g = lVar.a("com.vungle.publisher.audio.VolumeChangeContentObserver$Factory", (Object)VideoFragment.class, getClass().getClassLoader());
        this.h = lVar.a("com.vungle.publisher.display.view.VideoFragment$Factory", (Object)VideoFragment.class, getClass().getClassLoader());
        this.i = lVar.a("members/com.vungle.publisher.display.view.AdFragment", VideoFragment.class, getClass().getClassLoader(), false, true);
    }

    public final VideoFragment get() {
        VideoFragment videoFragment = new VideoFragment();
        injectMembers(videoFragment);
        return videoFragment;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
        set2.add(this.c);
        set2.add(this.d);
        set2.add(this.e);
        set2.add(this.f);
        set2.add(this.g);
        set2.add(this.h);
        set2.add(this.i);
    }

    public final void injectMembers(VideoFragment videoFragment) {
        videoFragment.k = (AlertDialogFactory) this.a.get();
        videoFragment.l = (AudioManager) this.b.get();
        videoFragment.m = (BitmapFactory) this.c.get();
        videoFragment.n = (Factory) this.d.get();
        videoFragment.o = (DisplayUtils) this.e.get();
        videoFragment.p = (cj) this.f.get();
        videoFragment.q = (Factory) this.g.get();
        videoFragment.r = (VideoFragment.Factory) this.h.get();
        this.i.injectMembers(videoFragment);
    }
}
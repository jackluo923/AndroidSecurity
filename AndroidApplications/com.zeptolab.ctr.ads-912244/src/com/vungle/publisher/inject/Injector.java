package com.vungle.publisher.inject;

import a.d;
import android.content.Context;
import com.vungle.log.Logger;
import com.vungle.publisher.bc;
import com.vungle.publisher.bd;
import com.vungle.publisher.env.WrapperFramework;
import com.vungle.publisher.image.BitmapFactory;

public class Injector implements bd {
    private static final Injector b;
    public d a;
    private boolean c;
    private bc d;
    private bd e;

    static {
        b = new Injector();
    }

    private Injector() {
    }

    private bd a() {
        if (this.e == null) {
            this.e = new ConfigurablePublisherModule();
        }
        return this.e;
    }

    public static Injector getInstance() {
        return b;
    }

    public final void a(Context context, String str) {
        try {
            if (this.c) {
                Logger.d(Logger.INJECT_TAG, "already initialized");
            } else {
                Logger.d(Logger.INJECT_TAG, "initializing");
                a().a(context, str);
                if (this.d == null) {
                    this.a = d.b(new Object[]{bdVar});
                } else {
                    this.a = d.b(new Object[]{bdVar, this.d});
                }
                this.c = true;
            }
        } catch (Exception e) {
            Logger.e(Logger.INJECT_TAG, "error initializing injector", e);
        }
    }

    public final void a(Class cls) {
        try {
            if (this.c) {
                Logger.d(Logger.INJECT_TAG, "full screen ad activity class in injector NOT set - already initialized");
            } else {
                Logger.d(Logger.INJECT_TAG, new StringBuilder("setting full screen ad activity class in injector ").append(cls).toString());
                a().a(cls);
            }
        } catch (Exception e) {
            Logger.e(Logger.INJECT_TAG, e);
        }
    }

    public final void b(Class cls) {
        try {
            if (this.c) {
                Logger.d(Logger.INJECT_TAG, "service class in injector NOT set - already initialized");
            } else {
                Logger.d(Logger.INJECT_TAG, new StringBuilder("setting serivce class in injector ").append(cls).toString());
                a().b(cls);
            }
        } catch (Exception e) {
            Logger.e(Logger.INJECT_TAG, e);
        }
    }

    public void setBitmapFactory(BitmapFactory bitmapFactory) {
        try {
            if (this.c) {
                Logger.d(Logger.INJECT_TAG, "bitmap factory in injector NOT set - already initialized");
            } else {
                Logger.d(Logger.INJECT_TAG, new StringBuilder("setting bitmap factory in injector ").append(bitmapFactory).toString());
                a().setBitmapFactory(bitmapFactory);
            }
        } catch (Exception e) {
            Logger.e(Logger.INJECT_TAG, e);
        }
    }

    public void setWrapperFramework(WrapperFramework wrapperFramework) {
        try {
            if (this.c) {
                Logger.d(Logger.INJECT_TAG, "wrapper framework in injector NOT set - already initialized");
            } else {
                Logger.d(Logger.INJECT_TAG, new StringBuilder("setting wrapper framework in injector: ").append(wrapperFramework).toString());
                a().setWrapperFramework(wrapperFramework);
            }
        } catch (Exception e) {
            Logger.e(Logger.INJECT_TAG, e);
        }
    }

    public void setWrapperFrameworkVersion(String str) {
        try {
            if (this.c) {
                Logger.d(Logger.INJECT_TAG, "wrapper framework version in injector NOT set - already initialized");
            } else {
                Logger.d(Logger.INJECT_TAG, new StringBuilder("setting wrapper framework version in injector: ").append(str).toString());
                a().setWrapperFrameworkVersion(str);
            }
        } catch (Exception e) {
            Logger.e(Logger.INJECT_TAG, e);
        }
    }
}
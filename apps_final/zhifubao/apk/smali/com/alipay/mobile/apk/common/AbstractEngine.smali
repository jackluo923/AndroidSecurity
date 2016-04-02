.class public abstract Lcom/alipay/mobile/apk/common/AbstractEngine;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getInstrumentation(Landroid/app/Activity;)Landroid/app/Instrumentation;
.end method

.method public abstract getUnsupportedCause()Ljava/lang/Throwable;
.end method

.method public abstract isSupported(Landroid/app/Application;)Z
.end method

.method public abstract makeActivity(Lcom/alipay/mobile/apk/common/ZActivityInfo;Landroid/app/Activity;Landroid/app/Application;)Landroid/app/Activity;
.end method

.method public abstract makeActivity(Lcom/alipay/mobile/apk/common/ZActivityInfo;Landroid/app/Activity;Ljava/lang/ClassLoader;)Landroid/app/Activity;
.end method

.method public abstract makeApplication(Lcom/alipay/mobile/apk/common/ZApplicationInfo;Landroid/app/Application;)Landroid/app/Application;
.end method

.method public abstract onActivityShellPause()V
.end method

.method public abstract onActivityShellResume()V
.end method

.method public abstract setDexClassLoader(Ldalvik/system/DexClassLoader;)V
.end method

.method public abstract startActivity(Landroid/app/Activity;Lcom/alipay/mobile/apk/common/ZActivityInfo;Landroid/os/Bundle;)V
.end method

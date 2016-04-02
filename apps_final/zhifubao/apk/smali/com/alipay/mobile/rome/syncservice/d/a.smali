.class public final Lcom/alipay/mobile/rome/syncservice/d/a;
.super Ljava/lang/Object;
.source "AppContextHelper.java"


# static fields
.field private static volatile a:Landroid/content/Context;


# direct methods
.method public static a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/d/a;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 34
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/d/a;->a:Landroid/content/Context;

    .line 40
    :goto_0
    return-object v0

    .line 37
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    goto :goto_0
.end method

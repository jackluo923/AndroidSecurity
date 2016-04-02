.class public Lcom/alipay/mobile/rome/syncsdk/util/AppContextHelper;
.super Ljava/lang/Object;
.source "AppContextHelper.java"


# static fields
.field private static volatile a:Landroid/content/Context;

.field private static volatile b:Lcom/alipay/mobile/framework/MicroApplicationContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/util/AppContextHelper;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 38
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/util/AppContextHelper;->a:Landroid/content/Context;

    .line 44
    :goto_0
    return-object v0

    .line 41
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    goto :goto_0
.end method

.method public static getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/util/AppContextHelper;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    if-eqz v0, :cond_0

    .line 24
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/util/AppContextHelper;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 27
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    goto :goto_0
.end method

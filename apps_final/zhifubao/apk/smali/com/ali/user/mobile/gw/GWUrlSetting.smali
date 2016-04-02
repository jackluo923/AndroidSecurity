.class public Lcom/ali/user/mobile/gw/GWUrlSetting;
.super Ljava/lang/Object;
.source "GWUrlSetting.java"


# static fields
.field private static a:Lcom/ali/user/mobile/gw/GWUrlSetter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAliUserGw()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lcom/ali/user/mobile/gw/GWUrlSetting;->getGwUrlSetter()Lcom/ali/user/mobile/gw/GWUrlSetter;

    move-result-object v0

    invoke-interface {v0}, Lcom/ali/user/mobile/gw/GWUrlSetter;->getAliUserGw()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGwUrlSetter()Lcom/ali/user/mobile/gw/GWUrlSetter;
    .locals 2

    .prologue
    .line 20
    sget-object v0, Lcom/ali/user/mobile/gw/GWUrlSetting;->a:Lcom/ali/user/mobile/gw/GWUrlSetter;

    if-nez v0, :cond_0

    .line 21
    invoke-static {}, Lcom/ali/user/mobile/context/AliuserLoginContext;->getGwUrlSetter()Lcom/ali/user/mobile/gw/GWUrlSetter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 22
    invoke-static {}, Lcom/ali/user/mobile/context/AliuserLoginContext;->getGwUrlSetter()Lcom/ali/user/mobile/gw/GWUrlSetter;

    move-result-object v0

    sput-object v0, Lcom/ali/user/mobile/gw/GWUrlSetting;->a:Lcom/ali/user/mobile/gw/GWUrlSetter;

    .line 27
    :cond_0
    :goto_0
    sget-object v0, Lcom/ali/user/mobile/gw/GWUrlSetting;->a:Lcom/ali/user/mobile/gw/GWUrlSetter;

    return-object v0

    .line 24
    :cond_1
    new-instance v0, Lcom/ali/user/mobile/gw/DefaultGWUrlSetter;

    invoke-static {}, Lcom/ali/user/mobile/AliUserInit;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ali/user/mobile/gw/DefaultGWUrlSetter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ali/user/mobile/gw/GWUrlSetting;->a:Lcom/ali/user/mobile/gw/GWUrlSetter;

    goto :goto_0
.end method

.method public static getMobileGW()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/ali/user/mobile/gw/GWUrlSetting;->getGwUrlSetter()Lcom/ali/user/mobile/gw/GWUrlSetter;

    move-result-object v0

    invoke-interface {v0}, Lcom/ali/user/mobile/gw/GWUrlSetter;->getMobileGW()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setGWUrlSetter(Lcom/ali/user/mobile/gw/GWUrlSetter;)V
    .locals 0

    .prologue
    .line 16
    sput-object p0, Lcom/ali/user/mobile/gw/GWUrlSetting;->a:Lcom/ali/user/mobile/gw/GWUrlSetter;

    .line 17
    return-void
.end method

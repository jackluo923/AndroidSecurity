.class public Lcom/ali/user/mobile/gw/DefaultGWUrlSetter;
.super Ljava/lang/Object;
.source "DefaultGWUrlSetter.java"

# interfaces
.implements Lcom/ali/user/mobile/gw/GWUrlSetter;


# static fields
.field protected static final URI_ALIUSERGW_URL:Ljava/lang/String; = "content://com.alipay.setting/AliusergwUrl"

.field protected static final URI_MOBILEGW_URL:Ljava/lang/String; = "content://com.alipay.setting/GWFServerUrl"


# instance fields
.field protected ALIUSERGW:Ljava/lang/String;

.field protected DEVICEINFOGW:Ljava/lang/String;

.field protected MOBILEGW:Ljava/lang/String;

.field protected TAOBAOGW:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string/jumbo v0, "https://aliusergw.alipay.com/mgw.htm"

    iput-object v0, p0, Lcom/ali/user/mobile/gw/DefaultGWUrlSetter;->ALIUSERGW:Ljava/lang/String;

    .line 15
    const-string/jumbo v0, "http://hz.aliusergw.taobao.net/mgw.htm"

    iput-object v0, p0, Lcom/ali/user/mobile/gw/DefaultGWUrlSetter;->TAOBAOGW:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, "https://mobilegw.alipay.com/mgw.htm"

    iput-object v0, p0, Lcom/ali/user/mobile/gw/DefaultGWUrlSetter;->MOBILEGW:Ljava/lang/String;

    .line 17
    const-string/jumbo v0, "https://mobilegw.alipay.com/mgw.htm"

    iput-object v0, p0, Lcom/ali/user/mobile/gw/DefaultGWUrlSetter;->DEVICEINFOGW:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/ali/user/mobile/gw/DefaultGWUrlSetter;->mContext:Landroid/content/Context;

    .line 26
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/taobao/android/ssologinwrapper/utils/Utils;->switchEnviroment(I)V

    .line 27
    invoke-static {p1}, Lcom/taobao/dp/DeviceSecuritySDK;->getInstance(Landroid/content/Context;)Lcom/taobao/dp/DeviceSecuritySDK;

    move-result-object v0

    .line 28
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/taobao/dp/DeviceSecuritySDK;->setEnvironment(I)V

    .line 29
    return-void
.end method


# virtual methods
.method public getAliUserGw()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 33
    iget-object v0, p0, Lcom/ali/user/mobile/gw/DefaultGWUrlSetter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ali/user/mobile/AliUserInit;->isAppDebug(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    iget-object v0, p0, Lcom/ali/user/mobile/gw/DefaultGWUrlSetter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "content://com.alipay.setting/AliusergwUrl"

    iget-object v6, p0, Lcom/ali/user/mobile/gw/DefaultGWUrlSetter;->ALIUSERGW:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 36
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v6

    .line 34
    goto :goto_0

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/gw/DefaultGWUrlSetter;->ALIUSERGW:Ljava/lang/String;

    goto :goto_0
.end method

.method public getMobileGW()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    invoke-static {}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getInstance()Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/gw/DefaultGWUrlSetter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getGWFURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

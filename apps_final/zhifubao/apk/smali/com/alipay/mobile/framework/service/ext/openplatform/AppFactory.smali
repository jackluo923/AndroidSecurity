.class public Lcom/alipay/mobile/framework/service/ext/openplatform/AppFactory;
.super Ljava/lang/Object;
.source "AppFactory.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$alipay$mobile$framework$service$ext$openplatform$AppInstallerTypeEnum:[I


# direct methods
.method static synthetic $SWITCH_TABLE$com$alipay$mobile$framework$service$ext$openplatform$AppInstallerTypeEnum()[I
    .locals 3

    .prologue
    .line 19
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppFactory;->$SWITCH_TABLE$com$alipay$mobile$framework$service$ext$openplatform$AppInstallerTypeEnum:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->values()[Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->H5App:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_1
    :try_start_1
    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->androidApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_2
    :try_start_2
    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->expApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_3
    :try_start_3
    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->independantApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    :try_start_4
    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->innerApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_5
    :try_start_5
    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->nativeApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_6
    :try_start_6
    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->webApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_7
    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppFactory;->$SWITCH_TABLE$com$alipay$mobile$framework$service$ext$openplatform$AppInstallerTypeEnum:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkApp(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)Z
    .locals 2

    .prologue
    .line 169
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getInstallerType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    const-string/jumbo v0, ""

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getInstallerType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 172
    :cond_0
    const/4 v0, 0x0

    .line 174
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static checkApp(Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;)Z
    .locals 2

    .prologue
    .line 182
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->installerType:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 183
    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->installerType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->appId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 184
    :cond_0
    const/4 v0, 0x0

    .line 186
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static checkApp(Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;)Z
    .locals 1

    .prologue
    .line 190
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->appId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->pkgType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    :cond_0
    const/4 v0, 0x0

    .line 194
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static createApp(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 26
    .line 27
    invoke-static {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppFactory;->checkApp(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-object v0

    .line 31
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getInstallerType()Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-static {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->getEnum(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v1

    .line 34
    if-eqz v1, :cond_0

    .line 37
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppFactory;->$SWITCH_TABLE$com$alipay$mobile$framework$service$ext$openplatform$AppInstallerTypeEnum()[I

    move-result-object v2

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 58
    :goto_1
    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setAppInfo(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)V

    goto :goto_0

    .line 39
    :pswitch_0
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/NativeApp;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/NativeApp;-><init>()V

    goto :goto_1

    .line 42
    :pswitch_1
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/WebApp;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/WebApp;-><init>()V

    goto :goto_1

    .line 45
    :pswitch_2
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;-><init>()V

    goto :goto_1

    .line 48
    :pswitch_3
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ExpApp;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ExpApp;-><init>()V

    goto :goto_1

    .line 51
    :pswitch_4
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AndroidApp;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AndroidApp;-><init>()V

    goto :goto_1

    .line 54
    :pswitch_5
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;-><init>()V

    goto :goto_1

    .line 57
    :pswitch_6
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/H5App;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/H5App;-><init>()V

    goto :goto_1

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static createApp(Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 75
    .line 76
    invoke-static {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppFactory;->checkApp(Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-object v0

    .line 79
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->installerType:Ljava/lang/String;

    .line 80
    invoke-static {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->getEnum(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v1

    .line 82
    if-eqz v1, :cond_0

    .line 85
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppFactory;->$SWITCH_TABLE$com$alipay$mobile$framework$service$ext$openplatform$AppInstallerTypeEnum()[I

    move-result-object v2

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 106
    :goto_1
    if-eqz v0, :cond_0

    .line 111
    invoke-static {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AppConvertor;->a(Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setAppInfo(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)V

    goto :goto_0

    .line 87
    :pswitch_0
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/NativeApp;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/NativeApp;-><init>()V

    goto :goto_1

    .line 90
    :pswitch_1
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/WebApp;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/WebApp;-><init>()V

    goto :goto_1

    .line 93
    :pswitch_2
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;-><init>()V

    goto :goto_1

    .line 96
    :pswitch_3
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ExpApp;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ExpApp;-><init>()V

    goto :goto_1

    .line 99
    :pswitch_4
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AndroidApp;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AndroidApp;-><init>()V

    goto :goto_1

    .line 102
    :pswitch_5
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;-><init>()V

    goto :goto_1

    .line 105
    :pswitch_6
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/H5App;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/H5App;-><init>()V

    goto :goto_1

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static createApp(Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 117
    .line 118
    invoke-static {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppFactory;->checkApp(Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-object v0

    .line 121
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->pkgType:Ljava/lang/String;

    .line 122
    invoke-static {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->getEnum(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v1

    .line 124
    if-eqz v1, :cond_0

    .line 127
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppFactory;->$SWITCH_TABLE$com$alipay$mobile$framework$service$ext$openplatform$AppInstallerTypeEnum()[I

    move-result-object v2

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 148
    :goto_1
    if-eqz v0, :cond_0

    .line 153
    invoke-static {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AppConvertor;->a(Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v1

    .line 154
    if-eqz p1, :cond_2

    .line 155
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getPkgVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setPkgVersion(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getPkgPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setPkgPath(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getLocalIcon()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setLocalIcon(Ljava/lang/String;)V

    .line 159
    :cond_2
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setAppInfo(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)V

    goto :goto_0

    .line 129
    :pswitch_0
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/NativeApp;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/NativeApp;-><init>()V

    goto :goto_1

    .line 132
    :pswitch_1
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/WebApp;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/WebApp;-><init>()V

    goto :goto_1

    .line 135
    :pswitch_2
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;-><init>()V

    goto :goto_1

    .line 138
    :pswitch_3
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ExpApp;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ExpApp;-><init>()V

    goto :goto_1

    .line 141
    :pswitch_4
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AndroidApp;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AndroidApp;-><init>()V

    goto :goto_1

    .line 144
    :pswitch_5
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;-><init>()V

    goto :goto_1

    .line 147
    :pswitch_6
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/H5App;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/H5App;-><init>()V

    goto :goto_1

    .line 127
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

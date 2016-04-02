.class public Lcom/alipay/mobile/common/helper/UserInfoHelper;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/alipay/mobile/common/helper/UserInfoHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/helper/UserInfoHelper;->a:Lcom/alipay/mobile/common/helper/UserInfoHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/common/helper/UserInfoHelper;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/common/helper/UserInfoHelper;->a:Lcom/alipay/mobile/common/helper/UserInfoHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/common/helper/UserInfoHelper;

    invoke-direct {v0}, Lcom/alipay/mobile/common/helper/UserInfoHelper;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/helper/UserInfoHelper;->a:Lcom/alipay/mobile/common/helper/UserInfoHelper;

    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/helper/UserInfoHelper;->a:Lcom/alipay/mobile/common/helper/UserInfoHelper;

    return-object v0
.end method


# virtual methods
.method public getUserInfo(Lcom/alipay/mobile/framework/MicroApplicationContext;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    .locals 1

    const-class v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public getUserInfo(Lcom/alipay/mobile/framework/app/ActivityApplication;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    .locals 1

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/helper/UserInfoHelper;->getUserInfo(Lcom/alipay/mobile/framework/MicroApplicationContext;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    return-object v0
.end method

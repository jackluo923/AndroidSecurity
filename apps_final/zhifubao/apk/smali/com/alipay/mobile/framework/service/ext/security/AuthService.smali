.class public abstract Lcom/alipay/mobile/framework/service/ext/security/AuthService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;


# static fields
.field public static LOGIN_REALSTATE:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->LOGIN_REALSTATE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method

.method public static isNewImpl()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public abstract auth()Z
.end method

.method public abstract auth(Landroid/os/Bundle;)Z
.end method

.method public abstract autoAuth()Z
.end method

.method public abstract cancelLogin()V
.end method

.method public abstract clearLoginUserInfo()V
.end method

.method public abstract gestureGetUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
.end method

.method public abstract getLastLoginedUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
.end method

.method public abstract getLoginUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
.end method

.method public abstract getTaoBaoSsoFlag()Z
.end method

.method public abstract getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
.end method

.method public abstract isLogin()Z
.end method

.method public abstract logLoginEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract logLoginKey()V
.end method

.method public abstract logLoginStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract notifyUnlockGestureApp()V
.end method

.method public abstract notifyUnlockLoginApp(ZZ)V
.end method

.method public abstract queryLatelyLoginUser()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
.end method

.method public abstract rpcAuth()Z
.end method

.method public abstract setTaoBaoSsoFlag(Z)V
.end method

.method public abstract showActivityLogin(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z
.end method

.class public Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;
.super Ljava/lang/Object;


# static fields
.field public static final SHARED_PREFS_SSO:Ljava/lang/String; = ".sso.whitelist"

.field public static SSO_EXPIRE_TIME_IN_MILLIS:J


# instance fields
.field private a:Lcom/taobao/android/ssologinwrapper/SsoLogin;

.field private b:Landroid/content/Context;

.field private c:Lcom/taobao/android/ssologinwrapper/remote/ISsoRemoteRequestParam;

.field mConfirmDialog:Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;

.field mConfirmView:Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;

.field mGetSsoViewInfoRequest:Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoRequest;

.field mGetWhiteListRequest:Lcom/taobao/android/ssologinwrapper/remote/getwhitelist/GetWhiteListRequest;

.field public mHandler:Landroid/os/Handler;

.field mInvalidSsoTokenRequest:Lcom/taobao/android/ssologinwrapper/remote/invalidssotoken/InvalidSsoTokenRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/32 v0, 0x48190800

    sput-wide v0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->SSO_EXPIRE_TIME_IN_MILLIS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/taobao/android/ssologinwrapper/remote/ISsoRemoteRequestParam;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/taobao/android/ssologinwrapper/SsoLogin;

    invoke-direct {v0, p1}, Lcom/taobao/android/ssologinwrapper/SsoLogin;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->a:Lcom/taobao/android/ssologinwrapper/SsoLogin;

    iput-object p1, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->b:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->c:Lcom/taobao/android/ssologinwrapper/remote/ISsoRemoteRequestParam;

    invoke-static {p1}, Lcom/taobao/android/ssologinwrapper/utils/Utils;->initHTTPSVerifyRelate(Landroid/content/Context;)V

    return-void
.end method

.method private a(Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoParam;Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoResponse;)Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoResponse;
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->mGetSsoViewInfoRequest:Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoRequest;

    if-nez v0, :cond_0

    new-instance v0, Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoRequest;

    iget-object v2, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->b:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoRequest;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->mGetSsoViewInfoRequest:Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoRequest;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->mGetSsoViewInfoRequest:Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoRequest;

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->a(Z)Z

    move-result v2

    invoke-virtual {v0, p1, p2, v2}, Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoRequest;->doRequest(Lcom/taobao/android/ssologinwrapper/remote/ISsoRemoteRequestParam;Lcom/taobao/android/ssologinwrapper/remote/SsoRemoteResponse;Z)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    instance-of v2, v0, Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoResponse;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoResponse;

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    invoke-direct {p0, v3}, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->mGetSsoViewInfoRequest:Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoRequest;

    invoke-virtual {v0, p1, p2, v3}, Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoRequest;->doRequest(Lcom/taobao/android/ssologinwrapper/remote/ISsoRemoteRequestParam;Lcom/taobao/android/ssologinwrapper/remote/SsoRemoteResponse;Z)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private a(Lcom/taobao/android/ssologinwrapper/remote/getwhitelist/GetWhiteListParam;Lcom/taobao/android/ssologinwrapper/remote/getwhitelist/GetWhiteListResponse;)Lcom/taobao/android/ssologinwrapper/remote/getwhitelist/GetWhiteListResponse;
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->mGetWhiteListRequest:Lcom/taobao/android/ssologinwrapper/remote/getwhitelist/GetWhiteListRequest;

    if-nez v0, :cond_0

    new-instance v0, Lcom/taobao/android/ssologinwrapper/remote/getwhitelist/GetWhiteListRequest;

    iget-object v2, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->b:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/taobao/android/ssologinwrapper/remote/getwhitelist/GetWhiteListRequest;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->mGetWhiteListRequest:Lcom/taobao/android/ssologinwrapper/remote/getwhitelist/GetWhiteListRequest;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->mGetWhiteListRequest:Lcom/taobao/android/ssologinwrapper/remote/getwhitelist/GetWhiteListRequest;

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->a(Z)Z

    move-result v2

    invoke-virtual {v0, p1, p2, v2}, Lcom/taobao/android/ssologinwrapper/remote/getwhitelist/GetWhiteListRequest;->doRequest(Lcom/taobao/android/ssologinwrapper/remote/ISsoRemoteRequestParam;Lcom/taobao/android/ssologinwrapper/remote/SsoRemoteResponse;Z)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    instance-of v2, v0, Lcom/taobao/android/ssologinwrapper/remote/getwhitelist/GetWhiteListResponse;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/taobao/android/ssologinwrapper/remote/getwhitelist/GetWhiteListResponse;

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private a(Lcom/taobao/android/ssologinwrapper/remote/invalidssotoken/InvalidSsoTokenParam;)Lcom/taobao/android/ssologinwrapper/remote/invalidssotoken/InvalidSsoTokenResponse;
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->mInvalidSsoTokenRequest:Lcom/taobao/android/ssologinwrapper/remote/invalidssotoken/InvalidSsoTokenRequest;

    if-nez v0, :cond_0

    new-instance v0, Lcom/taobao/android/ssologinwrapper/remote/invalidssotoken/InvalidSsoTokenRequest;

    iget-object v2, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->b:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/taobao/android/ssologinwrapper/remote/invalidssotoken/InvalidSsoTokenRequest;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->mInvalidSsoTokenRequest:Lcom/taobao/android/ssologinwrapper/remote/invalidssotoken/InvalidSsoTokenRequest;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->mInvalidSsoTokenRequest:Lcom/taobao/android/ssologinwrapper/remote/invalidssotoken/InvalidSsoTokenRequest;

    new-instance v2, Lcom/taobao/android/ssologinwrapper/remote/invalidssotoken/InvalidSsoTokenResponse;

    invoke-direct {v2}, Lcom/taobao/android/ssologinwrapper/remote/invalidssotoken/InvalidSsoTokenResponse;-><init>()V

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->a(Z)Z

    move-result v3

    invoke-virtual {v0, p1, v2, v3}, Lcom/taobao/android/ssologinwrapper/remote/invalidssotoken/InvalidSsoTokenRequest;->doRequest(Lcom/taobao/android/ssologinwrapper/remote/ISsoRemoteRequestParam;Lcom/taobao/android/ssologinwrapper/remote/SsoRemoteResponse;Z)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    instance-of v2, v0, Lcom/taobao/android/ssologinwrapper/remote/invalidssotoken/InvalidSsoTokenResponse;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/taobao/android/ssologinwrapper/remote/invalidssotoken/InvalidSsoTokenResponse;

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    invoke-direct {p0, v4}, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->mInvalidSsoTokenRequest:Lcom/taobao/android/ssologinwrapper/remote/invalidssotoken/InvalidSsoTokenRequest;

    new-instance v2, Lcom/taobao/android/ssologinwrapper/remote/invalidssotoken/InvalidSsoTokenResponse;

    invoke-direct {v2}, Lcom/taobao/android/ssologinwrapper/remote/invalidssotoken/InvalidSsoTokenResponse;-><init>()V

    invoke-virtual {v0, p1, v2, v4}, Lcom/taobao/android/ssologinwrapper/remote/invalidssotoken/InvalidSsoTokenRequest;->doRequest(Lcom/taobao/android/ssologinwrapper/remote/ISsoRemoteRequestParam;Lcom/taobao/android/ssologinwrapper/remote/SsoRemoteResponse;Z)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(ZLandroid/content/Context;Lcom/taobao/android/sso/UserInfo;Lcom/taobao/android/ssologinwrapper/SsoLoginResultListener;)V
    .locals 7

    iget-object v6, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper$5;

    move-object v1, p0

    move v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper$5;-><init>(Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;ZLcom/taobao/android/sso/UserInfo;Lcom/taobao/android/ssologinwrapper/SsoLoginResultListener;Landroid/content/Context;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static a(JJ)Z
    .locals 3

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p0

    cmp-long v1, v1, p2

    if-lez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Z)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget v2, Lcom/taobao/android/ssologinwrapper/utils/Utils;->currentEnviroment:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    sget v2, Lcom/taobao/android/ssologinwrapper/utils/Utils;->currentEnviroment:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-nez p1, :cond_1

    iget-object v2, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->b:Landroid/content/Context;

    const-string/jumbo v3, ".sso.whitelist"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "userhttpsconnect"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;Landroid/content/Context;Lcom/taobao/android/sso/UserInfo;)Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;
    .locals 1

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->mConfirmView:Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;

    invoke-direct {v0, p1}, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->mConfirmView:Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;

    :cond_0
    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->mConfirmView:Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;

    invoke-virtual {v0, p2}, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;->setUserInfo(Lcom/taobao/android/sso/UserInfo;)V

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->mConfirmView:Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;Landroid/content/Context;Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;Lcom/taobao/android/sso/UserInfo;Lcom/taobao/android/ssologinwrapper/SsoLoginResultListener;)Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;
    .locals 2

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->mConfirmDialog:Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;

    invoke-direct {v0, p1, p2}, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;-><init>(Landroid/content/Context;Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;)V

    iput-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->mConfirmDialog:Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;

    :cond_0
    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->mConfirmDialog:Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;

    new-instance v1, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper$3;

    invoke-direct {v1, p0, p4}, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper$3;-><init>(Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;Lcom/taobao/android/ssologinwrapper/SsoLoginResultListener;)V

    invoke-virtual {v0, v1}, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->mConfirmDialog:Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;

    invoke-virtual {v0}, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;->getContentView()Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;

    move-result-object v0

    new-instance v1, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper$4;

    invoke-direct {v1, p0, p4, p3}, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper$4;-><init>(Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;Lcom/taobao/android/ssologinwrapper/SsoLoginResultListener;Lcom/taobao/android/sso/UserInfo;)V

    invoke-virtual {v0, v1}, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;->setSsoLoginConfirmListener(Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmListener;)V

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->mConfirmDialog:Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;Lcom/taobao/android/ssologinwrapper/remote/invalidssotoken/InvalidSsoTokenParam;)Lcom/taobao/android/ssologinwrapper/remote/invalidssotoken/InvalidSsoTokenResponse;
    .locals 1

    invoke-direct {p0, p1}, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->a(Lcom/taobao/android/ssologinwrapper/remote/invalidssotoken/InvalidSsoTokenParam;)Lcom/taobao/android/ssologinwrapper/remote/invalidssotoken/InvalidSsoTokenResponse;

    move-result-object v0

    return-object v0
.end method

.method private b()J
    .locals 4

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->b:Landroid/content/Context;

    const-string/jumbo v1, ".sso.whitelist"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "ssotimestamp"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    sget-wide v0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->SSO_EXPIRE_TIME_IN_MILLIS:J

    :cond_0
    return-wide v0
.end method


# virtual methods
.method public alipayAccountType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->a:Lcom/taobao/android/ssologinwrapper/SsoLogin;

    invoke-virtual {v0}, Lcom/taobao/android/ssologinwrapper/SsoLogin;->alipayAccountType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public asyncUpdateWhiteList()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    new-instance v0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper$7;

    invoke-direct {v0, p0}, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper$7;-><init>(Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;)V

    invoke-virtual {v0}, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper$7;->start()V

    return-void
.end method

.method public getSsoUserInfos()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/taobao/android/sso/UserInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->updateWhiteList()V

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->a:Lcom/taobao/android/ssologinwrapper/SsoLogin;

    invoke-virtual {v0}, Lcom/taobao/android/ssologinwrapper/SsoLogin;->peekSsoInfo()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->b()J

    move-result-wide v2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/sso/UserInfo;

    if-eqz v0, :cond_0

    iget-wide v5, v0, Lcom/taobao/android/sso/UserInfo;->mTokenTimestamp:J

    invoke-static {v5, v6, v2, v3}, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->a(JJ)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public loginWithType(Ljava/lang/String;ZLandroid/content/Context;Lcom/taobao/android/ssologinwrapper/SsoLoginResultListener;)V
    .locals 10

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    new-instance v0, Lcom/taobao/android/sso/CalledFromWrongThreadException;

    invoke-direct {v0}, Lcom/taobao/android/sso/CalledFromWrongThreadException;-><init>()V

    throw v0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v0, v2, :cond_1

    move p2, v1

    :cond_1
    invoke-virtual {p0}, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->asyncUpdateWhiteList()V

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->a:Lcom/taobao/android/ssologinwrapper/SsoLogin;

    invoke-virtual {v0}, Lcom/taobao/android/ssologinwrapper/SsoLogin;->peekSsoInfo()Ljava/util/List;

    move-result-object v5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "userInfos length = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->b()J

    move-result-wide v6

    move v3, v1

    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_a

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/sso/UserInfo;

    iget-object v8, v0, Lcom/taobao/android/sso/UserInfo;->mAccountType:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-wide v8, v0, Lcom/taobao/android/sso/UserInfo;->mTokenTimestamp:J

    invoke-static {v8, v9, v6, v7}, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->a(JJ)Z

    move-result v8

    if-eqz v8, :cond_3

    move v2, v1

    :goto_1
    if-nez v0, :cond_4

    if-eqz p4, :cond_2

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper$1;

    invoke-direct {v1, p0, p4}, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper$1;-><init>(Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;Lcom/taobao/android/ssologinwrapper/SsoLoginResultListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_2
    return-void

    :cond_3
    if-nez v2, :cond_9

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v3, v0, :cond_9

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/sso/UserInfo;

    iget-wide v8, v0, Lcom/taobao/android/sso/UserInfo;->mTokenTimestamp:J

    invoke-static {v8, v9, v6, v7}, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/sso/UserInfo;

    :goto_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v2, v0

    goto :goto_0

    :cond_4
    if-nez v2, :cond_6

    iget-object v1, v0, Lcom/taobao/android/sso/UserInfo;->mShareApp:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/taobao/android/sso/UserInfo;->mShareApp:Ljava/lang/String;

    invoke-direct {p0}, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz p4, :cond_2

    iget-object v1, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper$2;

    invoke-direct {v2, p0, p4, v0}, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper$2;-><init>(Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;Lcom/taobao/android/ssologinwrapper/SsoLoginResultListener;Lcom/taobao/android/sso/UserInfo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_5
    invoke-direct {p0, p2, p3, v0, p4}, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->a(ZLandroid/content/Context;Lcom/taobao/android/sso/UserInfo;Lcom/taobao/android/ssologinwrapper/SsoLoginResultListener;)V

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->c:Lcom/taobao/android/ssologinwrapper/remote/ISsoRemoteRequestParam;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->c:Lcom/taobao/android/ssologinwrapper/remote/ISsoRemoteRequestParam;

    invoke-static {v2}, Lcom/taobao/android/ssologinwrapper/utils/Utils;->createSVIParam(Lcom/taobao/android/ssologinwrapper/remote/ISsoRemoteRequestParam;)Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoParam;

    move-result-object v2

    iget-object v3, v0, Lcom/taobao/android/sso/UserInfo;->mSsoToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoParam;->setSsoToken(Ljava/lang/String;)V

    new-instance v3, Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoResponse;

    invoke-direct {v3}, Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoResponse;-><init>()V

    invoke-direct {p0, v2, v3}, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->a(Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoParam;Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoResponse;)Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoResponse;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoResponse;->isSuccess()Z

    move-result v1

    iget-object v3, v2, Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoResponse;->accountName:Ljava/lang/String;

    iput-object v3, v0, Lcom/taobao/android/sso/UserInfo;->mNick:Ljava/lang/String;

    iget-object v2, v2, Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoResponse;->logo:Ljava/lang/String;

    iput-object v2, v0, Lcom/taobao/android/sso/UserInfo;->mPhotoUrl:Ljava/lang/String;

    :cond_7
    if-eqz v1, :cond_8

    invoke-direct {p0, p2, p3, v0, p4}, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->a(ZLandroid/content/Context;Lcom/taobao/android/sso/UserInfo;Lcom/taobao/android/ssologinwrapper/SsoLoginResultListener;)V

    goto :goto_2

    :cond_8
    if-eqz p4, :cond_2

    const-string/jumbo v0, "sso:no_acount_matched"

    invoke-interface {p4, v0}, Lcom/taobao/android/ssologinwrapper/SsoLoginResultListener;->onFailedResult(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    move-object v0, v2

    goto :goto_3

    :cond_a
    move-object v0, v2

    move v2, v4

    goto/16 :goto_1
.end method

.method public logout(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    const-string/jumbo v1, ""

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->a:Lcom/taobao/android/ssologinwrapper/SsoLogin;

    invoke-virtual {v0}, Lcom/taobao/android/ssologinwrapper/SsoLogin;->peekSsoInfo()Ljava/util/List;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "logout userinfos length: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " | nick: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " | accountType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " | appName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/sso/UserInfo;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "exit userinfo: mNick="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/taobao/android/sso/UserInfo;->mNick:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " | mAccountType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/taobao/android/sso/UserInfo;->mAccountType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " | mShareApp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/taobao/android/sso/UserInfo;->mShareApp:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/taobao/android/sso/UserInfo;->mNick:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, v0, Lcom/taobao/android/sso/UserInfo;->mAccountType:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v0, v0, Lcom/taobao/android/sso/UserInfo;->mSsoToken:Ljava/lang/String;

    :goto_2
    move-object v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->a:Lcom/taobao/android/ssologinwrapper/SsoLogin;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/android/ssologinwrapper/SsoLogin;->logout(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->c:Lcom/taobao/android/ssologinwrapper/remote/ISsoRemoteRequestParam;

    if-eqz v0, :cond_5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->c:Lcom/taobao/android/ssologinwrapper/remote/ISsoRemoteRequestParam;

    invoke-interface {v0}, Lcom/taobao/android/ssologinwrapper/remote/ISsoRemoteRequestParam;->getApdid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->c:Lcom/taobao/android/ssologinwrapper/remote/ISsoRemoteRequestParam;

    invoke-interface {v0}, Lcom/taobao/android/ssologinwrapper/remote/ISsoRemoteRequestParam;->getUmidToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v0, v2

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->c:Lcom/taobao/android/ssologinwrapper/remote/ISsoRemoteRequestParam;

    invoke-static {v0}, Lcom/taobao/android/ssologinwrapper/utils/Utils;->createIVDParam(Lcom/taobao/android/ssologinwrapper/remote/ISsoRemoteRequestParam;)Lcom/taobao/android/ssologinwrapper/remote/invalidssotoken/InvalidSsoTokenParam;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/taobao/android/ssologinwrapper/remote/invalidssotoken/InvalidSsoTokenParam;->setSsoToken(Ljava/lang/String;)V

    new-instance v1, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper$6;

    invoke-direct {v1, p0, v0}, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper$6;-><init>(Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;Lcom/taobao/android/ssologinwrapper/remote/invalidssotoken/InvalidSsoTokenParam;)V

    invoke-virtual {v1}, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper$6;->start()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_5
    move v0, v2

    goto/16 :goto_0

    :cond_6
    move-object v0, v1

    goto :goto_2
.end method

.method public regSsoStateListener(Lcom/taobao/android/sso/SsoStatesChangedListener;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->a:Lcom/taobao/android/ssologinwrapper/SsoLogin;

    invoke-virtual {v0, p1}, Lcom/taobao/android/ssologinwrapper/SsoLogin;->regSsoStateListener(Lcom/taobao/android/sso/SsoStatesChangedListener;)V

    return-void
.end method

.method public shareSsoToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->a:Lcom/taobao/android/ssologinwrapper/SsoLogin;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/taobao/android/ssologinwrapper/SsoLogin;->shareSsoToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public taobaoAccountType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->a:Lcom/taobao/android/ssologinwrapper/SsoLogin;

    invoke-virtual {v0}, Lcom/taobao/android/ssologinwrapper/SsoLogin;->taobaoAccountType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unRegSsoStateListener()V
    .locals 1

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->a:Lcom/taobao/android/ssologinwrapper/SsoLogin;

    invoke-virtual {v0}, Lcom/taobao/android/ssologinwrapper/SsoLogin;->unRegSsoStateListener()V

    return-void
.end method

.method public updateWhiteList()V
    .locals 9

    const-wide/16 v7, 0x0

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->c:Lcom/taobao/android/ssologinwrapper/remote/ISsoRemoteRequestParam;

    invoke-static {v0}, Lcom/taobao/android/ssologinwrapper/utils/Utils;->createGWLParam(Lcom/taobao/android/ssologinwrapper/remote/ISsoRemoteRequestParam;)Lcom/taobao/android/ssologinwrapper/remote/getwhitelist/GetWhiteListParam;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->b:Landroid/content/Context;

    const-string/jumbo v2, ".sso.whitelist"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "pretimestamp"

    invoke-interface {v1, v2, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-string/jumbo v4, "remoteversion"

    const-string/jumbo v5, ""

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v2, v5, v2

    const-wide/32 v5, 0x5265c00

    cmp-long v2, v2, v5

    if-lez v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0, v4}, Lcom/taobao/android/ssologinwrapper/remote/getwhitelist/GetWhiteListParam;->setVersion(Ljava/lang/String;)V

    new-instance v2, Lcom/taobao/android/ssologinwrapper/remote/getwhitelist/GetWhiteListResponse;

    invoke-direct {v2}, Lcom/taobao/android/ssologinwrapper/remote/getwhitelist/GetWhiteListResponse;-><init>()V

    invoke-direct {p0, v0, v2}, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->a(Lcom/taobao/android/ssologinwrapper/remote/getwhitelist/GetWhiteListParam;Lcom/taobao/android/ssologinwrapper/remote/getwhitelist/GetWhiteListResponse;)Lcom/taobao/android/ssologinwrapper/remote/getwhitelist/GetWhiteListResponse;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "userhttpsconnect"

    iget-boolean v4, v0, Lcom/taobao/android/ssologinwrapper/remote/getwhitelist/GetWhiteListResponse;->httpsSupport:Z

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "ssotimestamp"

    iget-wide v4, v0, Lcom/taobao/android/ssologinwrapper/remote/getwhitelist/GetWhiteListResponse;->ssoExpireTime:J

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget v2, v0, Lcom/taobao/android/ssologinwrapper/remote/getwhitelist/GetWhiteListResponse;->httpCode:I

    const/16 v3, 0x130

    if-eq v2, v3, :cond_0

    iget-object v2, v0, Lcom/taobao/android/ssologinwrapper/remote/getwhitelist/GetWhiteListResponse;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/taobao/android/ssologinwrapper/remote/getwhitelist/GetWhiteListResponse;->signatures:[Landroid/content/pm/Signature;

    array-length v2, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->a:Lcom/taobao/android/ssologinwrapper/SsoLogin;

    iget-object v3, v0, Lcom/taobao/android/ssologinwrapper/remote/getwhitelist/GetWhiteListResponse;->signatures:[Landroid/content/pm/Signature;

    iget-wide v4, v0, Lcom/taobao/android/ssologinwrapper/remote/getwhitelist/GetWhiteListResponse;->currentTimeMillis:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/taobao/android/ssologinwrapper/SsoLogin;->updateWhiteList([Landroid/content/pm/Signature;J)Z

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "remoteversion"

    iget-object v4, v0, Lcom/taobao/android/ssologinwrapper/remote/getwhitelist/GetWhiteListResponse;->version:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    invoke-virtual {v0}, Lcom/taobao/android/ssologinwrapper/remote/getwhitelist/GetWhiteListResponse;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "pretimestamp"

    iget-wide v4, v0, Lcom/taobao/android/ssologinwrapper/remote/getwhitelist/GetWhiteListResponse;->currentTimeMillis:J

    cmp-long v1, v4, v7

    if-lez v1, :cond_2

    iget-wide v0, v0, Lcom/taobao/android/ssologinwrapper/remote/getwhitelist/GetWhiteListResponse;->currentTimeMillis:J

    :goto_0
    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0
.end method

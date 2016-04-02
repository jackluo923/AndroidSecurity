.class public Lcom/taobao/android/ssologinwrapper/SsoLogin;
.super Ljava/lang/Object;


# static fields
.field public static final DEFAULT_ALIPAY_USERNAME:Ljava/lang/String; = "\u652f\u4ed8\u5b9d\u4e3b\u8d26\u53f7"

.field public static final DEFAULT_TAOBAO_USERNAME:Ljava/lang/String; = "\u6dd8\u5b9d\u4e3b\u8d26\u53f7"

.field public static final TOKEN_TYPE:Ljava/lang/String; = "alibaba:ssotoken"

.field private static c:Landroid/content/BroadcastReceiver;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/taobao/android/sso/SsoStatesChangedListener;

.field private d:I

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin;->d:I

    iput-boolean v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin;->e:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/android/sso/internal/Authenticator;->getAlipayAccountType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/android/sso/internal/Authenticator;->getTaobaoAccountType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin;->g:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/accounts/Account;
    .locals 7

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/taobao/android/sso/SsoManager;->getAccounts(Landroid/content/Context;Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v0, v3

    if-eqz v0, :cond_0

    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_5

    aget-object v0, v3, v2

    iget-object v5, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/taobao/android/sso/internal/Authenticator;->getTaobaoAccountType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "\u6dd8\u5b9d\u4e3b\u8d26\u53f7"

    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    iget-object v5, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/taobao/android/sso/internal/Authenticator;->getAlipayAccountType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string/jumbo v5, "\u652f\u4ed8\u5b9d\u4e3b\u8d26\u53f7"

    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    :goto_2
    move-object v1, v0

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/android/sso/UserInfo;
    .locals 6

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    iget-object v2, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin;->a:Landroid/content/Context;

    const-string/jumbo v3, "alibaba:ssotoken"

    invoke-static {v2, v0, p2, v3}, Lcom/taobao/android/sso/SsoManager;->peekUserInfos(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v0, Lcom/taobao/android/sso/UserInfo;

    invoke-direct {v0}, Lcom/taobao/android/sso/UserInfo;-><init>()V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    const-string/jumbo v1, "accounts"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/android/sso/UserInfo;->mNick:Ljava/lang/String;

    iput-object p2, v0, Lcom/taobao/android/sso/UserInfo;->mAccountType:Ljava/lang/String;

    const-string/jumbo v1, "photo-url"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/android/sso/UserInfo;->mPhotoUrl:Ljava/lang/String;

    const-string/jumbo v1, "share-app"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/android/sso/UserInfo;->mShareApp:Ljava/lang/String;

    const-string/jumbo v1, "token-timestamp"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/taobao/android/sso/UserInfo;->mTokenTimestamp:J

    const-string/jumbo v1, "token"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/android/sso/UserInfo;->mSsoToken:Ljava/lang/String;
    :try_end_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_2
    invoke-virtual {v1}, Landroid/accounts/OperationCanceledException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_4
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_5
    invoke-virtual {v1}, Landroid/accounts/AuthenticatorException;->printStackTrace()V

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_5

    :catch_5
    move-exception v1

    goto :goto_4

    :catch_6
    move-exception v1

    goto :goto_3

    :catch_7
    move-exception v1

    goto :goto_2

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private a()V
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    iget-boolean v1, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin;->e:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "MM/dd/yyyy HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/taobao/android/sso/internal/Whitelist;->mWhitelistV:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sget-object v4, Lcom/taobao/android/sso/internal/Whitelist;->mWhitelist:[Ljava/lang/String;

    array-length v1, v4

    new-array v5, v1, [Landroid/content/pm/Signature;

    array-length v6, v4

    move v1, v0

    :goto_1
    if-ge v0, v6, :cond_1

    aget-object v7, v4, v0

    new-instance v8, Landroid/content/pm/Signature;

    invoke-direct {v8, v7}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v8, v5, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/taobao/android/sso/internal/Authenticator;->getAlipayAccountType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v5, v2, v3, v1}, Lcom/taobao/android/sso/SsoManager;->updateWhitelist(Landroid/content/Context;[Landroid/content/pm/Signature;JLjava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin;->e:Z

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/taobao/android/sso/internal/Authenticator;->getTaobaoAccountType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v5, v2, v3, v1}, Lcom/taobao/android/sso/SsoManager;->updateWhitelist(Landroid/content/Context;[Landroid/content/pm/Signature;JLjava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin;->e:Z
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/accounts/OperationCanceledException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/taobao/android/ssologinwrapper/SsoLogin;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/taobao/android/ssologinwrapper/SsoLogin;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin;->i:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/taobao/android/ssologinwrapper/SsoLogin;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/taobao/android/ssologinwrapper/SsoLogin;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/taobao/android/ssologinwrapper/SsoLogin;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/taobao/android/ssologinwrapper/SsoLogin;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/taobao/android/ssologinwrapper/SsoLogin;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin;->h:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/taobao/android/ssologinwrapper/SsoLogin;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/taobao/android/ssologinwrapper/SsoLogin;)I
    .locals 1

    iget v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin;->d:I

    return v0
.end method

.method static synthetic access$604(Lcom/taobao/android/ssologinwrapper/SsoLogin;)I
    .locals 1

    iget v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin;->d:I

    return v0
.end method

.method static synthetic access$700(Lcom/taobao/android/ssologinwrapper/SsoLogin;)Lcom/taobao/android/sso/SsoStatesChangedListener;
    .locals 1

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin;->b:Lcom/taobao/android/sso/SsoStatesChangedListener;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    new-instance v0, Lcom/taobao/android/sso/CalledFromWrongThreadException;

    invoke-direct {v0}, Lcom/taobao/android/sso/CalledFromWrongThreadException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/taobao/android/ssologinwrapper/SsoLogin;->a()V

    invoke-direct {p0, p1}, Lcom/taobao/android/ssologinwrapper/SsoLogin;->a(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lcom/taobao/android/ssologinwrapper/SsoLogin;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/android/sso/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, v1, Lcom/taobao/android/sso/UserInfo;->mNick:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected alipayAccountType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin;->f:Ljava/lang/String;

    return-object v0
.end method

.method protected logout(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    new-instance v0, Lcom/taobao/android/sso/CalledFromWrongThreadException;

    invoke-direct {v0}, Lcom/taobao/android/sso/CalledFromWrongThreadException;-><init>()V

    throw v0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-direct {p0}, Lcom/taobao/android/ssologinwrapper/SsoLogin;->a()V

    invoke-direct {p0, p2}, Lcom/taobao/android/ssologinwrapper/SsoLogin;->a(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {p0, v2, p2}, Lcom/taobao/android/ssologinwrapper/SsoLogin;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/android/sso/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/taobao/android/sso/UserInfo;->mNick:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin;->a:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/taobao/android/sso/SsoManager;->removeAccount(Landroid/content/Context;Landroid/accounts/Account;)Z
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/accounts/OperationCanceledException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method protected peekSsoInfo()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/taobao/android/sso/UserInfo;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x2

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    new-instance v0, Lcom/taobao/android/sso/CalledFromWrongThreadException;

    invoke-direct {v0}, Lcom/taobao/android/sso/CalledFromWrongThreadException;-><init>()V

    throw v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/taobao/android/ssologinwrapper/SsoLogin;->a()V

    new-array v2, v5, [Ljava/lang/String;

    iget-object v3, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin;->g:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin;->f:Ljava/lang/String;

    aput-object v4, v2, v3

    :goto_0
    if-ge v0, v5, :cond_2

    aget-object v3, v2, v0

    invoke-direct {p0, v3}, Lcom/taobao/android/ssologinwrapper/SsoLogin;->a(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {p0, v4, v3}, Lcom/taobao/android/ssologinwrapper/SsoLogin;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/android/sso/UserInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/taobao/android/sso/UserInfo;->mSsoToken:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method protected regSsoStateListener(Lcom/taobao/android/sso/SsoStatesChangedListener;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v3, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin;->b:Lcom/taobao/android/sso/SsoStatesChangedListener;

    sget-object v0, Lcom/taobao/android/ssologinwrapper/SsoLogin;->c:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/taobao/android/ssologinwrapper/SsoLogin$LoginStatusFetcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/taobao/android/ssologinwrapper/SsoLogin$LoginStatusFetcher;-><init>(Lcom/taobao/android/ssologinwrapper/SsoLogin;Lcom/taobao/android/ssologinwrapper/SsoLogin$1;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-le v1, v2, :cond_2

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/taobao/android/ssologinwrapper/SsoLogin$LoginStatusFetcher;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_1
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/taobao/android/ssologinwrapper/SsoLogin$AccountChangedReceiver;

    invoke-direct {v2, p0, v0}, Lcom/taobao/android/ssologinwrapper/SsoLogin$AccountChangedReceiver;-><init>(Lcom/taobao/android/ssologinwrapper/SsoLogin;Lcom/taobao/android/ssologinwrapper/SsoLogin$LoginStatusFetcher;)V

    sput-object v2, Lcom/taobao/android/ssologinwrapper/SsoLogin;->c:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin;->a:Landroid/content/Context;

    sget-object v2, Lcom/taobao/android/ssologinwrapper/SsoLogin;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/taobao/android/ssologinwrapper/SsoLogin$LoginStatusFetcher;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method

.method protected shareSsoToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    const/4 v8, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "shareSsoToken: ssoToken "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " | nick "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " | photoUrl "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " | accountType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Lcom/taobao/android/sso/CalledFromWrongThreadException;

    invoke-direct {v0}, Lcom/taobao/android/sso/CalledFromWrongThreadException;-><init>()V

    throw v0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v8

    :goto_0
    return v0

    :cond_2
    invoke-direct {p0}, Lcom/taobao/android/ssologinwrapper/SsoLogin;->a()V

    invoke-direct {p0, p4}, Lcom/taobao/android/ssologinwrapper/SsoLogin;->a(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v1

    if-nez v1, :cond_5

    :try_start_0
    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin;->f:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin;->a:Landroid/content/Context;

    const-string/jumbo v2, "\u652f\u4ed8\u5b9d\u4e3b\u8d26\u53f7"

    const-string/jumbo v3, "alibaba:ssotoken"

    iget-object v1, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin;->a:Landroid/content/Context;

    check-cast v1, Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v4, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v1, p2

    move-object v4, p1

    move-object v5, p3

    move-object v7, p4

    invoke-static/range {v0 .. v7}, Lcom/taobao/android/sso/SsoManager;->addAccountWithToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/accounts/Account;

    :cond_3
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin;->g:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin;->a:Landroid/content/Context;

    const-string/jumbo v2, "\u6dd8\u5b9d\u4e3b\u8d26\u53f7"

    const-string/jumbo v3, "alibaba:ssotoken"

    iget-object v1, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin;->a:Landroid/content/Context;

    check-cast v1, Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v4, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v1, p2

    move-object v4, p1

    move-object v5, p3

    move-object v7, p4

    invoke-static/range {v0 .. v7}, Lcom/taobao/android/sso/SsoManager;->addAccountWithToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/accounts/Account;

    goto :goto_1

    :catch_0
    move-exception v0

    move v0, v8

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/taobao/android/sso/SsoManager;->removeAccount(Landroid/content/Context;Landroid/accounts/Account;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v8

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin;->a:Landroid/content/Context;

    iget-object v2, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string/jumbo v3, "alibaba:ssotoken"

    iget-object v1, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin;->a:Landroid/content/Context;

    check-cast v1, Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v4, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v1, p2

    move-object v4, p1

    move-object v5, p3

    move-object v7, p4

    invoke-static/range {v0 .. v7}, Lcom/taobao/android/sso/SsoManager;->addAccountWithToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/accounts/Account;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v8

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    move v0, v8

    goto/16 :goto_0
.end method

.method protected taobaoAccountType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin;->g:Ljava/lang/String;

    return-object v0
.end method

.method protected unRegSsoStateListener()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin;->b:Lcom/taobao/android/sso/SsoStatesChangedListener;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object v2, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin;->b:Lcom/taobao/android/sso/SsoStatesChangedListener;

    sget-object v0, Lcom/taobao/android/ssologinwrapper/SsoLogin;->c:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin;->a:Landroid/content/Context;

    sget-object v1, Lcom/taobao/android/ssologinwrapper/SsoLogin;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sput-object v2, Lcom/taobao/android/ssologinwrapper/SsoLogin;->c:Landroid/content/BroadcastReceiver;

    goto :goto_0
.end method

.method protected updateWhiteList([Landroid/content/pm/Signature;J)Z
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Lcom/taobao/android/sso/CalledFromWrongThreadException;

    invoke-direct {v0}, Lcom/taobao/android/sso/CalledFromWrongThreadException;-><init>()V

    throw v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/taobao/android/sso/internal/Authenticator;->getAlipayAccountType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, p2, p3, v1}, Lcom/taobao/android/sso/SsoManager;->updateWhitelist(Landroid/content/Context;[Landroid/content/pm/Signature;JLjava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin;->e:Z

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/taobao/android/sso/internal/Authenticator;->getTaobaoAccountType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, p2, p3, v1}, Lcom/taobao/android/sso/SsoManager;->updateWhitelist(Landroid/content/Context;[Landroid/content/pm/Signature;JLjava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin;->e:Z
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/accounts/OperationCanceledException;->printStackTrace()V

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

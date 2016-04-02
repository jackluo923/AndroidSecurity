.class public Lcom/alipay/mobile/security/gesture/util/GesutreContainUtil;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/alipay/mobile/security/gesture/util/GesutreContainUtil;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get8BytesStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    :cond_0
    const-string/jumbo v0, "userInfo"

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getAhead8BytesStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v1, 0x8

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_1

    :cond_0
    const-string/jumbo v0, "userInfo"

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/security/gesture/util/GesutreContainUtil;
    .locals 2

    const-class v1, Lcom/alipay/mobile/security/gesture/util/GesutreContainUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/security/gesture/util/GesutreContainUtil;->a:Lcom/alipay/mobile/security/gesture/util/GesutreContainUtil;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/security/gesture/util/GesutreContainUtil;

    invoke-direct {v0}, Lcom/alipay/mobile/security/gesture/util/GesutreContainUtil;-><init>()V

    sput-object v0, Lcom/alipay/mobile/security/gesture/util/GesutreContainUtil;->a:Lcom/alipay/mobile/security/gesture/util/GesutreContainUtil;

    :cond_0
    sget-object v0, Lcom/alipay/mobile/security/gesture/util/GesutreContainUtil;->a:Lcom/alipay/mobile/security/gesture/util/GesutreContainUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

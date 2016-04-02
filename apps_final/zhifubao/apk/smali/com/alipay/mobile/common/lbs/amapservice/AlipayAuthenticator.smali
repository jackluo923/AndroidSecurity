.class public Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator;
.super Ljava/lang/Object;
.source "AlipayAuthenticator.java"


# static fields
.field private static a:Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator;

.field private static b:Landroid/content/Context;

.field private static d:Ljava/lang/String;


# instance fields
.field private c:Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator;->b:Landroid/content/Context;

    .line 48
    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator;->c:Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;

    .line 275
    return-void
.end method

.method public static Instance()Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator;->a:Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator;

    invoke-direct {v0}, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator;->a:Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator;

    .line 59
    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator;->a:Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator;

    return-object v0
.end method

.method static synthetic access$602(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 31
    sput-object p0, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static getApkKeyHash(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 297
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 299
    const/16 v1, 0x40

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 303
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 305
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    .line 307
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 309
    const-string/jumbo v0, "X509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 313
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    .line 315
    const-string/jumbo v1, "SHA-1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 317
    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 319
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 321
    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 323
    const-string/jumbo v1, "="

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$InitCallback;)I
    .locals 1

    .prologue
    .line 71
    :try_start_0
    invoke-static {p1, p2}, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;->getInstance(Landroid/content/Context;Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$InitCallback;)Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;

    move-result-object v0

    .line 74
    # invokes: Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;->a()Z
    invoke-static {v0}, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;->access$000(Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;)Z

    .line 75
    iput-object v0, p0, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator;->c:Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public process(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 105
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator;->c:Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator;->c:Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;

    # getter for: Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;->a:Lcom/a/a/a/a/a;
    invoke-static {v1}, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;->access$300(Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;)Lcom/a/a/a/a/a;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator;->c:Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator;->c:Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;

    # getter for: Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;->a:Lcom/a/a/a/a/a;
    invoke-static {v1}, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;->access$300(Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;)Lcom/a/a/a/a/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/a/a/a/a/a;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->pingBinder()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    sget-object v1, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator;->a:Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator;->uninit()V

    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator;->c:Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;

    if-nez v1, :cond_3

    new-instance v1, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$ServiceException;

    const-string/jumbo v2, "AlipayAuthenticator not connected"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$ServiceException;-><init>(Ljava/lang/String;Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$1;)V

    throw v1

    .line 109
    :catch_0
    move-exception v1

    .line 110
    :goto_0
    return-object v0

    .line 105
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator;->c:Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;

    # invokes: Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;->a(Landroid/os/Bundle;)Landroid/os/Bundle;
    invoke-static {v1, p1}, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;->access$200(Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$ServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$RequestException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public uninit()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator;->c:Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator;->c:Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;

    invoke-static {v0}, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;->access$100(Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;)V

    .line 92
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator;->c:Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$Connection;

    .line 93
    return-void
.end method

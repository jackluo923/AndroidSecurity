.class public Lcom/alipay/mobile/command/util/SignVerifyTool;
.super Ljava/lang/Object;


# static fields
.field public static final TAG:Ljava/lang/String; = "SignVerifyTool"

.field private static final a:[Landroid/content/pm/Signature;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/content/pm/Signature;

    sput-object v0, Lcom/alipay/mobile/command/util/SignVerifyTool;->a:[Landroid/content/pm/Signature;

    new-instance v1, Landroid/content/pm/Signature;

    const-string/jumbo v2, "MIICRDCCAa0CBEsoo8kwDQYJKoZIhvcNAQEEBQAwaDELMAkGA1UEBhMCY24xEDAOBgNVBAgTB2JlaWppbmcxEDAOBgNVBAcTB2JlaWppbmcxDzANBgNVBAoTBmFsaXBheTEPMA0GA1UECxMGYWxpcGF5MRMwEQYDVQQDEwpzaGlxdW4uc2hpMCAXDTA5MTIxNjA5MDkyOVoYDzIwNTEwMTEwMDkwOTI5WjBoMQswCQYDVQQGEwJjbjEQMA4GA1UECBMHYmVpamluZzEQMA4GA1UEBxMHYmVpamluZzEPMA0GA1UEChMGYWxpcGF5MQ8wDQYDVQQLEwZhbGlwYXkxEzARBgNVBAMTCnNoaXF1bi5zaGkwgZ8wDQYJKoZIhvcNAQEBBQADgY0AMIGJAoGBALbLrWy9XtDSCa/GmtO3phfvqumzxH6r4L5C2SSTb6eMgAGx/XSweeX/lpAGHaz6R2jpgaUmucp3FWyjYlHPL5BtEFSBN0mYp+bm4Y91ypi47S6vhv9ALIdMygomMFPyIjeFggaGfSEAINqjjEiyDMnf2CtEpRrrXbRZsieU4tZJAgMBAAEwDQYJKoZIhvcNAQEEBQADgYEAtrXjhUstXaqgLRJxldE6GSeZEXYEeYL+qj0WJXQHiClkQ+kAD+FN/mcB1+hr4GuSguaNTv8ysZ1IVVuKCDim4UYjjwSKyphnFdfqsPtEV5a70ZNgp3IbjZm6BFga+VeikMRzAgVfgThi88QLhA6ViY5yod4DtiV6GsrUtILNgVw="

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/Signature;-><init>([B)V

    aput-object v1, v0, v3

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/4 v1, 0x0

    invoke-static {p0, p1}, Lcom/alipay/mobile/command/util/SignVerifyTool;->b(Ljava/lang/String;Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v4

    if-nez v4, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    if-eqz v4, :cond_1

    array-length v2, v4

    if-lez v2, :cond_1

    array-length v5, v4

    array-length v0, v4

    new-array v0, v0, [Landroid/content/pm/Signature;

    move v3, v1

    :goto_1
    if-lt v3, v5, :cond_2

    :cond_1
    sget-object v1, Lcom/alipay/mobile/command/util/SignVerifyTool;->a:[Landroid/content/pm/Signature;

    invoke-static {v1, v0}, Lcom/alipay/mobile/command/util/SignVerifyTool;->a([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v0

    goto :goto_0

    :cond_2
    :try_start_0
    new-instance v2, Landroid/content/pm/Signature;

    aget-object v6, v4, v3

    invoke-virtual {v6}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/content/pm/Signature;-><init>([B)V

    aput-object v2, v0, v3
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :catch_0
    move-exception v2

    const-string/jumbo v6, ""

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v6, v2, v7}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private static a([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    array-length v3, p0

    move v1, v0

    :goto_1
    if-lt v1, v3, :cond_2

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    array-length v4, p1

    move v1, v0

    :goto_2
    if-lt v1, v4, :cond_3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    aget-object v4, p0, v1

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    aget-object v5, p1, v1

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private static a(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;
    .locals 8

    const/4 v0, 0x0

    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    :cond_0
    const/4 v2, 0x0

    const/16 v3, 0x2000

    invoke-virtual {v1, p2, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SignVerifyTool"

    new-array v3, v4, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Exception reading "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    aput-object v1, v3, v7

    invoke-static {v2, v3}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v2, "SignVerifyTool"

    new-array v3, v4, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Exception reading "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    aput-object v1, v3, v7

    invoke-static {v2, v3}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 11

    const/4 v1, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    :try_start_0
    new-instance v2, Ljava/util/jar/JarFile;

    invoke-direct {v2, p0}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x2000

    :try_start_1
    new-array v0, v0, [B

    invoke-virtual {v2, p1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/command/util/SignVerifyTool;->a(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    if-nez v0, :cond_0

    :try_start_2
    const-string/jumbo v1, "SignVerifyTool"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, " Has no certificates at entry "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "; ignoring!"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v5

    invoke-static {v1, v4}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    :try_start_3
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    :goto_1
    :try_start_4
    const-string/jumbo v3, "util"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "\u9a8c\u8bc1\u6587\u4ef6,\u8bfb\u53d6\u6570\u636e\u5f02\u5e38."

    aput-object v6, v4, v5

    invoke-static {v3, v1, v4}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_1

    :try_start_5
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v2, "util"

    new-array v3, v9, [Ljava/lang/Object;

    const-string/jumbo v4, "\u9a8c\u8bc1\u6587\u4ef6,\u6570\u636e\u6d41\u5173\u95ed\u5f02\u5e38."

    aput-object v4, v3, v8

    invoke-static {v2, v1, v3}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_2

    :try_start_6
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_2
    :goto_3
    throw v0

    :catch_2
    move-exception v1

    const-string/jumbo v2, "util"

    new-array v3, v9, [Ljava/lang/Object;

    const-string/jumbo v4, "\u9a8c\u8bc1\u6587\u4ef6,\u6570\u636e\u6d41\u5173\u95ed\u5f02\u5e38."

    aput-object v4, v3, v8

    invoke-static {v2, v1, v3}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_3

    :catch_3
    move-exception v1

    const-string/jumbo v2, "util"

    new-array v3, v9, [Ljava/lang/Object;

    const-string/jumbo v4, "\u9a8c\u8bc1\u6587\u4ef6,\u6570\u636e\u6d41\u5173\u95ed\u5f02\u5e38."

    aput-object v4, v3, v8

    invoke-static {v2, v1, v3}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method public static getPackageSignatures(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/pm/Signature;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, ""

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static verifyApk([Landroid/content/pm/Signature;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/alipay/mobile/command/util/CommandConfig;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "util"

    new-array v3, v0, [Ljava/lang/Object;

    const-string/jumbo v4, "debug\u6a21\u5f0f\uff0c\u5ffd\u7565\u7b7e\u540d\u6821\u9a8c"

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logD(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/command/util/CommandUtil;->isInWallet()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1, p2}, Lcom/alipay/mobile/command/util/SignVerifyTool;->b(Ljava/lang/String;Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v4

    if-nez v4, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    if-eqz v4, :cond_2

    array-length v2, v4

    if-lez v2, :cond_2

    array-length v5, v4

    array-length v0, v4

    new-array v0, v0, [Landroid/content/pm/Signature;

    move v3, v1

    :goto_1
    if-lt v3, v5, :cond_3

    :cond_2
    invoke-static {p0, v0}, Lcom/alipay/mobile/command/util/SignVerifyTool;->a([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v0

    goto :goto_0

    :cond_3
    :try_start_0
    new-instance v2, Landroid/content/pm/Signature;

    aget-object v6, v4, v3

    invoke-virtual {v6}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/content/pm/Signature;-><init>([B)V

    aput-object v2, v0, v3
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :catch_0
    move-exception v2

    const-string/jumbo v6, ""

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v6, v2, v7}, Lcom/alipay/mobile/command/util/CommandLogUtil;->logE(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-static {p1, p2}, Lcom/alipay/mobile/command/util/SignVerifyTool;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

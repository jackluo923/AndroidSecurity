.class public Lcom/alipay/mobile/security/senative/APSE;
.super Ljava/lang/Object;


# static fields
.field private static final DIGITS_POWER:[I

.field public static final MODE_PRIVATE:I = 0x0

.field public static _instance:Lcom/alipay/mobile/security/senative/APSE; = null

.field private static isLoad:Z = false

.field private static final mVersion:Ljava/lang/String; = "1.0.3"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alipay/mobile/security/senative/APSE;->DIGITS_POWER:[I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/security/senative/APSE;->isLoad:Z

    :try_start_0
    const-string/jumbo v0, "APSE_1.0.3"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/security/senative/APSE;->isLoad:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :array_0
    .array-data 4
        0x1
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HOTP([BJI)Ljava/lang/String;
    .locals 6

    const/16 v0, 0x9

    const/16 v5, 0x8

    new-array v2, v5, [B

    const/4 v1, 0x7

    :goto_0
    if-ltz v1, :cond_0

    const-wide/16 v3, 0xff

    and-long/2addr v3, p1

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    shr-long/2addr p1, v5

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    invoke-static {p0, v2}, Lcom/alipay/mobile/security/senative/APSE;->hmac_sha1([B[B)[B

    move-result-object v1

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, v1, v2

    and-int/lit8 v2, v2, 0xf

    aget-byte v3, v1, v2

    and-int/lit8 v3, v3, 0x7f

    shl-int/lit8 v3, v3, 0x18

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    add-int/lit8 v4, v2, 0x2

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v3

    if-le p3, v0, :cond_3

    :goto_1
    if-gtz v0, :cond_1

    const/4 v0, 0x1

    :cond_1
    sget-object v2, Lcom/alipay/mobile/security/senative/APSE;->DIGITS_POWER:[I

    aget v0, v2, v0

    rem-int v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, p3, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    return-object v0

    :cond_3
    move v0, p3

    goto :goto_1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/alipay/mobile/security/senative/APSE;
    .locals 2

    const-class v1, Lcom/alipay/mobile/security/senative/APSE;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/security/senative/APSE;->_instance:Lcom/alipay/mobile/security/senative/APSE;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/security/senative/APSE;

    invoke-direct {v0}, Lcom/alipay/mobile/security/senative/APSE;-><init>()V

    sput-object v0, Lcom/alipay/mobile/security/senative/APSE;->_instance:Lcom/alipay/mobile/security/senative/APSE;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/senative/APSE;->loadSo(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/alipay/mobile/security/senative/APSE;->_instance:Lcom/alipay/mobile/security/senative/APSE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static hmac_sha1([B[B)[B
    .locals 3

    :try_start_0
    const-string/jumbo v0, "HmacSHA1"

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v2, "RAW"

    invoke-direct {v1, p0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "HMAC-SHA-1"

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    goto :goto_0
.end method

.method private loadSo(Landroid/content/Context;)V
    .locals 3

    sget-boolean v0, Lcom/alipay/mobile/security/senative/APSE;->isLoad:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/security/senative/SEProtectLoaderEx;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/security/senative/SEProtectLoaderEx;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "APSE"

    const-string/jumbo v2, "1.0.3"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/security/senative/SEProtectLoaderEx;->loadSo(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public native delete(Ljava/lang/Object;Ljava/lang/String;I)I
.end method

.method public native encrypt(Ljava/lang/Object;[B)[B
.end method

.method public native encryptAndSign(Ljava/lang/Object;[B)[B
.end method

.method public native encryptAndSignRds(Ljava/lang/Object;[B)[B
.end method

.method public native getErrorCode()Ljava/lang/String;
.end method

.method public native getVersion()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public native init(Ljava/lang/Object;)I
.end method

.method public native load(Ljava/lang/Object;Ljava/lang/String;I)[B
.end method

.method public native nativeHOTP(Ljava/lang/Object;[BJI)Ljava/lang/String;
.end method

.method public native store(Ljava/lang/Object;Ljava/lang/String;[BI)I
.end method

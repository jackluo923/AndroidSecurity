.class public Lcom/alipay/mobile/common/logging/util/RSAUtil;
.super Ljava/lang/Object;
.source "RSAUtil.java"


# static fields
.field private static a:Ljavax/crypto/Cipher;

.field private static b:Ljavax/crypto/Cipher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    sput-object v0, Lcom/alipay/mobile/common/logging/util/RSAUtil;->a:Ljavax/crypto/Cipher;

    .line 35
    sput-object v0, Lcom/alipay/mobile/common/logging/util/RSAUtil;->b:Ljavax/crypto/Cipher;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a([BLjava/lang/String;)[B
    .locals 7

    .prologue
    const/16 v3, 0x75

    const/4 v0, 0x0

    .line 108
    const-class v5, Lcom/alipay/mobile/common/logging/util/RSAUtil;

    monitor-enter v5

    if-nez p1, :cond_1

    .line 145
    :cond_0
    :goto_0
    monitor-exit v5

    return-object v0

    .line 116
    :cond_1
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/logging/util/RSAUtil;->a:Ljavax/crypto/Cipher;

    if-nez v1, :cond_2

    .line 117
    const-string/jumbo v1, "RSA"

    invoke-static {p1}, Lcom/alipay/mobile/common/logging/util/Base64;->a(Ljava/lang/String;)[B

    move-result-object v2

    new-instance v4, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v4, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v1

    .line 118
    const-string/jumbo v2, "RSA/ECB/PKCS1Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 119
    sput-object v2, Lcom/alipay/mobile/common/logging/util/RSAUtil;->a:Ljavax/crypto/Cipher;

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 123
    :cond_2
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 125
    const/4 v1, 0x0

    move v4, v1

    :goto_1
    :try_start_1
    array-length v1, p0

    if-ge v4, v1, :cond_4

    .line 126
    sget-object v6, Lcom/alipay/mobile/common/logging/util/RSAUtil;->a:Ljavax/crypto/Cipher;

    array-length v1, p0

    sub-int/2addr v1, v4

    if-ge v1, v3, :cond_3

    array-length v1, p0

    sub-int/2addr v1, v4

    :goto_2
    invoke-virtual {v6, p0, v4, v1}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 125
    add-int/lit8 v1, v4, 0x75

    move v4, v1

    goto :goto_1

    :cond_3
    move v1, v3

    .line 126
    goto :goto_2

    .line 130
    :cond_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v0

    .line 135
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 138
    :catch_0
    move-exception v1

    :try_start_3
    invoke-static {v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->b(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    .line 132
    :catch_1
    move-exception v1

    move-object v2, v0

    :goto_3
    :try_start_4
    invoke-static {v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->b(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 135
    if-eqz v2, :cond_0

    .line 137
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 138
    :catch_2
    move-exception v1

    :try_start_6
    invoke-static {v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->b(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 135
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_4
    if-eqz v2, :cond_5

    .line 137
    :try_start_7
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 141
    :cond_5
    :goto_5
    :try_start_8
    throw v0

    .line 138
    :catch_3
    move-exception v1

    invoke-static {v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->b(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_5

    .line 135
    :catchall_2
    move-exception v0

    goto :goto_4

    .line 132
    :catch_4
    move-exception v1

    goto :goto_3
.end method

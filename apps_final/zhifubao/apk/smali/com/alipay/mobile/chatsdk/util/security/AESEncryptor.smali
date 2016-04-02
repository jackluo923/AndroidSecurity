.class public Lcom/alipay/mobile/chatsdk/util/security/AESEncryptor;
.super Ljava/lang/Object;
.source "AESEncryptor.java"


# static fields
.field private static final HEX:Ljava/lang/String; = "0123456789ABCDEF"

.field private static final JELLY_BEAN_4_2:I = 0x11


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendHex(Ljava/lang/StringBuffer;B)V
    .locals 3

    .prologue
    .line 147
    const-string/jumbo v0, "0123456789ABCDEF"

    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "0123456789ABCDEF"

    and-int/lit8 v2, p1, 0xf

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 148
    return-void
.end method

.method public static decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    invoke-static {p1}, Lcom/alipay/mobile/chatsdk/util/security/AESEncryptor;->toByte(Ljava/lang/String;)[B

    move-result-object v0

    .line 62
    invoke-static {p0, v0}, Lcom/alipay/mobile/chatsdk/util/security/AESEncryptor;->decrypt(Ljava/lang/String;[B)[B

    move-result-object v0

    .line 63
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method public static decrypt(Ljava/lang/String;[B)[B
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/chatsdk/util/security/AESEncryptor;->getRawKey([B)[B

    move-result-object v0

    .line 77
    invoke-static {v0, p1}, Lcom/alipay/mobile/chatsdk/util/security/AESEncryptor;->decrypt([B[B)[B

    move-result-object v0

    .line 78
    return-object v0
.end method

.method private static decrypt([B[B)[B
    .locals 3

    .prologue
    .line 83
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 84
    const-string/jumbo v1, "AES"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 85
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 86
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 87
    return-object v0
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alipay/mobile/chatsdk/util/security/AESEncryptor;->encrypt(Ljava/lang/String;[B)[B

    move-result-object v0

    .line 23
    invoke-static {v0}, Lcom/alipay/mobile/chatsdk/util/security/AESEncryptor;->toHex([B)Ljava/lang/String;

    move-result-object v0

    .line 25
    return-object v0
.end method

.method public static encrypt(Ljava/lang/String;[B)[B
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/chatsdk/util/security/AESEncryptor;->getRawKey([B)[B

    move-result-object v0

    .line 38
    invoke-static {v0, p1}, Lcom/alipay/mobile/chatsdk/util/security/AESEncryptor;->encrypt([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method private static encrypt([B[B)[B
    .locals 3

    .prologue
    .line 50
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 51
    const-string/jumbo v1, "AES"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 52
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 53
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static fromHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/alipay/mobile/chatsdk/util/security/AESEncryptor;->toByte(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private static getRawKey([B)[B
    .locals 3

    .prologue
    .line 91
    const-string/jumbo v0, "AES"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    .line 92
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v0, v2, :cond_0

    .line 94
    const-string/jumbo v0, "SHA1PRNG"

    const-string/jumbo v2, "Crypto"

    invoke-static {v0, v2}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0

    .line 98
    :goto_0
    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->setSeed([B)V

    .line 99
    const/16 v2, 0x80

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 100
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 101
    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    .line 102
    return-object v0

    .line 96
    :cond_0
    const-string/jumbo v0, "SHA1PRNG"

    invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0

    goto :goto_0
.end method

.method public static toByte(Ljava/lang/String;)[B
    .locals 5

    .prologue
    .line 119
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    .line 120
    new-array v2, v1, [B

    .line 121
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    .line 125
    return-object v2

    .line 122
    :cond_0
    mul-int/lit8 v3, v0, 0x2

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 123
    const/16 v4, 0x10

    .line 122
    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    .line 123
    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    .line 122
    aput-byte v3, v2, v0

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static toHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/chatsdk/util/security/AESEncryptor;->toHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHex([B)Ljava/lang/String;
    .locals 3

    .prologue
    .line 134
    if-nez p0, :cond_0

    .line 135
    const-string/jumbo v0, ""

    .line 141
    :goto_0
    return-object v0

    .line 137
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 138
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-lt v0, v2, :cond_1

    .line 141
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 139
    :cond_1
    aget-byte v2, p0, v0

    invoke-static {v1, v2}, Lcom/alipay/mobile/chatsdk/util/security/AESEncryptor;->appendHex(Ljava/lang/StringBuffer;B)V

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

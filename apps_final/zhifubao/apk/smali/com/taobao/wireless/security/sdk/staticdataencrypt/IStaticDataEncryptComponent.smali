.class public interface abstract Lcom/taobao/wireless/security/sdk/staticdataencrypt/IStaticDataEncryptComponent;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/taobao/wireless/security/sdk/IComponent;


# static fields
.field public static final ALGORITHM_MAX_NUMBER:I = 0x13

.field public static final GCRY_CIPHER_3DES:I = 0x2

.field public static final GCRY_CIPHER_AES128:I = 0x10

.field public static final GCRY_CIPHER_AES192:I = 0x11

.field public static final GCRY_CIPHER_AES256:I = 0x12

.field public static final GCRY_CIPHER_ARCFOUR:I = 0x3

.field public static final GCRY_CIPHER_BLOWFISH:I = 0x0

.field public static final GCRY_CIPHER_CAMELLIA128:I = 0xc

.field public static final GCRY_CIPHER_CAMELLIA192:I = 0xd

.field public static final GCRY_CIPHER_CAMELLIA256:I = 0xe

.field public static final GCRY_CIPHER_CAST5:I = 0x5

.field public static final GCRY_CIPHER_DES:I = 0x1

.field public static final GCRY_CIPHER_IDEA:I = 0x4

.field public static final GCRY_CIPHER_RFC2268_40:I = 0xf

.field public static final GCRY_CIPHER_SEED:I = 0xb

.field public static final GCRY_CIPHER_SERPENT128:I = 0x8

.field public static final GCRY_CIPHER_SERPENT192:I = 0x9

.field public static final GCRY_CIPHER_SERPENT256:I = 0xa

.field public static final GCRY_CIPHER_TWOFISH:I = 0x6

.field public static final GCRY_CIPHER_TWOFISH128:I = 0x7


# virtual methods
.method public abstract staticBinarySafeDecrypt(ILjava/lang/String;[B)[B
.end method

.method public abstract staticBinarySafeDecryptNoB64(ILjava/lang/String;[B)[B
.end method

.method public abstract staticBinarySafeEncrypt(ILjava/lang/String;[B)[B
.end method

.method public abstract staticBinarySafeEncryptNoB64(ILjava/lang/String;[B)[B
.end method

.method public abstract staticSafeDecrypt(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract staticSafeEncrypt(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

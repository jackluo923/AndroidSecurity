.class public interface abstract Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/wireless/security/open/IComponent;


# static fields
.field public static final ALGORITHM_MAX_NUMBER:I = 0x13

.field public static final OPEN_ENUM_CIPHER_AES128:I = 0x10

.field public static final OPEN_ENUM_CIPHER_AES192:I = 0x11

.field public static final OPEN_ENUM_CIPHER_AES256:I = 0x12


# virtual methods
.method public abstract staticBinarySafeDecrypt(ILjava/lang/String;[BLjava/lang/String;)[B
.end method

.method public abstract staticBinarySafeDecryptNoB64(ILjava/lang/String;[BLjava/lang/String;)[B
.end method

.method public abstract staticBinarySafeEncrypt(ILjava/lang/String;[BLjava/lang/String;)[B
.end method

.method public abstract staticBinarySafeEncryptNoB64(ILjava/lang/String;[BLjava/lang/String;)[B
.end method

.method public abstract staticSafeDecrypt(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract staticSafeEncrypt(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

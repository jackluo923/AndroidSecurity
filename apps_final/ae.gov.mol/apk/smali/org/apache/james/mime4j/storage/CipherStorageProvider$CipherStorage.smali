.class final Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorage;
.super Ljava/lang/Object;
.source "CipherStorageProvider.java"

# interfaces
.implements Lorg/apache/james/mime4j/storage/Storage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/james/mime4j/storage/CipherStorageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CipherStorage"
.end annotation


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private encrypted:Lorg/apache/james/mime4j/storage/Storage;

.field private final skeySpec:Ljavax/crypto/spec/SecretKeySpec;


# direct methods
.method public constructor <init>(Lorg/apache/james/mime4j/storage/Storage;Ljava/lang/String;Ljavax/crypto/spec/SecretKeySpec;)V
    .locals 0
    .param p1, "encrypted"    # Lorg/apache/james/mime4j/storage/Storage;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "skeySpec"    # Ljavax/crypto/spec/SecretKeySpec;

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p1, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorage;->encrypted:Lorg/apache/james/mime4j/storage/Storage;

    .line 150
    iput-object p2, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorage;->algorithm:Ljava/lang/String;

    .line 151
    iput-object p3, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorage;->skeySpec:Ljavax/crypto/spec/SecretKeySpec;

    .line 152
    return-void
.end method


# virtual methods
.method public delete()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorage;->encrypted:Lorg/apache/james/mime4j/storage/Storage;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorage;->encrypted:Lorg/apache/james/mime4j/storage/Storage;

    invoke-interface {v0}, Lorg/apache/james/mime4j/storage/Storage;->delete()V

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorage;->encrypted:Lorg/apache/james/mime4j/storage/Storage;

    .line 159
    :cond_0
    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    iget-object v3, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorage;->encrypted:Lorg/apache/james/mime4j/storage/Storage;

    if-nez v3, :cond_0

    .line 163
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "storage has been deleted"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 166
    :cond_0
    :try_start_0
    iget-object v3, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorage;->algorithm:Ljava/lang/String;

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 167
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v3, 0x2

    iget-object v4, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorage;->skeySpec:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 169
    iget-object v3, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorage;->encrypted:Lorg/apache/james/mime4j/storage/Storage;

    invoke-interface {v3}, Lorg/apache/james/mime4j/storage/Storage;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 170
    .local v2, "in":Ljava/io/InputStream;
    new-instance v3, Ljavax/crypto/CipherInputStream;

    invoke-direct {v3, v2, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 171
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 172
    .local v1, "e":Ljava/security/GeneralSecurityException;
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    invoke-virtual {v3, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    check-cast v3, Ljava/io/IOException;

    throw v3
.end method

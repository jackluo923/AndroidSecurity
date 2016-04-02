.class final Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorageOutputStream;
.super Lorg/apache/james/mime4j/storage/StorageOutputStream;
.source "CipherStorageProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/james/mime4j/storage/CipherStorageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CipherStorageOutputStream"
.end annotation


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final cipherOut:Ljavax/crypto/CipherOutputStream;

.field private final skeySpec:Ljavax/crypto/spec/SecretKeySpec;

.field private final storageOut:Lorg/apache/james/mime4j/storage/StorageOutputStream;


# direct methods
.method public constructor <init>(Lorg/apache/james/mime4j/storage/StorageOutputStream;Ljava/lang/String;Ljavax/crypto/spec/SecretKeySpec;)V
    .locals 3
    .param p1, "out"    # Lorg/apache/james/mime4j/storage/StorageOutputStream;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "skeySpec"    # Ljavax/crypto/spec/SecretKeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-direct {p0}, Lorg/apache/james/mime4j/storage/StorageOutputStream;-><init>()V

    .line 109
    :try_start_0
    iput-object p1, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorageOutputStream;->storageOut:Lorg/apache/james/mime4j/storage/StorageOutputStream;

    .line 110
    iput-object p2, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorageOutputStream;->algorithm:Ljava/lang/String;

    .line 111
    iput-object p3, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorageOutputStream;->skeySpec:Ljavax/crypto/spec/SecretKeySpec;

    .line 113
    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 114
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v2, 0x1

    invoke-virtual {v0, v2, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 116
    new-instance v2, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v2, p1, v0}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    iput-object v2, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorageOutputStream;->cipherOut:Ljavax/crypto/CipherOutputStream;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    return-void

    .line 117
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v1

    .line 118
    .local v1, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    invoke-virtual {v2, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/io/IOException;

    throw v2
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-super {p0}, Lorg/apache/james/mime4j/storage/StorageOutputStream;->close()V

    .line 125
    iget-object v0, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorageOutputStream;->cipherOut:Ljavax/crypto/CipherOutputStream;

    invoke-virtual {v0}, Ljavax/crypto/CipherOutputStream;->close()V

    .line 126
    return-void
.end method

.method protected toStorage0()Lorg/apache/james/mime4j/storage/Storage;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    iget-object v1, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorageOutputStream;->storageOut:Lorg/apache/james/mime4j/storage/StorageOutputStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/storage/StorageOutputStream;->toStorage()Lorg/apache/james/mime4j/storage/Storage;

    move-result-object v0

    .line 138
    .local v0, "encrypted":Lorg/apache/james/mime4j/storage/Storage;
    new-instance v1, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorage;

    iget-object v2, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorageOutputStream;->algorithm:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorageOutputStream;->skeySpec:Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v1, v0, v2, v3}, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorage;-><init>(Lorg/apache/james/mime4j/storage/Storage;Ljava/lang/String;Ljavax/crypto/spec/SecretKeySpec;)V

    return-object v1
.end method

.method protected write0([BII)V
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorageOutputStream;->cipherOut:Ljavax/crypto/CipherOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherOutputStream;->write([BII)V

    .line 132
    return-void
.end method

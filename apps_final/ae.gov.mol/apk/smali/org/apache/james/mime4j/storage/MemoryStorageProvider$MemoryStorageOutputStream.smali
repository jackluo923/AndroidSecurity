.class final Lorg/apache/james/mime4j/storage/MemoryStorageProvider$MemoryStorageOutputStream;
.super Lorg/apache/james/mime4j/storage/StorageOutputStream;
.source "MemoryStorageProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/james/mime4j/storage/MemoryStorageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MemoryStorageOutputStream"
.end annotation


# instance fields
.field bab:Lorg/apache/james/mime4j/util/ByteArrayBuffer;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/apache/james/mime4j/storage/StorageOutputStream;-><init>()V

    .line 52
    new-instance v0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/james/mime4j/storage/MemoryStorageProvider$MemoryStorageOutputStream;->bab:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/james/mime4j/storage/MemoryStorageProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/james/mime4j/storage/MemoryStorageProvider$1;

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/apache/james/mime4j/storage/MemoryStorageProvider$MemoryStorageOutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method protected toStorage0()Lorg/apache/james/mime4j/storage/Storage;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Lorg/apache/james/mime4j/storage/MemoryStorageProvider$MemoryStorage;

    iget-object v1, p0, Lorg/apache/james/mime4j/storage/MemoryStorageProvider$MemoryStorageOutputStream;->bab:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer()[B

    move-result-object v1

    iget-object v2, p0, Lorg/apache/james/mime4j/storage/MemoryStorageProvider$MemoryStorageOutputStream;->bab:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->length()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/james/mime4j/storage/MemoryStorageProvider$MemoryStorage;-><init>([BI)V

    return-object v0
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
    .line 57
    iget-object v0, p0, Lorg/apache/james/mime4j/storage/MemoryStorageProvider$MemoryStorageOutputStream;->bab:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append([BII)V

    .line 58
    return-void
.end method

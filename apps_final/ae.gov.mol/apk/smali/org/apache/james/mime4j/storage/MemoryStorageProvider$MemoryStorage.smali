.class final Lorg/apache/james/mime4j/storage/MemoryStorageProvider$MemoryStorage;
.super Ljava/lang/Object;
.source "MemoryStorageProvider.java"

# interfaces
.implements Lorg/apache/james/mime4j/storage/Storage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/james/mime4j/storage/MemoryStorageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MemoryStorage"
.end annotation


# instance fields
.field private final count:I

.field private data:[B


# direct methods
.method public constructor <init>([BI)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "count"    # I

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lorg/apache/james/mime4j/storage/MemoryStorageProvider$MemoryStorage;->data:[B

    .line 72
    iput p2, p0, Lorg/apache/james/mime4j/storage/MemoryStorageProvider$MemoryStorage;->count:I

    .line 73
    return-void
.end method


# virtual methods
.method public delete()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/storage/MemoryStorageProvider$MemoryStorage;->data:[B

    .line 84
    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lorg/apache/james/mime4j/storage/MemoryStorageProvider$MemoryStorage;->data:[B

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "storage has been deleted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/apache/james/mime4j/storage/MemoryStorageProvider$MemoryStorage;->data:[B

    const/4 v2, 0x0

    iget v3, p0, Lorg/apache/james/mime4j/storage/MemoryStorageProvider$MemoryStorage;->count:I

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method

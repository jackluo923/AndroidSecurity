.class final Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorage;
.super Ljava/lang/Object;
.source "ThresholdStorageProvider.java"

# interfaces
.implements Lorg/apache/james/mime4j/storage/Storage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/james/mime4j/storage/ThresholdStorageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ThresholdStorage"
.end annotation


# instance fields
.field private head:[B

.field private final headLen:I

.field private tail:Lorg/apache/james/mime4j/storage/Storage;


# direct methods
.method public constructor <init>([BILorg/apache/james/mime4j/storage/Storage;)V
    .locals 0
    .param p1, "head"    # [B
    .param p2, "headLen"    # I
    .param p3, "tail"    # Lorg/apache/james/mime4j/storage/Storage;

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p1, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorage;->head:[B

    .line 139
    iput p2, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorage;->headLen:I

    .line 140
    iput-object p3, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorage;->tail:Lorg/apache/james/mime4j/storage/Storage;

    .line 141
    return-void
.end method


# virtual methods
.method public delete()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 144
    iget-object v0, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorage;->head:[B

    if-eqz v0, :cond_0

    .line 145
    iput-object v1, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorage;->head:[B

    .line 146
    iget-object v0, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorage;->tail:Lorg/apache/james/mime4j/storage/Storage;

    invoke-interface {v0}, Lorg/apache/james/mime4j/storage/Storage;->delete()V

    .line 147
    iput-object v1, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorage;->tail:Lorg/apache/james/mime4j/storage/Storage;

    .line 149
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
    .line 152
    iget-object v2, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorage;->head:[B

    if-nez v2, :cond_0

    .line 153
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "storage has been deleted"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 155
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorage;->head:[B

    const/4 v3, 0x0

    iget v4, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorage;->headLen:I

    invoke-direct {v0, v2, v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 156
    .local v0, "headStream":Ljava/io/InputStream;
    iget-object v2, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorage;->tail:Lorg/apache/james/mime4j/storage/Storage;

    invoke-interface {v2}, Lorg/apache/james/mime4j/storage/Storage;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 157
    .local v1, "tailStream":Ljava/io/InputStream;
    new-instance v2, Ljava/io/SequenceInputStream;

    invoke-direct {v2, v0, v1}, Ljava/io/SequenceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    return-object v2
.end method

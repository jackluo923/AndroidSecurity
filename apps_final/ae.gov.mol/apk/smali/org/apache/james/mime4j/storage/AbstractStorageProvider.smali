.class public abstract Lorg/apache/james/mime4j/storage/AbstractStorageProvider;
.super Ljava/lang/Object;
.source "AbstractStorageProvider.java"

# interfaces
.implements Lorg/apache/james/mime4j/storage/StorageProvider;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method public final store(Ljava/io/InputStream;)Lorg/apache/james/mime4j/storage/Storage;
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-virtual {p0}, Lorg/apache/james/mime4j/storage/AbstractStorageProvider;->createStorageOutputStream()Lorg/apache/james/mime4j/storage/StorageOutputStream;

    move-result-object v0

    .line 57
    .local v0, "out":Lorg/apache/james/mime4j/storage/StorageOutputStream;
    invoke-static {p1, v0}, Lorg/apache/james/mime4j/codec/CodecUtil;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 58
    invoke-virtual {v0}, Lorg/apache/james/mime4j/storage/StorageOutputStream;->toStorage()Lorg/apache/james/mime4j/storage/Storage;

    move-result-object v1

    return-object v1
.end method

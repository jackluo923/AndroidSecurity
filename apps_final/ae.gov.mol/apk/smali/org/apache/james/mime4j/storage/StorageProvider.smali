.class public interface abstract Lorg/apache/james/mime4j/storage/StorageProvider;
.super Ljava/lang/Object;
.source "StorageProvider.java"


# virtual methods
.method public abstract createStorageOutputStream()Lorg/apache/james/mime4j/storage/StorageOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract store(Ljava/io/InputStream;)Lorg/apache/james/mime4j/storage/Storage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

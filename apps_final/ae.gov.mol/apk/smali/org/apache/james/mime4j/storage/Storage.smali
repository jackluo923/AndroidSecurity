.class public interface abstract Lorg/apache/james/mime4j/storage/Storage;
.super Ljava/lang/Object;
.source "Storage.java"


# virtual methods
.method public abstract delete()V
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

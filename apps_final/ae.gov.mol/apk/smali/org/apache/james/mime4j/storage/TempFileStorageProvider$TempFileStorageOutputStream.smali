.class final Lorg/apache/james/mime4j/storage/TempFileStorageProvider$TempFileStorageOutputStream;
.super Lorg/apache/james/mime4j/storage/StorageOutputStream;
.source "TempFileStorageProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/james/mime4j/storage/TempFileStorageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TempFileStorageOutputStream"
.end annotation


# instance fields
.field private file:Ljava/io/File;

.field private out:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    invoke-direct {p0}, Lorg/apache/james/mime4j/storage/StorageOutputStream;-><init>()V

    .line 116
    iput-object p1, p0, Lorg/apache/james/mime4j/storage/TempFileStorageProvider$TempFileStorageOutputStream;->file:Ljava/io/File;

    .line 117
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lorg/apache/james/mime4j/storage/TempFileStorageProvider$TempFileStorageOutputStream;->out:Ljava/io/OutputStream;

    .line 118
    return-void
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
    .line 122
    invoke-super {p0}, Lorg/apache/james/mime4j/storage/StorageOutputStream;->close()V

    .line 123
    iget-object v0, p0, Lorg/apache/james/mime4j/storage/TempFileStorageProvider$TempFileStorageOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 124
    return-void
.end method

.method protected toStorage0()Lorg/apache/james/mime4j/storage/Storage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    new-instance v0, Lorg/apache/james/mime4j/storage/TempFileStorageProvider$TempFileStorage;

    iget-object v1, p0, Lorg/apache/james/mime4j/storage/TempFileStorageProvider$TempFileStorageOutputStream;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/storage/TempFileStorageProvider$TempFileStorage;-><init>(Ljava/io/File;)V

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
    .line 129
    iget-object v0, p0, Lorg/apache/james/mime4j/storage/TempFileStorageProvider$TempFileStorageOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 130
    return-void
.end method

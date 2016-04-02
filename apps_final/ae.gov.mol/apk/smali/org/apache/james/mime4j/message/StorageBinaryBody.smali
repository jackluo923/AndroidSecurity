.class Lorg/apache/james/mime4j/message/StorageBinaryBody;
.super Lorg/apache/james/mime4j/message/BinaryBody;
.source "StorageBinaryBody.java"


# instance fields
.field private storage:Lorg/apache/james/mime4j/storage/MultiReferenceStorage;


# direct methods
.method public constructor <init>(Lorg/apache/james/mime4j/storage/MultiReferenceStorage;)V
    .locals 0
    .param p1, "storage"    # Lorg/apache/james/mime4j/storage/MultiReferenceStorage;

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/apache/james/mime4j/message/BinaryBody;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/apache/james/mime4j/message/StorageBinaryBody;->storage:Lorg/apache/james/mime4j/storage/MultiReferenceStorage;

    .line 39
    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/james/mime4j/message/SingleBody;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/StorageBinaryBody;->copy()Lorg/apache/james/mime4j/message/StorageBinaryBody;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/apache/james/mime4j/message/StorageBinaryBody;
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/james/mime4j/message/StorageBinaryBody;->storage:Lorg/apache/james/mime4j/storage/MultiReferenceStorage;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;->addReference()V

    .line 59
    new-instance v0, Lorg/apache/james/mime4j/message/StorageBinaryBody;

    iget-object v1, p0, Lorg/apache/james/mime4j/message/StorageBinaryBody;->storage:Lorg/apache/james/mime4j/storage/MultiReferenceStorage;

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/message/StorageBinaryBody;-><init>(Lorg/apache/james/mime4j/storage/MultiReferenceStorage;)V

    return-object v0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/apache/james/mime4j/message/StorageBinaryBody;->storage:Lorg/apache/james/mime4j/storage/MultiReferenceStorage;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lorg/apache/james/mime4j/message/StorageBinaryBody;->storage:Lorg/apache/james/mime4j/storage/MultiReferenceStorage;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;->delete()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/message/StorageBinaryBody;->storage:Lorg/apache/james/mime4j/storage/MultiReferenceStorage;

    .line 73
    :cond_0
    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lorg/apache/james/mime4j/message/StorageBinaryBody;->storage:Lorg/apache/james/mime4j/storage/MultiReferenceStorage;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    if-nez p1, :cond_0

    .line 49
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 51
    :cond_0
    iget-object v1, p0, Lorg/apache/james/mime4j/message/StorageBinaryBody;->storage:Lorg/apache/james/mime4j/storage/MultiReferenceStorage;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 52
    .local v0, "in":Ljava/io/InputStream;
    invoke-static {v0, p1}, Lorg/apache/james/mime4j/codec/CodecUtil;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 53
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 54
    return-void
.end method

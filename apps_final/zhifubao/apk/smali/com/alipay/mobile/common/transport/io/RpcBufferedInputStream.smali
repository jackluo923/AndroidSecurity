.class public Lcom/alipay/mobile/common/transport/io/RpcBufferedInputStream;
.super Ljava/io/BufferedInputStream;
.source "RpcBufferedInputStream.java"


# instance fields
.field protected mReaded:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 18
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/common/transport/io/RpcBufferedInputStream;->mReaded:I

    .line 19
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/alipay/mobile/common/transport/io/RpcBufferedInputStream;->count:I

    return v0
.end method

.method public getPos()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/alipay/mobile/common/transport/io/RpcBufferedInputStream;->pos:I

    return v0
.end method

.method public getReaded()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/alipay/mobile/common/transport/io/RpcBufferedInputStream;->mReaded:I

    return v0
.end method

.method public declared-synchronized read([BII)I
    .locals 2

    .prologue
    .line 24
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v0

    .line 25
    if-lez v0, :cond_0

    .line 26
    iget v1, p0, Lcom/alipay/mobile/common/transport/io/RpcBufferedInputStream;->mReaded:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/alipay/mobile/common/transport/io/RpcBufferedInputStream;->mReaded:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :cond_0
    monitor-exit p0

    return v0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

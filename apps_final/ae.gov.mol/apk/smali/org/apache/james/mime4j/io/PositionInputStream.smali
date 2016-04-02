.class public Lorg/apache/james/mime4j/io/PositionInputStream;
.super Ljava/io/FilterInputStream;
.source "PositionInputStream.java"


# instance fields
.field private markedPosition:J

.field protected position:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    const-wide/16 v0, 0x0

    .line 33
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 29
    iput-wide v0, p0, Lorg/apache/james/mime4j/io/PositionInputStream;->position:J

    .line 30
    iput-wide v0, p0, Lorg/apache/james/mime4j/io/PositionInputStream;->markedPosition:J

    .line 34
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lorg/apache/james/mime4j/io/PositionInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lorg/apache/james/mime4j/io/PositionInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 56
    return-void
.end method

.method public getPosition()J
    .locals 2

    .prologue
    .line 37
    iget-wide v0, p0, Lorg/apache/james/mime4j/io/PositionInputStream;->position:J

    return-wide v0
.end method

.method public mark(I)V
    .locals 2
    .param p1, "readlimit"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/james/mime4j/io/PositionInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 72
    iget-wide v0, p0, Lorg/apache/james/mime4j/io/PositionInputStream;->position:J

    iput-wide v0, p0, Lorg/apache/james/mime4j/io/PositionInputStream;->markedPosition:J

    .line 73
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/apache/james/mime4j/io/PositionInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    iget-object v1, p0, Lorg/apache/james/mime4j/io/PositionInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 48
    .local v0, "b":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 49
    iget-wide v1, p0, Lorg/apache/james/mime4j/io/PositionInputStream;->position:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/james/mime4j/io/PositionInputStream;->position:J

    .line 50
    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    iget-object v1, p0, Lorg/apache/james/mime4j/io/PositionInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 86
    .local v0, "c":I
    if-lez v0, :cond_0

    .line 87
    iget-wide v1, p0, Lorg/apache/james/mime4j/io/PositionInputStream;->position:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/james/mime4j/io/PositionInputStream;->position:J

    .line 88
    :cond_0
    return v0
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lorg/apache/james/mime4j/io/PositionInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 61
    iget-wide v0, p0, Lorg/apache/james/mime4j/io/PositionInputStream;->markedPosition:J

    iput-wide v0, p0, Lorg/apache/james/mime4j/io/PositionInputStream;->position:J

    .line 62
    return-void
.end method

.method public skip(J)J
    .locals 4
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v2, p0, Lorg/apache/james/mime4j/io/PositionInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 78
    .local v0, "c":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 79
    iget-wide v2, p0, Lorg/apache/james/mime4j/io/PositionInputStream;->position:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/apache/james/mime4j/io/PositionInputStream;->position:J

    .line 80
    :cond_0
    return-wide v0
.end method

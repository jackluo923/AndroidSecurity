.class Lcom/squareup/okhttp/internal/spdy/SpdyReader$1;
.super Ljava/io/InputStream;
.source "SpdyReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/spdy/SpdyReader;->newNameValueBlockStream()Ljava/io/DataInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/okhttp/internal/spdy/SpdyReader;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/internal/spdy/SpdyReader;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyReader$1;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyReader;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

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
    .line 219
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyReader$1;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyReader;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyReader;->in:Ljava/io/DataInputStream;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyReader;->access$100(Lcom/squareup/okhttp/internal/spdy/SpdyReader;)Ljava/io/DataInputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 220
    return-void
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    invoke-static {p0}, Lcom/squareup/okhttp/internal/Util;->readSingleByte(Ljava/io/InputStream;)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyReader$1;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyReader;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyReader;->compressedLimit:I
    invoke-static {v1}, Lcom/squareup/okhttp/internal/spdy/SpdyReader;->access$000(Lcom/squareup/okhttp/internal/spdy/SpdyReader;)I

    move-result v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 213
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyReader$1;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyReader;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyReader;->in:Ljava/io/DataInputStream;
    invoke-static {v1}, Lcom/squareup/okhttp/internal/spdy/SpdyReader;->access$100(Lcom/squareup/okhttp/internal/spdy/SpdyReader;)Ljava/io/DataInputStream;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/DataInputStream;->read([BII)I

    move-result v0

    .line 214
    .local v0, "consumed":I
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyReader$1;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyReader;

    # -= operator for: Lcom/squareup/okhttp/internal/spdy/SpdyReader;->compressedLimit:I
    invoke-static {v1, v0}, Lcom/squareup/okhttp/internal/spdy/SpdyReader;->access$020(Lcom/squareup/okhttp/internal/spdy/SpdyReader;I)I

    .line 215
    return v0
.end method

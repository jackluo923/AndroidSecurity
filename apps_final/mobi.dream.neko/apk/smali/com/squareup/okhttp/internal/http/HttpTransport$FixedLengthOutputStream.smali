.class final Lcom/squareup/okhttp/internal/http/HttpTransport$FixedLengthOutputStream;
.super Lcom/squareup/okhttp/internal/AbstractOutputStream;
.source "HttpTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/http/HttpTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FixedLengthOutputStream"
.end annotation


# instance fields
.field private bytesRemaining:I

.field private final socketOut:Ljava/io/OutputStream;


# direct methods
.method private constructor <init>(Ljava/io/OutputStream;I)V
    .locals 0
    .param p1, "socketOut"    # Ljava/io/OutputStream;
    .param p2, "bytesRemaining"    # I

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/AbstractOutputStream;-><init>()V

    .line 218
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$FixedLengthOutputStream;->socketOut:Ljava/io/OutputStream;

    .line 219
    iput p2, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$FixedLengthOutputStream;->bytesRemaining:I

    .line 220
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/OutputStream;ILcom/squareup/okhttp/internal/http/HttpTransport$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/OutputStream;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/squareup/okhttp/internal/http/HttpTransport$1;

    .prologue
    .line 213
    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/internal/http/HttpTransport$FixedLengthOutputStream;-><init>(Ljava/io/OutputStream;I)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$FixedLengthOutputStream;->closed:Z

    if-eqz v0, :cond_1

    .line 247
    :cond_0
    return-void

    .line 243
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$FixedLengthOutputStream;->closed:Z

    .line 244
    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$FixedLengthOutputStream;->bytesRemaining:I

    if-lez v0, :cond_0

    .line 245
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$FixedLengthOutputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 237
    :goto_0
    return-void

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$FixedLengthOutputStream;->socketOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    goto :goto_0
.end method

.method public write([BII)V
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpTransport$FixedLengthOutputStream;->checkNotClosed()V

    .line 224
    array-length v0, p1

    invoke-static {v0, p2, p3}, Lcom/squareup/okhttp/internal/Util;->checkOffsetAndCount(III)V

    .line 225
    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$FixedLengthOutputStream;->bytesRemaining:I

    if-le p3, v0, :cond_0

    .line 226
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$FixedLengthOutputStream;->bytesRemaining:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes but received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$FixedLengthOutputStream;->socketOut:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 229
    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$FixedLengthOutputStream;->bytesRemaining:I

    sub-int/2addr v0, p3

    iput v0, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$FixedLengthOutputStream;->bytesRemaining:I

    .line 230
    return-void
.end method

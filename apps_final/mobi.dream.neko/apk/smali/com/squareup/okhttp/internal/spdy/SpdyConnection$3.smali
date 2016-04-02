.class Lcom/squareup/okhttp/internal/spdy/SpdyConnection$3;
.super Lcom/squareup/okhttp/internal/NamedRunnable;
.source "SpdyConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->writePingLater(ILcom/squareup/okhttp/internal/spdy/Ping;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

.field final synthetic val$ping:Lcom/squareup/okhttp/internal/spdy/Ping;

.field final synthetic val$streamId:I


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;Ljava/lang/String;ILcom/squareup/okhttp/internal/spdy/Ping;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$3;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    iput p3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$3;->val$streamId:I

    iput-object p4, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$3;->val$ping:Lcom/squareup/okhttp/internal/spdy/Ping;

    invoke-direct {p0, p2}, Lcom/squareup/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .prologue
    .line 260
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$3;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$3;->val$streamId:I

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$3;->val$ping:Lcom/squareup/okhttp/internal/spdy/Ping;

    # invokes: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->writePing(ILcom/squareup/okhttp/internal/spdy/Ping;)V
    invoke-static {v0, v1, v2}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$500(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;ILcom/squareup/okhttp/internal/spdy/Ping;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :goto_0
    return-void

    .line 261
    :catch_0
    move-exception v0

    goto :goto_0
.end method

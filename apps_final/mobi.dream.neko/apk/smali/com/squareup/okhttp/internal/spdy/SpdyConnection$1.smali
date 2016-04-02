.class Lcom/squareup/okhttp/internal/spdy/SpdyConnection$1;
.super Lcom/squareup/okhttp/internal/NamedRunnable;
.source "SpdyConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->writeSynResetLater(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

.field final synthetic val$statusCode:I

.field final synthetic val$streamId:I


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;Ljava/lang/String;II)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$1;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    iput p3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$1;->val$streamId:I

    iput p4, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$1;->val$statusCode:I

    invoke-direct {p0, p2}, Lcom/squareup/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .prologue
    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$1;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$1;->val$streamId:I

    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$1;->val$statusCode:I

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->writeSynReset(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :goto_0
    return-void

    .line 210
    :catch_0
    move-exception v0

    goto :goto_0
.end method

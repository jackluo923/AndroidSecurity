.class Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$1;
.super Lcom/squareup/okhttp/internal/FaultRecoveringOutputStream;
.source "HttpURLConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->getOutputStream()Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;ILjava/io/OutputStream;)V
    .locals 0
    .param p2, "x0"    # I
    .param p3, "x1"    # Ljava/io/OutputStream;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$1;->this$0:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;

    invoke-direct {p0, p2, p3}, Lcom/squareup/okhttp/internal/FaultRecoveringOutputStream;-><init>(ILjava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method protected replacementStream(Ljava/io/IOException;)Ljava/io/OutputStream;
    .locals 2
    .param p1, "e"    # Ljava/io/IOException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 247
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$1;->this$0:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getRequestBody()Ljava/io/OutputStream;

    move-result-object v0

    instance-of v0, v0, Lcom/squareup/okhttp/internal/AbstractOutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$1;->this$0:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getRequestBody()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/AbstractOutputStream;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/AbstractOutputStream;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 254
    :goto_0
    return-object v0

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$1;->this$0:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;

    # invokes: Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->handleFailure(Ljava/io/IOException;)Z
    invoke-static {v0, p1}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->access$000(Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;Ljava/io/IOException;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$1;->this$0:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getRequestBody()Ljava/io/OutputStream;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 254
    goto :goto_0
.end method

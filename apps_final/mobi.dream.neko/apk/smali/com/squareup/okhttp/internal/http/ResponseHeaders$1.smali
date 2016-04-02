.class Lcom/squareup/okhttp/internal/http/ResponseHeaders$1;
.super Ljava/lang/Object;
.source "ResponseHeaders.java"

# interfaces
.implements Lcom/squareup/okhttp/internal/http/HeaderParser$CacheControlHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/http/ResponseHeaders;-><init>(Ljava/net/URI;Lcom/squareup/okhttp/internal/http/RawHeaders;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/okhttp/internal/http/ResponseHeaders;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/internal/http/ResponseHeaders;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders$1;->this$0:Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "directive"    # Ljava/lang/String;
    .param p2, "parameter"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 122
    const-string v0, "no-cache"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders$1;->this$0:Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    # setter for: Lcom/squareup/okhttp/internal/http/ResponseHeaders;->noCache:Z
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->access$002(Lcom/squareup/okhttp/internal/http/ResponseHeaders;Z)Z

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    const-string v0, "no-store"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders$1;->this$0:Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    # setter for: Lcom/squareup/okhttp/internal/http/ResponseHeaders;->noStore:Z
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->access$102(Lcom/squareup/okhttp/internal/http/ResponseHeaders;Z)Z

    goto :goto_0

    .line 126
    :cond_2
    const-string v0, "max-age"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 127
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders$1;->this$0:Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    invoke-static {p2}, Lcom/squareup/okhttp/internal/http/HeaderParser;->parseSeconds(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/squareup/okhttp/internal/http/ResponseHeaders;->maxAgeSeconds:I
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->access$202(Lcom/squareup/okhttp/internal/http/ResponseHeaders;I)I

    goto :goto_0

    .line 128
    :cond_3
    const-string v0, "s-maxage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 129
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders$1;->this$0:Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    invoke-static {p2}, Lcom/squareup/okhttp/internal/http/HeaderParser;->parseSeconds(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/squareup/okhttp/internal/http/ResponseHeaders;->sMaxAgeSeconds:I
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->access$302(Lcom/squareup/okhttp/internal/http/ResponseHeaders;I)I

    goto :goto_0

    .line 130
    :cond_4
    const-string v0, "public"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 131
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders$1;->this$0:Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    # setter for: Lcom/squareup/okhttp/internal/http/ResponseHeaders;->isPublic:Z
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->access$402(Lcom/squareup/okhttp/internal/http/ResponseHeaders;Z)Z

    goto :goto_0

    .line 132
    :cond_5
    const-string v0, "must-revalidate"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders$1;->this$0:Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    # setter for: Lcom/squareup/okhttp/internal/http/ResponseHeaders;->mustRevalidate:Z
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->access$502(Lcom/squareup/okhttp/internal/http/ResponseHeaders;Z)Z

    goto :goto_0
.end method

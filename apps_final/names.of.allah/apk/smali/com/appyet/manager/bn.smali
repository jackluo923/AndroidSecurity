.class final Lcom/appyet/manager/bn;
.super Lcom/appyet/manager/ae;


# instance fields
.field final synthetic a:Lcom/appyet/manager/bl;


# direct methods
.method constructor <init>(Lcom/appyet/manager/bl;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/manager/bn;->a:Lcom/appyet/manager/bl;

    invoke-direct {p0}, Lcom/appyet/manager/ae;-><init>()V

    return-void
.end method


# virtual methods
.method public final isRedirectRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/appyet/manager/ae;->isRedirectRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0x12d

    if-eq v1, v2, :cond_0

    const/16 v2, 0x12e

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

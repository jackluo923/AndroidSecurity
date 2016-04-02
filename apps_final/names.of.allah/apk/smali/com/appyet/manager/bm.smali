.class final Lcom/appyet/manager/bm;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/client/HttpRequestRetryHandler;


# instance fields
.field final synthetic a:Lcom/appyet/manager/bl;


# direct methods
.method constructor <init>(Lcom/appyet/manager/bl;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/manager/bm;->a:Lcom/appyet/manager/bl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
    .locals 1

    if-lez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

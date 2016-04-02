.class public Lcom/inmobi/androidsdk/impl/net/Response;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/net/Response;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/net/Response;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/net/Response;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/inmobi/androidsdk/impl/net/Response;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAdResponse()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/Response;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getImpressionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/Response;->a:Ljava/lang/String;

    return-object v0
.end method

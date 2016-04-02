.class public Lcom/adsdk/sdk/mraid/HttpClientFactory;
.super Ljava/lang/Object;


# static fields
.field public static final SOCKET_SIZE:I = 0x2000

.field private static instance:Lcom/adsdk/sdk/mraid/HttpClientFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/adsdk/sdk/mraid/HttpClientFactory;

    invoke-direct {v0}, Lcom/adsdk/sdk/mraid/HttpClientFactory;-><init>()V

    sput-object v0, Lcom/adsdk/sdk/mraid/HttpClientFactory;->instance:Lcom/adsdk/sdk/mraid/HttpClientFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 2

    sget-object v0, Lcom/adsdk/sdk/mraid/HttpClientFactory;->instance:Lcom/adsdk/sdk/mraid/HttpClientFactory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/mraid/HttpClientFactory;->internalCreate(I)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static create(I)Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 1

    sget-object v0, Lcom/adsdk/sdk/mraid/HttpClientFactory;->instance:Lcom/adsdk/sdk/mraid/HttpClientFactory;

    invoke-virtual {v0, p0}, Lcom/adsdk/sdk/mraid/HttpClientFactory;->internalCreate(I)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static setInstance(Lcom/adsdk/sdk/mraid/HttpClientFactory;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sput-object p0, Lcom/adsdk/sdk/mraid/HttpClientFactory;->instance:Lcom/adsdk/sdk/mraid/HttpClientFactory;

    return-void
.end method


# virtual methods
.method protected internalCreate(I)Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 2

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    if-lez p1, :cond_0

    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    :cond_0
    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    return-object v1
.end method

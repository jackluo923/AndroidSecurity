.class public Lcom/alipay/mobile/command/model/DownloadInHttpRequest;
.super Lcom/alipay/mobile/command/model/HttpUrlRequest;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/command/model/HttpUrlRequest;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/alipay/mobile/command/model/DownloadInHttpRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/Header;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/command/model/HttpUrlRequest;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object p4, p0, Lcom/alipay/mobile/command/model/DownloadInHttpRequest;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/command/model/DownloadInHttpRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public rpcTypeEnum()Lcom/alipay/mobile/command/model/RpcTypeEnum;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/command/model/RpcTypeEnum;->HTTP_DOWNLAOD:Lcom/alipay/mobile/command/model/RpcTypeEnum;

    return-object v0
.end method

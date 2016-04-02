.class public Lcom/alipay/publiccore/client/result/ApplyThirdAccountRes;
.super Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;
.source "ApplyThirdAccountRes.java"


# instance fields
.field public uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alipay/publiccore/client/result/ApplyThirdAccountRes;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/alipay/publiccore/client/result/ApplyThirdAccountRes;->uri:Ljava/lang/String;

    .line 18
    return-void
.end method

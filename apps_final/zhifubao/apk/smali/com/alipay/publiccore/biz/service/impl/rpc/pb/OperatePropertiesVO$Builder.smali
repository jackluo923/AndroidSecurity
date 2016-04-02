.class public final Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "OperatePropertiesVO.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;",
        ">;"
    }
.end annotation


# instance fields
.field public defaultOrder:Ljava/lang/String;

.field public deleteType:Ljava/lang/String;

.field public topType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 66
    return-void
.end method

.method public constructor <init>(Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;)V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 70
    if-nez p1, :cond_0

    .line 74
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;->topType:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO$Builder;->topType:Ljava/lang/String;

    .line 72
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;->deleteType:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO$Builder;->deleteType:Ljava/lang/String;

    .line 73
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;->defaultOrder:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO$Builder;->defaultOrder:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final build()Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;-><init>(Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO$Builder;Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;)V

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO$Builder;->build()Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;

    move-result-object v0

    return-object v0
.end method

.method public final defaultOrder(Ljava/lang/String;)Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO$Builder;
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO$Builder;->defaultOrder:Ljava/lang/String;

    .line 88
    return-object p0
.end method

.method public final deleteType(Ljava/lang/String;)Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO$Builder;
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO$Builder;->deleteType:Ljava/lang/String;

    .line 83
    return-object p0
.end method

.method public final topType(Ljava/lang/String;)Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO$Builder;
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO$Builder;->topType:Ljava/lang/String;

    .line 78
    return-object p0
.end method

.class public Lcom/alipay/mobiletms/common/service/facade/rpc/DemoReq;
.super Lcom/alipay/mobiletms/common/service/facade/model/ToString;
.source "DemoReq.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public bizReq:Ljava/lang/String;

.field public tplContext:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/alipay/mobiletms/common/service/facade/model/ToString;-><init>()V

    .line 38
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobiletms/common/service/facade/rpc/DemoReq;->bizReq:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobiletms/common/service/facade/rpc/DemoReq;->tplContext:Ljava/util/Map;

    .line 29
    return-void
.end method

.class public Lcom/alipay/mobilecsa/common/service/rpc/response/CityQueryResponse;
.super Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;
.source "CityQueryResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public cityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;-><init>()V

    return-void
.end method

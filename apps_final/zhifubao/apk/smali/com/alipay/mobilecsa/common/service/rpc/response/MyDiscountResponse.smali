.class public Lcom/alipay/mobilecsa/common/service/rpc/response/MyDiscountResponse;
.super Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;
.source "MyDiscountResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public currentPage:I

.field public discounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilecsa/common/service/rpc/model/DiscountInfo;",
            ">;"
        }
    .end annotation
.end field

.field public helpUrl:Ljava/lang/String;

.field public noticeUrl:Ljava/lang/String;

.field public pageSize:I

.field public tipsInfo:Lcom/alipay/mobilecsa/common/service/rpc/model/TipsInfo;

.field public totalPages:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;-><init>()V

    return-void
.end method

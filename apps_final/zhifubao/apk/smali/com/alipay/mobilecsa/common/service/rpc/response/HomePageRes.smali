.class public Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;
.super Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;
.source "HomePageRes.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public cityInfo:Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;

.field public cityOpen:Z

.field public menus:Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;

.field public mrp:Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;

.field public promoInfo:Lcom/alipay/mobilecsa/common/service/rpc/model/PromoInfo;

.field public showSwitch:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;-><init>()V

    return-void
.end method

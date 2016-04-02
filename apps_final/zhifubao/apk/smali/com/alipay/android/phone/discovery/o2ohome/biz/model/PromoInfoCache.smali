.class public Lcom/alipay/android/phone/discovery/o2ohome/biz/model/PromoInfoCache;
.super Ljava/lang/Object;
.source "PromoInfoCache.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private promoInfo:Lcom/alipay/mobilecsa/common/service/rpc/model/PromoInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPromoInfo()Lcom/alipay/mobilecsa/common/service/rpc/model/PromoInfo;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/PromoInfoCache;->promoInfo:Lcom/alipay/mobilecsa/common/service/rpc/model/PromoInfo;

    return-object v0
.end method

.method public setPromoInfo(Lcom/alipay/mobilecsa/common/service/rpc/model/PromoInfo;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/PromoInfoCache;->promoInfo:Lcom/alipay/mobilecsa/common/service/rpc/model/PromoInfo;

    .line 16
    return-void
.end method

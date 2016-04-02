.class public Lcom/alipay/android/phone/discovery/o2ohome/model/RecommendCache;
.super Ljava/lang/Object;
.source "RecommendCache.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private mrp:Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMrp()Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/model/RecommendCache;->mrp:Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;

    return-object v0
.end method

.method public setMrp(Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/model/RecommendCache;->mrp:Lcom/alipay/mobilecsa/common/service/rpc/model/Mrp;

    .line 23
    return-void
.end method

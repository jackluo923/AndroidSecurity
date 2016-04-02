.class public Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;
.super Ljava/lang/Object;
.source "CategoryCache.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private cityInfo:Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;

.field private menus:Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCityInfo()Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;->cityInfo:Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;

    return-object v0
.end method

.method public getMenus()Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;->menus:Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;

    return-object v0
.end method

.method public setCityInfo(Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;->cityInfo:Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;

    .line 30
    return-void
.end method

.method public setMenus(Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;->menus:Lcom/alipay/mobilecsa/common/service/rpc/model/HomePageMenu;

    .line 38
    return-void
.end method

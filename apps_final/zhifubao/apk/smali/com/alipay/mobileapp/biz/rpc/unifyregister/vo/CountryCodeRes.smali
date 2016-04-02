.class public Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/CountryCodeRes;
.super Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;
.source "CountryCodeRes.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public countryCodeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/CountryCodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field public index:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;-><init>()V

    return-void
.end method

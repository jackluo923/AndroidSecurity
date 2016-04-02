.class public Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegMixRes;
.super Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;
.source "RegMixRes.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public checkCode:Ljava/lang/String;

.field public countryCodeResList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/CountryCodeRes;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alipay/aliusergw/biz/shared/processer/GwCommonRes;-><init>()V

    return-void
.end method

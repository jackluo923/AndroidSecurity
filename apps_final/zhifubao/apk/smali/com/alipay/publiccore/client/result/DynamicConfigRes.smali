.class public Lcom/alipay/publiccore/client/result/DynamicConfigRes;
.super Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;
.source "DynamicConfigRes.java"


# instance fields
.field public dynamicConfig:Lcom/alipay/publiccore/client/model/DynamicConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getDynamicConfig()Lcom/alipay/publiccore/client/model/DynamicConfig;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alipay/publiccore/client/result/DynamicConfigRes;->dynamicConfig:Lcom/alipay/publiccore/client/model/DynamicConfig;

    return-object v0
.end method

.method public setDynamicConfig(Lcom/alipay/publiccore/client/model/DynamicConfig;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/alipay/publiccore/client/result/DynamicConfigRes;->dynamicConfig:Lcom/alipay/publiccore/client/model/DynamicConfig;

    .line 19
    return-void
.end method

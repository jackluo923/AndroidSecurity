.class public Lcom/alipay/mobileprod/core/model/puc/vo/APPRouteResp;
.super Lcom/alipay/mobileprod/core/model/BaseRespVO;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x6cff34f976e436c2L


# instance fields
.field public configValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/BaseRespVO;-><init>()V

    return-void
.end method


# virtual methods
.method public getConfigValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/core/model/puc/vo/APPRouteResp;->configValue:Ljava/lang/String;

    return-object v0
.end method

.method public setConfigValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/core/model/puc/vo/APPRouteResp;->configValue:Ljava/lang/String;

    return-void
.end method

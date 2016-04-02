.class public Lcom/alipay/mobiletms/common/service/facade/rpc/LoadTemplateListRes;
.super Lcom/alipay/mobiletms/common/service/facade/model/MobiletmsResult;
.source "LoadTemplateListRes.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public templateJsonList:Ljava/util/List;

.field public updateSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alipay/mobiletms/common/service/facade/model/MobiletmsResult;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobiletms/common/service/facade/rpc/LoadTemplateListRes;->updateSize:I

    .line 32
    return-void
.end method

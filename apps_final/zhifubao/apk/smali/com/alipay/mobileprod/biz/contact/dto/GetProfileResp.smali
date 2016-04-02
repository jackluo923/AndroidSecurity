.class public Lcom/alipay/mobileprod/biz/contact/dto/GetProfileResp;
.super Lcom/alipay/mobileprod/core/model/BaseRespVO;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public chatPermission:I

.field public contactUserInfo:Lcom/alipay/mobileprod/biz/contact/model/ContactUserInfo;

.field public directPass:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/BaseRespVO;-><init>()V

    return-void
.end method

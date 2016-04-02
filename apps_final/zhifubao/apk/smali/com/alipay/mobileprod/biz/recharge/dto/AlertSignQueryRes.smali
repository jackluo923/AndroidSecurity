.class public Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignQueryRes;
.super Lcom/alipay/mobileprod/core/model/rec/alert/BaseRespVO;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public addSwitch:Z

.field public alertSignList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileprod/biz/recharge/vo/AlertSignVO;",
            ">;"
        }
    .end annotation
.end field

.field public bindingMobileAlertSign:Lcom/alipay/mobileprod/biz/recharge/vo/AlertSignVO;

.field public maxListSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/rec/alert/BaseRespVO;-><init>()V

    return-void
.end method

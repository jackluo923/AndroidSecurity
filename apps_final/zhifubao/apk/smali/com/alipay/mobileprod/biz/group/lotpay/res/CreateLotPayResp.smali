.class public Lcom/alipay/mobileprod/biz/group/lotpay/res/CreateLotPayResp;
.super Lcom/alipay/mobileprod/biz/group/lotpay/res/BaseResp;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public bizContext:Ljava/lang/String;

.field public groupId:Ljava/lang/String;

.field public lotpayNum:I

.field public sessionId:Ljava/lang/String;

.field public userIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileprod/biz/group/lotpay/res/BaseResp;-><init>()V

    return-void
.end method

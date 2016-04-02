.class public Lcom/alipay/mobileinno/common/service/facade/sns/model/SNSQueryResult;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public acceptUser:Lcom/alipay/mobileinno/common/service/facade/sns/model/AcceptUserInfo;

.field public resultCode:Ljava/lang/String;

.field public shareBizInfo:Lcom/alipay/mobileinno/common/service/facade/sns/model/ShareBizInfo;

.field public shareUser:Lcom/alipay/mobileinno/common/service/facade/sns/model/ShareUserInfo;

.field public success:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobileinno/common/service/facade/sns/model/SNSQueryResult;->success:Z

    const-string/jumbo v0, "success"

    iput-object v0, p0, Lcom/alipay/mobileinno/common/service/facade/sns/model/SNSQueryResult;->resultCode:Ljava/lang/String;

    new-instance v0, Lcom/alipay/mobileinno/common/service/facade/sns/model/ShareUserInfo;

    invoke-direct {v0}, Lcom/alipay/mobileinno/common/service/facade/sns/model/ShareUserInfo;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobileinno/common/service/facade/sns/model/SNSQueryResult;->shareUser:Lcom/alipay/mobileinno/common/service/facade/sns/model/ShareUserInfo;

    new-instance v0, Lcom/alipay/mobileinno/common/service/facade/sns/model/AcceptUserInfo;

    invoke-direct {v0}, Lcom/alipay/mobileinno/common/service/facade/sns/model/AcceptUserInfo;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobileinno/common/service/facade/sns/model/SNSQueryResult;->acceptUser:Lcom/alipay/mobileinno/common/service/facade/sns/model/AcceptUserInfo;

    new-instance v0, Lcom/alipay/mobileinno/common/service/facade/sns/model/ShareBizInfo;

    invoke-direct {v0}, Lcom/alipay/mobileinno/common/service/facade/sns/model/ShareBizInfo;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobileinno/common/service/facade/sns/model/SNSQueryResult;->shareBizInfo:Lcom/alipay/mobileinno/common/service/facade/sns/model/ShareBizInfo;

    return-void
.end method

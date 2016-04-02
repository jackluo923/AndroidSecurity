.class public Lcom/alipay/mobile/pubsvc/db/data/PubSvcThirdAccountBean;
.super Ljava/lang/Object;
.source "PubSvcThirdAccountBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public canAgented:Z

.field public displayName:Ljava/lang/String;

.field public mAgreementId:Ljava/lang/String;

.field public mDisplayName:Ljava/lang/String;

.field public mInstId:Ljava/lang/String;

.field public mMenuContent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/core/model/account/ButtonObject;",
            ">;"
        }
    .end annotation
.end field

.field public mPublicId:Ljava/lang/String;

.field public mRealName:Ljava/lang/String;

.field public mRemarkName:Ljava/lang/String;

.field public mSection:I

.field public mThirdAccountId:Ljava/lang/String;

.field public mUserId:Ljava/lang/String;

.field public memoName:Ljava/lang/String;

.field public realName:Ljava/lang/String;

.field public showName:Ljava/lang/String;

.field public showNameDescribe:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/pubsvc/db/data/PubSvcThirdAccountBean;->mSection:I

    .line 54
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/db/data/PubSvcThirdAccountBean;->mRemarkName:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public getmAgreementId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/db/data/PubSvcThirdAccountBean;->mAgreementId:Ljava/lang/String;

    return-object v0
.end method

.method public getmDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/db/data/PubSvcThirdAccountBean;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getmPublicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/db/data/PubSvcThirdAccountBean;->mPublicId:Ljava/lang/String;

    return-object v0
.end method

.method public getmRealName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/db/data/PubSvcThirdAccountBean;->mRealName:Ljava/lang/String;

    return-object v0
.end method

.method public getmThirdAccountId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/db/data/PubSvcThirdAccountBean;->mThirdAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public getmUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/db/data/PubSvcThirdAccountBean;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method public setmAgreementId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/alipay/mobile/pubsvc/db/data/PubSvcThirdAccountBean;->mAgreementId:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setmDisplayName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/alipay/mobile/pubsvc/db/data/PubSvcThirdAccountBean;->mDisplayName:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setmPublicId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/alipay/mobile/pubsvc/db/data/PubSvcThirdAccountBean;->mPublicId:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setmRealName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/alipay/mobile/pubsvc/db/data/PubSvcThirdAccountBean;->mRealName:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setmThirdAccountId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/alipay/mobile/pubsvc/db/data/PubSvcThirdAccountBean;->mThirdAccountId:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setmUserId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/alipay/mobile/pubsvc/db/data/PubSvcThirdAccountBean;->mUserId:Ljava/lang/String;

    .line 64
    return-void
.end method

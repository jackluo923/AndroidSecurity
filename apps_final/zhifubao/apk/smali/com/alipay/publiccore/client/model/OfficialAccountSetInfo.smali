.class public Lcom/alipay/publiccore/client/model/OfficialAccountSetInfo;
.super Lcom/alipay/publiccore/client/model/OfficialAccountInfo;
.source "OfficialAccountSetInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x249e2d36b38fd97aL


# instance fields
.field public acceptMsg:Z

.field public addThirdAccountUri:Ljava/lang/String;

.field public authorizeUrl:Ljava/lang/String;

.field public disThirdAccountText:Ljava/lang/String;

.field public hideGisSwitch:Ljava/lang/String;

.field public isBind:Ljava/lang/String;

.field public isDeletable:Ljava/lang/String;

.field public isLimitAddThird:Ljava/lang/String;

.field public isShowFeedback:Ljava/lang/String;

.field public isShowMsgLable:Ljava/lang/String;

.field public isShowNofityAmount:Ljava/lang/String;

.field public isShowQrCode:Ljava/lang/String;

.field public notifyAmountUrl:Ljava/lang/String;

.field public pushSwitch:Ljava/lang/String;

.field public showNotifyText:Ljava/lang/String;

.field public uploadGisSwitch:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/alipay/publiccore/client/model/OfficialAccountInfo;-><init>()V

    .line 54
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alipay/publiccore/client/model/OfficialAccountSetInfo;->isLimitAddThird:Ljava/lang/String;

    .line 63
    const-string/jumbo v0, "1"

    iput-object v0, p0, Lcom/alipay/publiccore/client/model/OfficialAccountSetInfo;->isShowMsgLable:Ljava/lang/String;

    .line 66
    const-string/jumbo v0, "1"

    iput-object v0, p0, Lcom/alipay/publiccore/client/model/OfficialAccountSetInfo;->isShowQrCode:Ljava/lang/String;

    .line 69
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/publiccore/client/model/OfficialAccountSetInfo;->showNotifyText:Ljava/lang/String;

    .line 72
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alipay/publiccore/client/model/OfficialAccountSetInfo;->isShowNofityAmount:Ljava/lang/String;

    .line 75
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/publiccore/client/model/OfficialAccountSetInfo;->notifyAmountUrl:Ljava/lang/String;

    .line 78
    const-string/jumbo v0, "1"

    iput-object v0, p0, Lcom/alipay/publiccore/client/model/OfficialAccountSetInfo;->isShowFeedback:Ljava/lang/String;

    .line 10
    return-void
.end method

.class public Lcom/alipay/publiccore/client/message/BaseMsgEntry;
.super Lcom/alipay/publiccore/common/service/facade/model/ToString;
.source "BaseMsgEntry.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x55f1bca1b51694c7L


# instance fields
.field public agreementId:Ljava/lang/String;

.field public clieckedDelete:Z

.field public couldDelete:Z

.field public msgId:Ljava/lang/String;

.field public msgType:Ljava/lang/String;

.field public readed:Z

.field public showParam:Lcom/alipay/publiccore/client/message/ShowParam;

.field public showType:Ljava/lang/String;

.field public thirdAccountId:Ljava/lang/String;

.field public time:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/ToString;-><init>()V

    .line 63
    iput-object v0, p0, Lcom/alipay/publiccore/client/message/BaseMsgEntry;->showType:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/alipay/publiccore/client/message/BaseMsgEntry;->showParam:Lcom/alipay/publiccore/client/message/ShowParam;

    .line 10
    return-void
.end method

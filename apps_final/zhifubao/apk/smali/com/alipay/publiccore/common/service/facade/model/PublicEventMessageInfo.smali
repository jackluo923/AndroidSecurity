.class public Lcom/alipay/publiccore/common/service/facade/model/PublicEventMessageInfo;
.super Lcom/alipay/publiccore/common/service/facade/model/ToString;
.source "PublicEventMessageInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public consuBillMsgEntry:Lcom/alipay/publiccore/common/service/facade/model/PublicEventConsuBillMsgEntry;

.field public consuMsgEntry:Lcom/alipay/publiccore/common/service/facade/model/PublicEventConsuRecordMsgEntry;

.field public consuStatistMsgEntry:Lcom/alipay/publiccore/common/service/facade/model/PublicEventConsuStatistMsgEntry;

.field public imageMsgEntry:Lcom/alipay/publiccore/common/service/facade/model/PublicEventImageMsgEntry;

.field public msgType:Ljava/lang/String;

.field public time:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/ToString;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/alipay/publiccore/common/service/facade/model/PublicEventMessageInfo;->time:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/alipay/publiccore/common/service/facade/model/PublicEventMessageInfo;->msgType:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/alipay/publiccore/common/service/facade/model/PublicEventMessageInfo;->imageMsgEntry:Lcom/alipay/publiccore/common/service/facade/model/PublicEventImageMsgEntry;

    .line 34
    iput-object v0, p0, Lcom/alipay/publiccore/common/service/facade/model/PublicEventMessageInfo;->consuMsgEntry:Lcom/alipay/publiccore/common/service/facade/model/PublicEventConsuRecordMsgEntry;

    .line 39
    iput-object v0, p0, Lcom/alipay/publiccore/common/service/facade/model/PublicEventMessageInfo;->consuBillMsgEntry:Lcom/alipay/publiccore/common/service/facade/model/PublicEventConsuBillMsgEntry;

    .line 44
    iput-object v0, p0, Lcom/alipay/publiccore/common/service/facade/model/PublicEventMessageInfo;->consuStatistMsgEntry:Lcom/alipay/publiccore/common/service/facade/model/PublicEventConsuStatistMsgEntry;

    .line 10
    return-void
.end method

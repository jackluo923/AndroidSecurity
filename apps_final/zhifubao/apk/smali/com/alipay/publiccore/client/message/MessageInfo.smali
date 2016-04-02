.class public Lcom/alipay/publiccore/client/message/MessageInfo;
.super Lcom/alipay/publiccore/common/service/facade/model/ToString;
.source "MessageInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public consuBillMsgEntry:Lcom/alipay/publiccore/client/message/ConsuBillMsgEntry;

.field public consuMsgEntry:Lcom/alipay/publiccore/client/message/ConsuRecordMsgEntry;

.field public consuStatistMsgEntry:Lcom/alipay/publiccore/client/message/ConsuStatistMsgEntry;

.field public imageMsgEntry:Lcom/alipay/publiccore/client/message/ImageMsgEntry;

.field public msgType:Ljava/lang/String;

.field public time:Ljava/lang/String;

.field public todoMsgEntry:Lcom/alipay/publiccore/client/message/TodoMsgEntry;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/ToString;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/alipay/publiccore/client/message/MessageInfo;->time:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/alipay/publiccore/client/message/MessageInfo;->msgType:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/alipay/publiccore/client/message/MessageInfo;->imageMsgEntry:Lcom/alipay/publiccore/client/message/ImageMsgEntry;

    .line 34
    iput-object v0, p0, Lcom/alipay/publiccore/client/message/MessageInfo;->todoMsgEntry:Lcom/alipay/publiccore/client/message/TodoMsgEntry;

    .line 39
    iput-object v0, p0, Lcom/alipay/publiccore/client/message/MessageInfo;->consuMsgEntry:Lcom/alipay/publiccore/client/message/ConsuRecordMsgEntry;

    .line 44
    iput-object v0, p0, Lcom/alipay/publiccore/client/message/MessageInfo;->consuBillMsgEntry:Lcom/alipay/publiccore/client/message/ConsuBillMsgEntry;

    .line 48
    iput-object v0, p0, Lcom/alipay/publiccore/client/message/MessageInfo;->consuStatistMsgEntry:Lcom/alipay/publiccore/client/message/ConsuStatistMsgEntry;

    .line 10
    return-void
.end method

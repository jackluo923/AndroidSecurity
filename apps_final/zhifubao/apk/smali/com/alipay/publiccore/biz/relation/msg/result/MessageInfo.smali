.class public Lcom/alipay/publiccore/biz/relation/msg/result/MessageInfo;
.super Lcom/alipay/publiccore/common/service/facade/model/ToString;
.source "MessageInfo.java"


# instance fields
.field public consuBillMsgEntry:Lcom/alipay/publiccore/biz/relation/msg/result/ConsuBillMsgEntry;

.field public consuMsgEntry:Lcom/alipay/publiccore/biz/relation/msg/result/ConsuRecordMsgEntry;

.field public consuStatistMsgEntry:Lcom/alipay/publiccore/biz/relation/msg/result/ConsuStatistMsgEntry;

.field public imageMsgEntry:Lcom/alipay/publiccore/biz/relation/msg/result/ImageMsgEntry;

.field public msgType:Ljava/lang/String;

.field public time:Ljava/lang/String;

.field public todoMsgEntry:Lcom/alipay/publiccore/biz/relation/msg/result/TodoMsgEntry;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/ToString;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/MessageInfo;->time:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/MessageInfo;->msgType:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/MessageInfo;->imageMsgEntry:Lcom/alipay/publiccore/biz/relation/msg/result/ImageMsgEntry;

    .line 25
    iput-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/MessageInfo;->todoMsgEntry:Lcom/alipay/publiccore/biz/relation/msg/result/TodoMsgEntry;

    .line 27
    iput-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/MessageInfo;->consuMsgEntry:Lcom/alipay/publiccore/biz/relation/msg/result/ConsuRecordMsgEntry;

    .line 30
    iput-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/MessageInfo;->consuBillMsgEntry:Lcom/alipay/publiccore/biz/relation/msg/result/ConsuBillMsgEntry;

    .line 37
    iput-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/MessageInfo;->consuStatistMsgEntry:Lcom/alipay/publiccore/biz/relation/msg/result/ConsuStatistMsgEntry;

    .line 8
    return-void
.end method

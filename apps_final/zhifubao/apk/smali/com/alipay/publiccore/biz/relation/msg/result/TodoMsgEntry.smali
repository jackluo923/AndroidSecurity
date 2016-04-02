.class public Lcom/alipay/publiccore/biz/relation/msg/result/TodoMsgEntry;
.super Lcom/alipay/publiccore/biz/relation/msg/result/BaseMsgEntry;
.source "TodoMsgEntry.java"


# instance fields
.field public actionParam:Ljava/lang/String;

.field public actionType:Ljava/lang/String;

.field public businessArgs:Ljava/lang/String;

.field public businessId:Ljava/lang/String;

.field public businessType:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public gmtCreateTime:Ljava/lang/String;

.field public gmtModifiedTime:Ljava/lang/String;

.field public iconCount:Z

.field public image:Ljava/lang/String;

.field public priority:Ljava/lang/String;

.field public publicId:Ljava/lang/String;

.field public remindScene:Ljava/lang/String;

.field public remindSceneCode:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Lcom/alipay/publiccore/biz/relation/msg/result/BaseMsgEntry;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/TodoMsgEntry;->publicId:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/TodoMsgEntry;->title:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/TodoMsgEntry;->desc:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/TodoMsgEntry;->image:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/TodoMsgEntry;->actionType:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/TodoMsgEntry;->actionParam:Ljava/lang/String;

    .line 9
    return-void
.end method

.class public Lcom/alipay/publiccore/client/message/TodoMsgEntry;
.super Lcom/alipay/publiccore/client/message/BaseMsgEntry;
.source "TodoMsgEntry.java"

# interfaces
.implements Ljava/io/Serializable;


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

    .line 10
    invoke-direct {p0}, Lcom/alipay/publiccore/client/message/BaseMsgEntry;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/alipay/publiccore/client/message/TodoMsgEntry;->publicId:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/alipay/publiccore/client/message/TodoMsgEntry;->title:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/alipay/publiccore/client/message/TodoMsgEntry;->desc:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/alipay/publiccore/client/message/TodoMsgEntry;->image:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/alipay/publiccore/client/message/TodoMsgEntry;->actionType:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/alipay/publiccore/client/message/TodoMsgEntry;->actionParam:Ljava/lang/String;

    .line 10
    return-void
.end method

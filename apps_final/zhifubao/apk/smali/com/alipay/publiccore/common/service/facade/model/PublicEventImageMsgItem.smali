.class public Lcom/alipay/publiccore/common/service/facade/model/PublicEventImageMsgItem;
.super Ljava/lang/Object;
.source "PublicEventImageMsgItem.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public actionName:Ljava/lang/String;

.field public actionParam:Ljava/lang/String;

.field public actionType:Ljava/lang/String;

.field public authType:Ljava/lang/String;

.field public image:Ljava/lang/String;

.field public text:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/alipay/publiccore/common/service/facade/model/PublicEventImageMsgItem;->title:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/alipay/publiccore/common/service/facade/model/PublicEventImageMsgItem;->text:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/alipay/publiccore/common/service/facade/model/PublicEventImageMsgItem;->image:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/alipay/publiccore/common/service/facade/model/PublicEventImageMsgItem;->actionType:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/alipay/publiccore/common/service/facade/model/PublicEventImageMsgItem;->actionParam:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/alipay/publiccore/common/service/facade/model/PublicEventImageMsgItem;->authType:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/alipay/publiccore/common/service/facade/model/PublicEventImageMsgItem;->actionName:Ljava/lang/String;

    .line 13
    return-void
.end method

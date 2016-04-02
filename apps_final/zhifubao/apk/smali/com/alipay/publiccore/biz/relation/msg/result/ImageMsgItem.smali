.class public Lcom/alipay/publiccore/biz/relation/msg/result/ImageMsgItem;
.super Lcom/alipay/publiccore/common/service/facade/model/ToString;
.source "ImageMsgItem.java"


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

    .line 8
    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/ToString;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ImageMsgItem;->title:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ImageMsgItem;->text:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ImageMsgItem;->image:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ImageMsgItem;->actionType:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ImageMsgItem;->actionParam:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ImageMsgItem;->authType:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ImageMsgItem;->actionName:Ljava/lang/String;

    .line 8
    return-void
.end method

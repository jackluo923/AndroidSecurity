.class public Lcom/alipay/publiccore/biz/relation/msg/result/TextMsgEntry;
.super Lcom/alipay/publiccore/biz/relation/msg/result/BaseMsgEntry;
.source "TextMsgEntry.java"


# instance fields
.field public content:Ljava/lang/String;

.field public createTime:Ljava/lang/String;

.field public publicId:Ljava/lang/String;

.field public toUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0}, Lcom/alipay/publiccore/biz/relation/msg/result/BaseMsgEntry;-><init>()V

    .line 13
    iput-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/TextMsgEntry;->publicId:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/TextMsgEntry;->toUserId:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/TextMsgEntry;->createTime:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/TextMsgEntry;->content:Ljava/lang/String;

    .line 8
    return-void
.end method

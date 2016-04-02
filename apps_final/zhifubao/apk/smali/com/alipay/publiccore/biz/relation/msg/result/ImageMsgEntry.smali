.class public Lcom/alipay/publiccore/biz/relation/msg/result/ImageMsgEntry;
.super Lcom/alipay/publiccore/biz/relation/msg/result/BaseMsgEntry;
.source "ImageMsgEntry.java"


# instance fields
.field public articles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/biz/relation/msg/result/ImageMsgItem;",
            ">;"
        }
    .end annotation
.end field

.field public createTime:Ljava/lang/String;

.field public publicId:Ljava/lang/String;

.field public showType:Ljava/lang/String;

.field public toUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Lcom/alipay/publiccore/biz/relation/msg/result/BaseMsgEntry;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ImageMsgEntry;->publicId:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ImageMsgEntry;->toUserId:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ImageMsgEntry;->createTime:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ImageMsgEntry;->showType:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ImageMsgEntry;->articles:Ljava/util/List;

    .line 10
    return-void
.end method


# virtual methods
.method public getArticles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/biz/relation/msg/result/ImageMsgItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ImageMsgEntry;->articles:Ljava/util/List;

    return-object v0
.end method

.method public setArticles(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/biz/relation/msg/result/ImageMsgItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alipay/publiccore/biz/relation/msg/result/ImageMsgEntry;->articles:Ljava/util/List;

    .line 41
    return-void
.end method

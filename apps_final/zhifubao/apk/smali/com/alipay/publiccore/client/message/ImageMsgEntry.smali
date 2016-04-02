.class public Lcom/alipay/publiccore/client/message/ImageMsgEntry;
.super Lcom/alipay/publiccore/client/message/BaseMsgEntry;
.source "ImageMsgEntry.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x3580a25d2ef2021bL


# instance fields
.field public articles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/client/message/ImageMsgItem;",
            ">;"
        }
    .end annotation
.end field

.field public createTime:Ljava/lang/String;

.field public headBtn:Ljava/lang/String;

.field public headBtnActionType:Ljava/lang/String;

.field public headBtnUrl:Ljava/lang/String;

.field public headLogo:Ljava/lang/String;

.field public headTitle:Ljava/lang/String;

.field public publicId:Ljava/lang/String;

.field public toUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0}, Lcom/alipay/publiccore/client/message/BaseMsgEntry;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/alipay/publiccore/client/message/ImageMsgEntry;->headLogo:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/alipay/publiccore/client/message/ImageMsgEntry;->headTitle:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/alipay/publiccore/client/message/ImageMsgEntry;->headBtn:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/alipay/publiccore/client/message/ImageMsgEntry;->headBtnActionType:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/alipay/publiccore/client/message/ImageMsgEntry;->headBtnUrl:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/alipay/publiccore/client/message/ImageMsgEntry;->publicId:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/alipay/publiccore/client/message/ImageMsgEntry;->toUserId:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/alipay/publiccore/client/message/ImageMsgEntry;->createTime:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/alipay/publiccore/client/message/ImageMsgEntry;->articles:Ljava/util/List;

    .line 11
    return-void
.end method

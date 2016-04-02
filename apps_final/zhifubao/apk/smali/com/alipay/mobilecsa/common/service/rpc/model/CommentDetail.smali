.class public Lcom/alipay/mobilecsa/common/service/rpc/model/CommentDetail;
.super Ljava/lang/Object;
.source "CommentDetail.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public canDelete:Z

.field public commentId:Ljava/lang/String;

.field public commentImgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public commentNickName:Ljava/lang/String;

.field public commentScore:I

.field public commentTime:Ljava/lang/String;

.field public commentUserId:Ljava/lang/String;

.field public commentUserImg:Ljava/lang/String;

.field public isAanonymous:Z

.field public merantReply:Ljava/lang/String;

.field public merchantCommentId:Ljava/lang/String;

.field public merchantReplyTime:Ljava/lang/String;

.field public shopId:Ljava/lang/String;

.field public tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilecsa/common/service/rpc/model/TagDetail;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

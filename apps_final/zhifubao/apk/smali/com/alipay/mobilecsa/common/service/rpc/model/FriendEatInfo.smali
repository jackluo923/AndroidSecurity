.class public Lcom/alipay/mobilecsa/common/service/rpc/model/FriendEatInfo;
.super Lcom/alipay/mobilecsa/common/service/facade/model/ToString;
.source "FriendEatInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public anonymous:Z

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

.field public fromFriend:Z

.field public headShopName:Ljava/lang/String;

.field public logo:Ljava/lang/String;

.field public perPay:Ljava/lang/String;

.field public recommendCount:I

.field public shopAverScore:D

.field public shopId:Ljava/lang/String;

.field public shopName:Ljava/lang/String;

.field public tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alipay/mobilecsa/common/service/facade/model/ToString;-><init>()V

    return-void
.end method

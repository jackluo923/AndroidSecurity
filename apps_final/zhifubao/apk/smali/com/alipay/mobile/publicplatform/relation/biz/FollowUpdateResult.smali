.class public Lcom/alipay/mobile/publicplatform/relation/biz/FollowUpdateResult;
.super Ljava/lang/Object;
.source "FollowUpdateResult.java"


# instance fields
.field public modifyCount:I

.field public noVip2Vip:Z

.field public vip2NoVip:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-boolean v0, p0, Lcom/alipay/mobile/publicplatform/relation/biz/FollowUpdateResult;->vip2NoVip:Z

    .line 8
    iput-boolean v0, p0, Lcom/alipay/mobile/publicplatform/relation/biz/FollowUpdateResult;->noVip2Vip:Z

    .line 9
    iput v0, p0, Lcom/alipay/mobile/publicplatform/relation/biz/FollowUpdateResult;->modifyCount:I

    .line 6
    return-void
.end method

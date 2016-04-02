.class Lcom/alipay/mobile/publicplatform/relation/RelationRecv$1;
.super Ljava/lang/Object;
.source "RelationRecv.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/alipay/mobile/publicplatform/relation/model/FollowMessageModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/publicplatform/relation/RelationRecv;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/publicplatform/relation/RelationRecv;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/publicplatform/relation/RelationRecv$1;->this$0:Lcom/alipay/mobile/publicplatform/relation/RelationRecv;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/alipay/mobile/publicplatform/relation/model/FollowMessageModel;Lcom/alipay/mobile/publicplatform/relation/model/FollowMessageModel;)I
    .locals 4

    .prologue
    .line 52
    iget-wide v0, p1, Lcom/alipay/mobile/publicplatform/relation/model/FollowMessageModel;->timestamp:J

    iget-wide v2, p2, Lcom/alipay/mobile/publicplatform/relation/model/FollowMessageModel;->timestamp:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/alipay/mobile/publicplatform/relation/model/FollowMessageModel;

    check-cast p2, Lcom/alipay/mobile/publicplatform/relation/model/FollowMessageModel;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/publicplatform/relation/RelationRecv$1;->compare(Lcom/alipay/mobile/publicplatform/relation/model/FollowMessageModel;Lcom/alipay/mobile/publicplatform/relation/model/FollowMessageModel;)I

    move-result v0

    return v0
.end method

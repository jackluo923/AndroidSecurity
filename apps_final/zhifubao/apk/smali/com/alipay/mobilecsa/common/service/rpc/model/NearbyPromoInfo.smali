.class public Lcom/alipay/mobilecsa/common/service/rpc/model/NearbyPromoInfo;
.super Ljava/lang/Object;
.source "NearbyPromoInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public nearbyPromoDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilecsa/common/service/rpc/model/NearbyPromoDetail;",
            ">;"
        }
    .end annotation
.end field

.field public recommendId:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class public Lcom/alipay/mobilecsa/common/service/rpc/model/ShopDetail;
.super Ljava/lang/Object;
.source "ShopDetail.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public shopId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobilecsa/common/service/rpc/model/ShopDetail;->data:Ljava/util/Map;

    .line 32
    return-void
.end method

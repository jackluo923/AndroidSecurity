.class public Lcom/alipay/mobilecsa/common/service/rpc/model/LimitDescDetail;
.super Ljava/lang/Object;
.source "LimitDescDetail.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public details:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobilecsa/common/service/rpc/model/LimitDescDetail;->details:Ljava/util/List;

    .line 32
    return-void
.end method

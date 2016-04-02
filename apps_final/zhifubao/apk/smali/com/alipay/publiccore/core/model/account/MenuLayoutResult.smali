.class public Lcom/alipay/publiccore/core/model/account/MenuLayoutResult;
.super Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;
.source "MenuLayoutResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public button:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/core/model/account/ButtonObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;-><init>()V

    return-void
.end method

.class public Lcom/alipay/publiccore/common/service/facade/model/result/PublicEventMessageResult;
.super Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;
.source "PublicEventMessageResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/common/service/facade/model/PublicEventMessageInfo;",
            ">;"
        }
    .end annotation
.end field

.field public publicId:Ljava/lang/String;

.field public total:Ljava/lang/Integer;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;-><init>()V

    return-void
.end method

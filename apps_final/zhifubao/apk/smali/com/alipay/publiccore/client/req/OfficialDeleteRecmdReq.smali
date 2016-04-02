.class public Lcom/alipay/publiccore/client/req/OfficialDeleteRecmdReq;
.super Lcom/alipay/publiccore/common/service/facade/model/ToString;
.source "OfficialDeleteRecmdReq.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public deletedOfficial:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public operationType:Ljava/lang/String;

.field public sourceTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/ToString;-><init>()V

    return-void
.end method

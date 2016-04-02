.class public Lcom/alipay/publiccore/common/service/facade/model/request/PublicEventProcessReq;
.super Lcom/alipay/publiccore/common/service/facade/model/ToString;
.source "PublicEventProcessReq.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public accountId:Ljava/lang/String;

.field public actionParam:Ljava/lang/String;

.field public agreementId:Ljava/lang/String;

.field public extInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public publicId:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/ToString;-><init>()V

    return-void
.end method

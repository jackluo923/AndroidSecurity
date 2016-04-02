.class public Lcom/alipay/publiccore/common/service/facade/account/domain/RecommendReq;
.super Lcom/alipay/publiccore/common/service/facade/model/ToString;
.source "RecommendReq.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public bizInNo:Ljava/lang/String;

.field public bizType:Ljava/lang/String;

.field public extParams:Ljava/util/Map;
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

.field public sceneId:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/ToString;-><init>()V

    return-void
.end method

.class public Lcom/alipay/publiccore/client/querier/BaseMessageQuery;
.super Lcom/alipay/publiccore/common/service/facade/model/ToString;
.source "BaseMessageQuery.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public apiVersion:Ljava/lang/String;

.field public channelPackage:Ljava/lang/String;

.field public clientVersion:Ljava/lang/String;

.field public terminal:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/ToString;-><init>()V

    return-void
.end method

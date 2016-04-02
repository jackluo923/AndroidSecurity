.class public Lcom/alipay/publiccore/core/model/account/UserAccountLayoutReq;
.super Lcom/alipay/publiccore/client/req/BaseQuery;
.source "UserAccountLayoutReq.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public extArgs:Ljava/util/Map;
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

.field public requestScene:Ljava/lang/String;

.field public sourceId:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alipay/publiccore/client/req/BaseQuery;-><init>()V

    return-void
.end method

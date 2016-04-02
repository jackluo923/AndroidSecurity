.class public Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceQueryReq;
.super Ljava/lang/Object;
.source "SpaceQueryReq.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public packageName:Ljava/lang/String;

.field public spaceCodeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

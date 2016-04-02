.class public Lcom/alipay/mobilecsa/common/service/rpc/model/ShareChannelInfo;
.super Ljava/lang/Object;
.source "ShareChannelInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public channelParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilecsa/common/service/rpc/model/ShareChannelParam;",
            ">;"
        }
    .end annotation
.end field

.field public defaultParams:Lcom/alipay/mobilecsa/common/service/rpc/model/ShareChannelParam;

.field public enableChannel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

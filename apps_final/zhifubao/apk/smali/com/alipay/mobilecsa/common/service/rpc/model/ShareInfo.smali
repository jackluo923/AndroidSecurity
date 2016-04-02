.class public Lcom/alipay/mobilecsa/common/service/rpc/model/ShareInfo;
.super Ljava/lang/Object;
.source "ShareInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public channelId:Ljava/lang/String;

.field public shareData:Ljava/util/Map;
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

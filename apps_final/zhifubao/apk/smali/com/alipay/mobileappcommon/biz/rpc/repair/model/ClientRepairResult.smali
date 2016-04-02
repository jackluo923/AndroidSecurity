.class public Lcom/alipay/mobileappcommon/biz/rpc/repair/model/ClientRepairResult;
.super Ljava/lang/Object;
.source "ClientRepairResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public bundleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileappcommon/biz/rpc/repair/model/BundleInfo;",
            ">;"
        }
    .end annotation
.end field

.field public extraInfo:Ljava/util/Map;
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

.field public forceUpgrade:Z

.field public memo:Ljava/lang/String;

.field public patchList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileappcommon/biz/rpc/repair/model/PatchInfo;",
            ">;"
        }
    .end annotation
.end field

.field public releaseVersion:Ljava/lang/String;

.field public rollback:Z

.field public success:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

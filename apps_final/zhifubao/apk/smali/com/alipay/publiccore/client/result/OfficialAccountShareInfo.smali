.class public Lcom/alipay/publiccore/client/result/OfficialAccountShareInfo;
.super Ljava/lang/Object;
.source "OfficialAccountShareInfo.java"


# instance fields
.field public bigIconPath:Ljava/lang/String;

.field public followCount:I

.field public logoUrl:Ljava/lang/String;

.field public mediumIconPath:Ljava/lang/String;

.field public shortLinkMap:Ljava/util/Map;
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

.field public smallIconPath:Ljava/lang/String;

.field public summaryMap:Ljava/util/Map;
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
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

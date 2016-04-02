.class public Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceInfo;
.super Ljava/lang/Object;
.source "SpaceInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public androidViewId:Ljava/lang/String;

.field public appId:Ljava/lang/String;

.field public close:Z

.field public height:I

.field public iOSViewId:Ljava/lang/String;

.field public location:Ljava/lang/String;

.field public multiStyle:Ljava/lang/String;

.field public reqRpcTime:J

.field public rotationTime:I

.field public spaceCode:Ljava/lang/String;

.field public spaceObjectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceObjectInfo;",
            ">;"
        }
    .end annotation
.end field

.field public type:Ljava/lang/String;

.field public updatePolicy:Ljava/lang/String;

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

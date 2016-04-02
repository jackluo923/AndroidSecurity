.class public Lcom/alipay/publiccore/client/req/FollowReq;
.super Lcom/alipay/publiccore/common/service/facade/model/ToString;
.source "FollowReq.java"


# instance fields
.field public acceptMsg:Z

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

.field public followObjectId:Ljava/lang/String;

.field public followType:Ljava/lang/String;

.field public pushSwitch:Ljava/lang/String;

.field public sourceId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/ToString;-><init>()V

    return-void
.end method

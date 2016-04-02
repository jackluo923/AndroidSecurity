.class public Lcom/alipay/livetradeprod/core/model/rpc/BindLbsUserReq;
.super Lcom/alipay/livetradeprod/core/model/base/SoundWaveBaseReq;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public location:Lcom/alipay/mobilelbs/common/service/facade/vo/Location;

.field public tid:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/livetradeprod/core/model/base/SoundWaveBaseReq;-><init>()V

    return-void
.end method

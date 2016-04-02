.class public Lcom/alipay/publiccore/client/req/GisUploadReq;
.super Lcom/alipay/publiccore/common/service/facade/model/ToString;
.source "GisUploadReq.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public accuracy:D

.field public latitude:D

.field public location:Lcom/alipay/mobilelbs/common/service/facade/vo/Location;

.field public longitude:D

.field public publicId:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/ToString;-><init>()V

    return-void
.end method

.class public Lcom/alipay/publiccore/client/req/OfficialAccountReq;
.super Lcom/alipay/publiccore/common/service/facade/model/ToString;
.source "OfficialAccountReq.java"


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

.field public followType:Ljava/lang/String;

.field public publicId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/ToString;-><init>()V

    return-void
.end method

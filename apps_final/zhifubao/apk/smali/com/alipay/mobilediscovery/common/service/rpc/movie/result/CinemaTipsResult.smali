.class public Lcom/alipay/mobilediscovery/common/service/rpc/movie/result/CinemaTipsResult;
.super Lcom/alipay/mobilediscovery/common/service/rpc/common/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public cinemaTip:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilediscovery/common/service/rpc/movie/model/CinemaTipInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilediscovery/common/service/rpc/common/ToString;-><init>()V

    return-void
.end method

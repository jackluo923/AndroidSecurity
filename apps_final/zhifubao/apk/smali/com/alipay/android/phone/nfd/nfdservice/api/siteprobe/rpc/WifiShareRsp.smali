.class public Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/WifiShareRsp;
.super Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/RpcBaseResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public shareWifis:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/WifiShareModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/RpcBaseResult;-><init>()V

    return-void
.end method

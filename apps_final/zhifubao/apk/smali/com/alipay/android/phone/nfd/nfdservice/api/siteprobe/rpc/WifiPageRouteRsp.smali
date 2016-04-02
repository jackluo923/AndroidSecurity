.class public Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/WifiPageRouteRsp;
.super Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/RpcBaseResult;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public pageRouteConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/PageRouteConfig;",
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

.class public Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/ConfigControlRes;
.super Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/RpcBaseResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public configurations:Ljava/util/Map;
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

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/RpcBaseResult;-><init>()V

    return-void
.end method

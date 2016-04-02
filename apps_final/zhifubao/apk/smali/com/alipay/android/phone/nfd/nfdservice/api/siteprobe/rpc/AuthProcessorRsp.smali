.class public Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/AuthProcessorRsp;
.super Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/RpcBaseResult;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public failedMsg:Ljava/lang/String;

.field public gotoUrl:Ljava/lang/String;

.field public needUrl:Ljava/lang/String;

.field public otherAccessUrl:Ljava/lang/String;

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

.field public sign:Ljava/lang/String;

.field public successMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/RpcBaseResult;-><init>()V

    return-void
.end method

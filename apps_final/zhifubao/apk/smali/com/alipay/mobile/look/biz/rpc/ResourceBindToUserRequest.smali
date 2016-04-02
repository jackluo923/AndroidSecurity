.class public Lcom/alipay/mobile/look/biz/rpc/ResourceBindToUserRequest;
.super Lcom/alipay/mobile/look/biz/rpc/BaseRpcRequest;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5e18b49c755c9e6dL


# instance fields
.field public extraDatas:Ljava/util/Map;
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

.field public mobileFileResource:Lcom/alipay/mobile/look/biz/rpc/MobileFileResource;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/look/biz/rpc/BaseRpcRequest;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/look/biz/rpc/ResourceBindToUserRequest;->mobileFileResource:Lcom/alipay/mobile/look/biz/rpc/MobileFileResource;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/look/biz/rpc/ResourceBindToUserRequest;->extraDatas:Ljava/util/Map;

    return-void
.end method

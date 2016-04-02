.class public Lcom/alipay/mobile/look/biz/rpc/ResourceBindToBizRequest;
.super Lcom/alipay/mobile/look/biz/rpc/BaseRpcRequest;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x26e73b54f9362feL


# instance fields
.field public bizNo:Ljava/lang/String;

.field public bizType:Ljava/lang/String;

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

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/alipay/mobile/look/biz/rpc/BaseRpcRequest;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/look/biz/rpc/ResourceBindToBizRequest;->bizNo:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/look/biz/rpc/ResourceBindToBizRequest;->bizType:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/look/biz/rpc/ResourceBindToBizRequest;->mobileFileResource:Lcom/alipay/mobile/look/biz/rpc/MobileFileResource;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/look/biz/rpc/ResourceBindToBizRequest;->extraDatas:Ljava/util/Map;

    return-void
.end method

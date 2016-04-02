.class public Lcom/alipay/mobile/look/biz/rpc/ResourceBindToBizResponse;
.super Lcom/alipay/mobile/look/biz/rpc/BaseRpcResponse;


# static fields
.field private static final serialVersionUID:J = -0x4e20b1a42d96fa0cL


# instance fields
.field public bindId:Ljava/lang/String;

.field public bizNo:Ljava/lang/String;

.field public path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/alipay/mobile/look/biz/rpc/BaseRpcResponse;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/look/biz/rpc/ResourceBindToBizResponse;->bindId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/look/biz/rpc/ResourceBindToBizResponse;->bizNo:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/look/biz/rpc/ResourceBindToBizResponse;->path:Ljava/lang/String;

    return-void
.end method

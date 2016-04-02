.class public Lcom/alipay/mobile/look/biz/rpc/ResourceBindToUserResponse;
.super Lcom/alipay/mobile/look/biz/rpc/BaseRpcResponse;


# static fields
.field private static final serialVersionUID:J = 0x39b50d77e51a388eL


# instance fields
.field public bindId:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/alipay/mobile/look/biz/rpc/BaseRpcResponse;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/look/biz/rpc/ResourceBindToUserResponse;->bindId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/look/biz/rpc/ResourceBindToUserResponse;->userId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/look/biz/rpc/ResourceBindToUserResponse;->path:Ljava/lang/String;

    return-void
.end method

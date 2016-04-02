.class public abstract Lcom/alipay/mobile/command/model/Request;
.super Ljava/lang/Object;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/command/model/Request;->a:Z

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/command/model/Request;->a:Z

    return-void
.end method

.method public isCanceled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/command/model/Request;->a:Z

    return v0
.end method

.method public abstract rpcTypeEnum()Lcom/alipay/mobile/command/model/RpcTypeEnum;
.end method

.class public abstract Lcom/alipay/mobile/command/model/Response;
.super Ljava/lang/Object;


# instance fields
.field protected a:[B

.field protected b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/command/model/Response;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getResData()[B
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/command/model/Response;->a:[B

    return-object v0
.end method

.method public abstract rpcTypeEnum()Lcom/alipay/mobile/command/model/RpcTypeEnum;
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/command/model/Response;->b:Ljava/lang/String;

    return-void
.end method

.method public setResData([B)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/command/model/Response;->a:[B

    return-void
.end method

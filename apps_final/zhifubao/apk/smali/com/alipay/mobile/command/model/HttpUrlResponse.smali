.class public Lcom/alipay/mobile/command/model/HttpUrlResponse;
.super Lcom/alipay/mobile/command/model/Response;


# instance fields
.field private c:I

.field private d:Ljava/lang/String;

.field private e:J

.field private f:J

.field private g:Ljava/lang/String;

.field private h:Lcom/alipay/mobile/command/model/HttpUrlHeader;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/command/model/HttpUrlHeader;ILjava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/command/model/Response;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/command/model/HttpUrlResponse;->h:Lcom/alipay/mobile/command/model/HttpUrlHeader;

    iput p2, p0, Lcom/alipay/mobile/command/model/HttpUrlResponse;->c:I

    iput-object p3, p0, Lcom/alipay/mobile/command/model/HttpUrlResponse;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/command/model/HttpUrlResponse;->a:[B

    return-void
.end method


# virtual methods
.method public getCharset()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/command/model/HttpUrlResponse;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/command/model/HttpUrlResponse;->c:I

    return v0
.end method

.method public getCreateTime()J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/mobile/command/model/HttpUrlResponse;->e:J

    return-wide v0
.end method

.method public getHeader()Lcom/alipay/mobile/command/model/HttpUrlHeader;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/command/model/HttpUrlResponse;->h:Lcom/alipay/mobile/command/model/HttpUrlHeader;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/command/model/HttpUrlResponse;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getPeriod()J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/mobile/command/model/HttpUrlResponse;->f:J

    return-wide v0
.end method

.method public rpcTypeEnum()Lcom/alipay/mobile/command/model/RpcTypeEnum;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/command/model/RpcTypeEnum;->HTTP:Lcom/alipay/mobile/command/model/RpcTypeEnum;

    return-object v0
.end method

.method public setCharset(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/command/model/HttpUrlResponse;->g:Ljava/lang/String;

    return-void
.end method

.method public setCreateTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alipay/mobile/command/model/HttpUrlResponse;->e:J

    return-void
.end method

.method public setHeader(Lcom/alipay/mobile/command/model/HttpUrlHeader;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/command/model/HttpUrlResponse;->h:Lcom/alipay/mobile/command/model/HttpUrlHeader;

    return-void
.end method

.method public setPeriod(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alipay/mobile/command/model/HttpUrlResponse;->f:J

    return-void
.end method

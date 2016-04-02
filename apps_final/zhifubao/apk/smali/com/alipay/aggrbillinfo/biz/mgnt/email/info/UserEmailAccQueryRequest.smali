.class public Lcom/alipay/aggrbillinfo/biz/mgnt/email/info/UserEmailAccQueryRequest;
.super Lcom/alipay/aggrbillinfo/common/service/facade/model/ToString;


# instance fields
.field public bankCode:Ljava/lang/String;

.field public cardNo:Ljava/lang/String;

.field public queryType:Ljava/lang/String;

.field public realName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/aggrbillinfo/common/service/facade/model/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getBankCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/email/info/UserEmailAccQueryRequest;->bankCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCardNo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/email/info/UserEmailAccQueryRequest;->cardNo:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/email/info/UserEmailAccQueryRequest;->queryType:Ljava/lang/String;

    return-object v0
.end method

.method public getRealName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/email/info/UserEmailAccQueryRequest;->realName:Ljava/lang/String;

    return-object v0
.end method

.method public setBankCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/email/info/UserEmailAccQueryRequest;->bankCode:Ljava/lang/String;

    return-void
.end method

.method public setCardNo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/email/info/UserEmailAccQueryRequest;->cardNo:Ljava/lang/String;

    return-void
.end method

.method public setQueryType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/email/info/UserEmailAccQueryRequest;->queryType:Ljava/lang/String;

    return-void
.end method

.method public setRealName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/email/info/UserEmailAccQueryRequest;->realName:Ljava/lang/String;

    return-void
.end method

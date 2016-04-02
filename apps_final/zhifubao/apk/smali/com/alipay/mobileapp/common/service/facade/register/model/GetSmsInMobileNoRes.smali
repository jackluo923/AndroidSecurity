.class public Lcom/alipay/mobileapp/common/service/facade/register/model/GetSmsInMobileNoRes;
.super Lcom/alipay/mobileapp/common/service/facade/register/model/CommonRes;


# instance fields
.field public smsInMobileNo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileapp/common/service/facade/register/model/CommonRes;-><init>()V

    return-void
.end method


# virtual methods
.method public getSmsInMobileNo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileapp/common/service/facade/register/model/GetSmsInMobileNoRes;->smsInMobileNo:Ljava/lang/String;

    return-object v0
.end method

.method public setSmsInMobileNo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileapp/common/service/facade/register/model/GetSmsInMobileNoRes;->smsInMobileNo:Ljava/lang/String;

    return-void
.end method

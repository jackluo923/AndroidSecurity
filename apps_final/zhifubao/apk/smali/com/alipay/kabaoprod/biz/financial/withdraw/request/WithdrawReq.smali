.class public Lcom/alipay/kabaoprod/biz/financial/withdraw/request/WithdrawReq;
.super Lcom/alipay/kabaoprod/service/facade/model/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public amount:Ljava/lang/String;

.field public arrivedDateType:Ljava/lang/String;

.field public bankAccountNo:Ljava/lang/String;

.field public bankMark:Ljava/lang/String;

.field public fillType:Ljava/lang/String;

.field public needResendRandomCode:Z

.field public passwordType:Ljava/lang/String;

.field public payPassword:Ljava/lang/String;

.field public randomCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/kabaoprod/service/facade/model/ToString;-><init>()V

    return-void
.end method

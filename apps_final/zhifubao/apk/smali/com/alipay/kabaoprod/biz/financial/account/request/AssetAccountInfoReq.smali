.class public Lcom/alipay/kabaoprod/biz/financial/account/request/AssetAccountInfoReq;
.super Lcom/alipay/kabaoprod/service/facade/model/ToString;


# instance fields
.field public traveLDate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/kabaoprod/service/facade/model/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getTraveLDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/account/request/AssetAccountInfoReq;->traveLDate:Ljava/lang/String;

    return-object v0
.end method

.method public setTraveLDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/account/request/AssetAccountInfoReq;->traveLDate:Ljava/lang/String;

    return-void
.end method

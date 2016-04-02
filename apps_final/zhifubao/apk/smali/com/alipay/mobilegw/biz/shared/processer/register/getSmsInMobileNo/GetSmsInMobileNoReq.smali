.class public Lcom/alipay/mobilegw/biz/shared/processer/register/getSmsInMobileNo/GetSmsInMobileNoReq;
.super Ljava/lang/Object;


# instance fields
.field private msgContent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMsgContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/register/getSmsInMobileNo/GetSmsInMobileNoReq;->msgContent:Ljava/lang/String;

    return-object v0
.end method

.method public setMsgContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilegw/biz/shared/processer/register/getSmsInMobileNo/GetSmsInMobileNoReq;->msgContent:Ljava/lang/String;

    return-void
.end method

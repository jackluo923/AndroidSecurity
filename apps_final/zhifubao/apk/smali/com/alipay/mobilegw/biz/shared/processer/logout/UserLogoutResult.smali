.class public Lcom/alipay/mobilegw/biz/shared/processer/logout/UserLogoutResult;
.super Ljava/lang/Object;


# instance fields
.field public memo:Ljava/lang/String;

.field public resultStatus:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMemo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/logout/UserLogoutResult;->memo:Ljava/lang/String;

    return-object v0
.end method

.method public getResultStatus()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobilegw/biz/shared/processer/logout/UserLogoutResult;->resultStatus:I

    return v0
.end method

.method public setMemo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilegw/biz/shared/processer/logout/UserLogoutResult;->memo:Ljava/lang/String;

    return-void
.end method

.method public setResultStatus(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobilegw/biz/shared/processer/logout/UserLogoutResult;->resultStatus:I

    return-void
.end method

.class public Lcom/alipay/mobileapp/biz/rpc/user/MobileUserResult;
.super Ljava/lang/Object;


# instance fields
.field public bindedLoginIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public memo:Ljava/lang/String;

.field public mobileUser:Z

.field public success:Z

.field public userStatus:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBindedLoginIds()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/user/MobileUserResult;->bindedLoginIds:Ljava/util/Map;

    return-object v0
.end method

.method public getMemo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/user/MobileUserResult;->memo:Ljava/lang/String;

    return-object v0
.end method

.method public getUserStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/user/MobileUserResult;->userStatus:Ljava/lang/String;

    return-object v0
.end method

.method public isMobileUser()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobileapp/biz/rpc/user/MobileUserResult;->mobileUser:Z

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobileapp/biz/rpc/user/MobileUserResult;->success:Z

    return v0
.end method

.method public setBindedLoginIds(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobileapp/biz/rpc/user/MobileUserResult;->bindedLoginIds:Ljava/util/Map;

    return-void
.end method

.method public setMemo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileapp/biz/rpc/user/MobileUserResult;->memo:Ljava/lang/String;

    return-void
.end method

.method public setMobileUser(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobileapp/biz/rpc/user/MobileUserResult;->mobileUser:Z

    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobileapp/biz/rpc/user/MobileUserResult;->success:Z

    return-void
.end method

.method public setUserStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileapp/biz/rpc/user/MobileUserResult;->userStatus:Ljava/lang/String;

    return-void
.end method

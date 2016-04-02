.class public Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusResp;
.super Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;


# instance fields
.field public token:Ljava/lang/String;

.field public userList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilesecurity/core/model/VerifyCertifyByMspUserInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getUserList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilesecurity/core/model/VerifyCertifyByMspUserInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusResp;->userList:Ljava/util/List;

    return-object v0
.end method

.method public setUserList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilesecurity/core/model/VerifyCertifyByMspUserInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusResp;->userList:Ljava/util/List;

    return-void
.end method

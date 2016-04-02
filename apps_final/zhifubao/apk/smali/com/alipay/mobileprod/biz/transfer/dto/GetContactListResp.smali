.class public Lcom/alipay/mobileprod/biz/transfer/dto/GetContactListResp;
.super Lcom/alipay/mobileprod/core/model/BaseRespVO;


# instance fields
.field public contactList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileprod/biz/transfer/vo/ContactUserVO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/BaseRespVO;-><init>()V

    return-void
.end method


# virtual methods
.method public getContactList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileprod/biz/transfer/vo/ContactUserVO;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/transfer/dto/GetContactListResp;->contactList:Ljava/util/List;

    return-object v0
.end method

.method public setContactList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileprod/biz/transfer/vo/ContactUserVO;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/transfer/dto/GetContactListResp;->contactList:Ljava/util/List;

    return-void
.end method

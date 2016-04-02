.class public Lcom/alipay/mobilechat/biz/group/rpc/response/MemberInfoVO;
.super Lcom/alipay/mobilechat/common/service/facade/model/ToStringObj;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public gender:Ljava/lang/String;

.field public groupNickName:Ljava/lang/String;

.field public headImg:Ljava/lang/String;

.field public loginId:Ljava/lang/String;

.field public nickName:Ljava/lang/String;

.field public operationType:Ljava/lang/String;

.field public realName:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilechat/common/service/facade/model/ToStringObj;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/alipay/mobilechat/biz/group/rpc/response/MemberInfoVO;

    iget-object v2, p0, Lcom/alipay/mobilechat/biz/group/rpc/response/MemberInfoVO;->userId:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/alipay/mobilechat/biz/group/rpc/response/MemberInfoVO;->userId:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilechat/biz/group/rpc/response/MemberInfoVO;->userId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p1, Lcom/alipay/mobilechat/biz/group/rpc/response/MemberInfoVO;->userId:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilechat/biz/group/rpc/response/MemberInfoVO;->userId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobilechat/biz/group/rpc/response/MemberInfoVO;->userId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

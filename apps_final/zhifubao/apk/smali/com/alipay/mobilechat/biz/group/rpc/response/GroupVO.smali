.class public Lcom/alipay/mobilechat/biz/group/rpc/response/GroupVO;
.super Lcom/alipay/mobilechat/common/service/facade/model/ToStringObj;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public bizType:Ljava/lang/String;

.field public config:Lcom/alipay/mobilechat/biz/group/rpc/response/PersonalGroupConfig;

.field public gmtCreate:Ljava/util/Date;

.field public groupCount:I

.field public groupId:Ljava/lang/String;

.field public groupImg:Ljava/lang/String;

.field public groupName:Ljava/lang/String;

.field public masterUserId:Ljava/lang/String;

.field public memberInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilechat/biz/group/rpc/response/MemberInfoVO;",
            ">;"
        }
    .end annotation
.end field

.field public permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public threshold:I

.field public version:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobilechat/common/service/facade/model/ToStringObj;-><init>()V

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/alipay/mobilechat/biz/group/rpc/response/GroupVO;->threshold:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobilechat/biz/group/rpc/response/GroupVO;->permissions:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobilechat/biz/group/rpc/response/GroupVO;->memberInfos:Ljava/util/List;

    return-void
.end method

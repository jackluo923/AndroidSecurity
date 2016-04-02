.class public Lcom/alipay/mobilechat/biz/group/rpc/response/GroupCreateResult;
.super Lcom/alipay/mobilechat/common/service/facade/result/CommonResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public group:Lcom/alipay/mobilechat/biz/group/rpc/response/GroupVO;

.field public schemaUrl:Ljava/lang/String;

.field public unFriendList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public unFriendsMemos:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilechat/common/service/facade/result/CommonResult;-><init>()V

    return-void
.end method

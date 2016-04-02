.class public Lcom/alipay/mobilechat/biz/outservice/rpc/request/ShareClientMessageReq;
.super Lcom/alipay/mobilechat/common/service/facade/model/ToStringObj;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public appId:Ljava/lang/String;

.field public bizMemo:Ljava/lang/String;

.field public bizType:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public egg:Ljava/lang/String;

.field public extendData:Ljava/lang/String;

.field public image:Ljava/lang/String;

.field public link:Ljava/lang/String;

.field public receiverIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilechat/common/service/facade/model/message/ReceiverInfo;",
            ">;"
        }
    .end annotation
.end field

.field public sign:Ljava/lang/String;

.field public templateCode:Ljava/lang/String;

.field public thumb:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilechat/common/service/facade/model/ToStringObj;-><init>()V

    return-void
.end method

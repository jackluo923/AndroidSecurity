.class public Lcom/alipay/mobilechat/common/service/facade/model/SingleChatMessage;
.super Lcom/alipay/mobilechat/common/service/facade/model/ToStringObj;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public appId:Ljava/lang/String;

.field public bizMemo:Ljava/lang/String;

.field public bizType:Ljava/lang/String;

.field public clientMsgId:Ljava/lang/String;

.field public contextData:Ljava/lang/String;

.field public createTime:Ljava/util/Date;

.field public egg:Ljava/lang/String;

.field public extendData:Ljava/lang/String;

.field public icon:Ljava/lang/String;

.field public link:Ljava/lang/String;

.field public msgId:J

.field public preMsgId:J

.field public recent:I

.field public side:Ljava/lang/String;

.field public templateCode:Ljava/lang/String;

.field public templateData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobilechat/common/service/facade/model/ToStringObj;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobilechat/common/service/facade/model/SingleChatMessage;->recent:I

    return-void
.end method

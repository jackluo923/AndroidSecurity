.class public Lcom/alipay/mobilechat/common/service/facade/model/message/ChatSession;
.super Lcom/alipay/mobilechat/common/service/facade/model/ToStringObj;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public hasMore:Z

.field public loginId:Ljava/lang/String;

.field public logo:Ljava/lang/String;

.field public messageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilechat/common/service/facade/model/SingleChatMessage;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public preMsgId:J

.field public readMsgId:J

.field public sessionId:Ljava/lang/String;

.field public unread:J

.field public userId:Ljava/lang/String;

.field public userType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilechat/common/service/facade/model/ToStringObj;-><init>()V

    return-void
.end method

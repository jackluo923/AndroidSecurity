.class public final Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;
.super Lcom/squareup/wire/Message;


# static fields
.field public static final DEFAULT_APPID:Ljava/lang/String; = ""

.field public static final DEFAULT_BIZMEMO:Ljava/lang/String; = ""

.field public static final DEFAULT_BIZREMIND:Ljava/lang/String; = ""

.field public static final DEFAULT_BIZTYPE:Ljava/lang/String; = ""

.field public static final DEFAULT_CLIENTMSGID:Ljava/lang/Long;

.field public static final DEFAULT_EXTENDPARAM:Ljava/lang/String; = ""

.field public static final DEFAULT_HINTUSERS:Ljava/lang/String; = ""

.field public static final DEFAULT_LINK:Ljava/lang/String; = ""

.field public static final DEFAULT_RECEIVERID:Ljava/lang/String; = ""

.field public static final DEFAULT_RECEIVERUSERTYPE:Ljava/lang/Integer;

.field public static final DEFAULT_SCENE:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;

.field public static final DEFAULT_TEMPLATECODE:Ljava/lang/Integer;

.field public static final DEFAULT_TEMPLATEDATA:Ljava/lang/String; = ""

.field private static final serialVersionUID:J


# instance fields
.field public final appId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final bizMemo:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xc
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final bizRemind:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xd
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final bizType:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x9
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final clientMsgId:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final extendParam:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xb
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final hintUsers:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final link:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final receiverId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final receiverUserType:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final scene:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xa
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final templateCode:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final templateData:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->DEFAULT_CLIENTMSGID:Ljava/lang/Long;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->DEFAULT_RECEIVERUSERTYPE:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->DEFAULT_TEMPLATECODE:Ljava/lang/Integer;

    sget-object v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;->CHAT:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;

    sput-object v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->DEFAULT_SCENE:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;

    return-void
.end method

.method private constructor <init>(Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq$Builder;)V
    .locals 14

    iget-object v1, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq$Builder;->clientMsgId:Ljava/lang/Long;

    iget-object v2, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq$Builder;->receiverId:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq$Builder;->receiverUserType:Ljava/lang/Integer;

    iget-object v4, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq$Builder;->templateCode:Ljava/lang/Integer;

    iget-object v5, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq$Builder;->templateData:Ljava/lang/String;

    iget-object v6, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq$Builder;->appId:Ljava/lang/String;

    iget-object v7, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq$Builder;->hintUsers:Ljava/lang/String;

    iget-object v8, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq$Builder;->link:Ljava/lang/String;

    iget-object v9, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq$Builder;->bizType:Ljava/lang/String;

    iget-object v10, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq$Builder;->scene:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;

    iget-object v11, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq$Builder;->extendParam:Ljava/lang/String;

    iget-object v12, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq$Builder;->bizMemo:Ljava/lang/String;

    iget-object v13, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq$Builder;->bizRemind:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq$Builder;Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;-><init>(Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->clientMsgId:Ljava/lang/Long;

    iput-object p2, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->receiverId:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->receiverUserType:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->templateCode:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->templateData:Ljava/lang/String;

    iput-object p6, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->appId:Ljava/lang/String;

    iput-object p7, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->hintUsers:Ljava/lang/String;

    iput-object p8, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->link:Ljava/lang/String;

    iput-object p9, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->bizType:Ljava/lang/String;

    iput-object p10, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->scene:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;

    iput-object p11, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->extendParam:Ljava/lang/String;

    iput-object p12, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->bizMemo:Ljava/lang/String;

    iput-object p13, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->bizRemind:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;

    iget-object v2, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->clientMsgId:Ljava/lang/Long;

    iget-object v3, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->clientMsgId:Ljava/lang/Long;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->receiverId:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->receiverId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->receiverUserType:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->receiverUserType:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->templateCode:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->templateCode:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->templateData:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->templateData:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->appId:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->appId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->hintUsers:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->hintUsers:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->link:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->link:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->bizType:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->bizType:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->scene:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;

    iget-object v3, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->scene:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->extendParam:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->extendParam:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->bizMemo:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->bizMemo:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->bizRemind:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->bizRemind:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto/16 :goto_0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->hashCode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->clientMsgId:Ljava/lang/Long;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->clientMsgId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->receiverId:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->receiverId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->receiverUserType:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->receiverUserType:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->templateCode:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->templateCode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->templateData:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->templateData:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->appId:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->appId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->hintUsers:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->hintUsers:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->link:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->link:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->bizType:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->bizType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->scene:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->scene:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;

    invoke-virtual {v0}, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->extendParam:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->extendParam:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->bizMemo:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->bizMemo:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->bizRemind:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->bizRemind:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMessageReq;->hashCode:I

    :cond_1
    return v0

    :cond_2
    move v0, v1

    goto/16 :goto_0

    :cond_3
    move v0, v1

    goto/16 :goto_1

    :cond_4
    move v0, v1

    goto/16 :goto_2

    :cond_5
    move v0, v1

    goto/16 :goto_3

    :cond_6
    move v0, v1

    goto :goto_4

    :cond_7
    move v0, v1

    goto :goto_5

    :cond_8
    move v0, v1

    goto :goto_6

    :cond_9
    move v0, v1

    goto :goto_7

    :cond_a
    move v0, v1

    goto :goto_8

    :cond_b
    move v0, v1

    goto :goto_9

    :cond_c
    move v0, v1

    goto :goto_a

    :cond_d
    move v0, v1

    goto :goto_b
.end method

.class public final Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;
.super Lcom/squareup/wire/Message;


# static fields
.field public static final DEFAULT_DIPLAYTIPS:Ljava/lang/String; = ""

.field public static final DEFAULT_MEMO:Ljava/lang/String; = ""

.field public static final DEFAULT_MSGID:Ljava/lang/Long;

.field public static final DEFAULT_MSGINDEX:Ljava/lang/String; = ""

.field public static final DEFAULT_RESULTSTATUS:Ljava/lang/Integer;

.field private static final serialVersionUID:J


# instance fields
.field public final diplayTips:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final memo:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final msgId:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final msgIndex:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final resultStatus:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x6d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->DEFAULT_RESULTSTATUS:Ljava/lang/Integer;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->DEFAULT_MSGID:Ljava/lang/Long;

    return-void
.end method

.method private constructor <init>(Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult$Builder;)V
    .locals 6

    iget-object v1, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult$Builder;->resultStatus:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult$Builder;->memo:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult$Builder;->msgId:Ljava/lang/Long;

    iget-object v4, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult$Builder;->diplayTips:Ljava/lang/String;

    iget-object v5, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult$Builder;->msgIndex:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult$Builder;Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;-><init>(Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->resultStatus:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->memo:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->msgId:Ljava/lang/Long;

    iput-object p4, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->diplayTips:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->msgIndex:Ljava/lang/String;

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
    instance-of v2, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;

    iget-object v2, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->resultStatus:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->resultStatus:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->memo:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->memo:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->msgId:Ljava/lang/Long;

    iget-object v3, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->msgId:Ljava/lang/Long;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->diplayTips:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->diplayTips:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->msgIndex:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->msgIndex:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->hashCode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->resultStatus:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->resultStatus:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->memo:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->memo:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->msgId:Ljava/lang/Long;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->msgId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->diplayTips:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->diplayTips:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->msgIndex:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->msgIndex:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatClientMessageResult;->hashCode:I

    :cond_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_3
.end method

.class public final Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;
.super Lcom/squareup/wire/Message;


# static fields
.field public static final DEFAULT_ACTION:Ljava/lang/Integer;

.field public static final DEFAULT_BIZ_MEMO:Ljava/lang/String; = ""

.field public static final DEFAULT_BIZ_REMIND:Ljava/lang/String; = ""

.field public static final DEFAULT_BIZ_TYPE:Ljava/lang/String; = ""

.field public static final DEFAULT_CLIENT_MSG_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_CREATE_TIME:Ljava/lang/Long;

.field public static final DEFAULT_EGG:Ljava/lang/String; = ""

.field public static final DEFAULT_FROM_LOGIN_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_FROM_U_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_HINT_MEMO:Ljava/lang/String; = ""

.field public static final DEFAULT_LINK:Ljava/lang/String; = ""

.field public static final DEFAULT_MSGINDEX:Ljava/lang/String; = ""

.field public static final DEFAULT_MSG_ID:Ljava/lang/Long;

.field public static final DEFAULT_READ:Ljava/lang/String; = ""

.field public static final DEFAULT_RECENT:Ljava/lang/String; = ""

.field public static final DEFAULT_RESOURCES:Lokio/ByteString;

.field public static final DEFAULT_TEMPLATE_CODE:Ljava/lang/String; = ""

.field public static final DEFAULT_TEMPLATE_DATA:Ljava/lang/String; = ""

.field public static final DEFAULT_TO_LOGIN_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_TO_TYPE:Ljava/lang/String; = ""

.field public static final DEFAULT_TO_U_ID:Ljava/lang/String; = ""

.field private static final serialVersionUID:J


# instance fields
.field public final action:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x12
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final biz_memo:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xb
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final biz_remind:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x13
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final biz_type:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xc
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final client_msg_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final create_time:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xf
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final egg:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xd
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final from_login_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final from_u_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final hint_memo:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xa
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final last_msg:Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x15
    .end annotation
.end field

.field public final link:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xe
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final msgIndex:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x17
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final msg_id:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final next_msg:Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x16
    .end annotation
.end field

.field public final read:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x11
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final recent:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x10
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final resources:Lokio/ByteString;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x14
        type = .enum Lcom/squareup/wire/Message$Datatype;->BYTES:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final template_code:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final template_data:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x9
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final to_login_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final to_type:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final to_u_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->DEFAULT_MSG_ID:Ljava/lang/Long;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->DEFAULT_CREATE_TIME:Ljava/lang/Long;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->DEFAULT_ACTION:Ljava/lang/Integer;

    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    sput-object v0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->DEFAULT_RESOURCES:Lokio/ByteString;

    return-void
.end method

.method private constructor <init>(Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;)V
    .locals 25

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->from_u_id:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->from_login_id:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->to_u_id:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->to_login_id:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->to_type:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->msg_id:Ljava/lang/Long;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->client_msg_id:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->template_code:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->template_data:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->hint_memo:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->biz_memo:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->biz_type:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->egg:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->link:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->create_time:Ljava/lang/Long;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->recent:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->read:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->action:Ljava/lang/Integer;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->biz_remind:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->resources:Lokio/ByteString;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->last_msg:Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->next_msg:Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->msgIndex:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v24}, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lokio/ByteString;Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p1}, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;-><init>(Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lokio/ByteString;Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->from_u_id:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->from_login_id:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->to_u_id:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->to_login_id:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->to_type:Ljava/lang/String;

    iput-object p6, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->msg_id:Ljava/lang/Long;

    iput-object p7, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->client_msg_id:Ljava/lang/String;

    iput-object p8, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->template_code:Ljava/lang/String;

    iput-object p9, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->template_data:Ljava/lang/String;

    iput-object p10, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->hint_memo:Ljava/lang/String;

    iput-object p11, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->biz_memo:Ljava/lang/String;

    iput-object p12, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->biz_type:Ljava/lang/String;

    iput-object p13, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->egg:Ljava/lang/String;

    iput-object p14, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->link:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->create_time:Ljava/lang/Long;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->recent:Ljava/lang/String;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->read:Ljava/lang/String;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->action:Ljava/lang/Integer;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->biz_remind:Ljava/lang/String;

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->resources:Lokio/ByteString;

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->last_msg:Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->next_msg:Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;

    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->msgIndex:Ljava/lang/String;

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
    instance-of v2, p1, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;

    iget-object v2, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->from_u_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->from_u_id:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->from_login_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->from_login_id:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->to_u_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->to_u_id:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->to_login_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->to_login_id:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->to_type:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->to_type:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->msg_id:Ljava/lang/Long;

    iget-object v3, p1, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->msg_id:Ljava/lang/Long;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->client_msg_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->client_msg_id:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->template_code:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->template_code:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->template_data:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->template_data:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->hint_memo:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->hint_memo:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->biz_memo:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->biz_memo:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->biz_type:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->biz_type:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->egg:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->egg:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->link:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->link:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->create_time:Ljava/lang/Long;

    iget-object v3, p1, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->create_time:Ljava/lang/Long;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->recent:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->recent:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->read:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->read:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->action:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->action:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->biz_remind:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->biz_remind:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->resources:Lokio/ByteString;

    iget-object v3, p1, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->resources:Lokio/ByteString;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->last_msg:Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;

    iget-object v3, p1, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->last_msg:Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->next_msg:Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;

    iget-object v3, p1, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->next_msg:Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->msgIndex:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->msgIndex:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto/16 :goto_0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->hashCode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->from_u_id:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->from_u_id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->from_login_id:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->from_login_id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->to_u_id:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->to_u_id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->to_login_id:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->to_login_id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->to_type:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->to_type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->msg_id:Ljava/lang/Long;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->msg_id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->client_msg_id:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->client_msg_id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->template_code:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->template_code:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->template_data:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->template_data:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->hint_memo:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->hint_memo:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->biz_memo:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->biz_memo:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->biz_type:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->biz_type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->egg:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->egg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->link:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->link:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_d
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->create_time:Ljava/lang/Long;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->create_time:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_e
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->recent:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->recent:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_f
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->read:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->read:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_10
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->action:Ljava/lang/Integer;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->action:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_11
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->biz_remind:Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->biz_remind:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_12
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->resources:Lokio/ByteString;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->resources:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    :goto_13
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->last_msg:Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->last_msg:Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;

    invoke-virtual {v0}, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->hashCode()I

    move-result v0

    :goto_14
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->next_msg:Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->next_msg:Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;

    invoke-virtual {v0}, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->hashCode()I

    move-result v0

    :goto_15
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->msgIndex:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->msgIndex:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->hashCode:I

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

    goto/16 :goto_4

    :cond_7
    move v0, v1

    goto/16 :goto_5

    :cond_8
    move v0, v1

    goto/16 :goto_6

    :cond_9
    move v0, v1

    goto/16 :goto_7

    :cond_a
    move v0, v1

    goto/16 :goto_8

    :cond_b
    move v0, v1

    goto/16 :goto_9

    :cond_c
    move v0, v1

    goto/16 :goto_a

    :cond_d
    move v0, v1

    goto/16 :goto_b

    :cond_e
    move v0, v1

    goto/16 :goto_c

    :cond_f
    move v0, v1

    goto/16 :goto_d

    :cond_10
    move v0, v1

    goto/16 :goto_e

    :cond_11
    move v0, v1

    goto/16 :goto_f

    :cond_12
    move v0, v1

    goto/16 :goto_10

    :cond_13
    move v0, v1

    goto :goto_11

    :cond_14
    move v0, v1

    goto :goto_12

    :cond_15
    move v0, v1

    goto :goto_13

    :cond_16
    move v0, v1

    goto :goto_14

    :cond_17
    move v0, v1

    goto :goto_15
.end method

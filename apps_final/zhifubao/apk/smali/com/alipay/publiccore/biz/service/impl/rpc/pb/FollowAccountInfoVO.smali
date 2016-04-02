.class public final Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;
.super Lcom/squareup/wire/Message;
.source "FollowAccountInfoVO.java"


# static fields
.field public static final DEFAULT_ACCEPTMSG:Ljava/lang/Boolean;

.field public static final DEFAULT_AVATAR:Ljava/lang/String; = ""

.field public static final DEFAULT_DISTURB:Ljava/lang/Boolean;

.field public static final DEFAULT_FOLLOWOBJECTID:Ljava/lang/String; = ""

.field public static final DEFAULT_FOLLOWTYPE:Ljava/lang/String; = ""

.field public static final DEFAULT_GMTFOLLOWTIME:Ljava/lang/Long;

.field public static final DEFAULT_GOTOAPPURI:Ljava/lang/String; = ""

.field public static final DEFAULT_ISFOLLOW:Ljava/lang/Boolean;

.field public static final DEFAULT_LATESTMSG:Ljava/lang/String; = ""

.field public static final DEFAULT_LATESTMSGTIME:Ljava/lang/Long;

.field public static final DEFAULT_MSGNOTETYPE:Ljava/lang/String; = ""

.field public static final DEFAULT_NAME:Ljava/lang/String; = ""

.field public static final DEFAULT_PLUGINTYPE:Ljava/lang/String; = ""

.field public static final DEFAULT_PUBLICCHANNEL:Ljava/lang/String; = ""

.field public static final DEFAULT_UNREADMSGCOUNT:Ljava/lang/Integer;

.field public static final DEFAULT_VIP:Ljava/lang/String; = ""

.field private static final serialVersionUID:J


# instance fields
.field public final acceptMsg:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xd
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final avatar:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final disturb:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xc
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final followObjectId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final followType:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final gmtFollowTime:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xf
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final gotoAppUri:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xa
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final isFollow:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final latestMsg:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final latestMsgTime:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x10
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final msgNoteType:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final name:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final operateProperties:Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xb
    .end annotation
.end field

.field public final pluginType:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x9
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final publicChannel:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xe
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final unReadMsgCount:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final vip:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x11
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 19
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->DEFAULT_ISFOLLOW:Ljava/lang/Boolean;

    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->DEFAULT_UNREADMSGCOUNT:Ljava/lang/Integer;

    .line 26
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->DEFAULT_DISTURB:Ljava/lang/Boolean;

    .line 27
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->DEFAULT_ACCEPTMSG:Ljava/lang/Boolean;

    .line 29
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->DEFAULT_GMTFOLLOWTIME:Ljava/lang/Long;

    .line 30
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->DEFAULT_LATESTMSGTIME:Ljava/lang/Long;

    .line 13
    return-void
.end method

.method private constructor <init>(Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;)V
    .locals 19

    .prologue
    .line 105
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;->followObjectId:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;->avatar:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;->isFollow:Ljava/lang/Boolean;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;->latestMsg:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;->unReadMsgCount:Ljava/lang/Integer;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;->msgNoteType:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;->followType:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;->pluginType:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;->gotoAppUri:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;->operateProperties:Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;->disturb:Ljava/lang/Boolean;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;->acceptMsg:Ljava/lang/Boolean;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;->publicChannel:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;->gmtFollowTime:Ljava/lang/Long;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;->latestMsgTime:Ljava/lang/Long;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;->vip:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v18}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    .line 106
    invoke-virtual/range {p0 .. p1}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 107
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;-><init>(Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->followObjectId:Ljava/lang/String;

    .line 86
    iput-object p2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->name:Ljava/lang/String;

    .line 87
    iput-object p3, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->avatar:Ljava/lang/String;

    .line 88
    iput-object p4, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->isFollow:Ljava/lang/Boolean;

    .line 89
    iput-object p5, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->latestMsg:Ljava/lang/String;

    .line 90
    iput-object p6, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->unReadMsgCount:Ljava/lang/Integer;

    .line 91
    iput-object p7, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->msgNoteType:Ljava/lang/String;

    .line 92
    iput-object p8, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->followType:Ljava/lang/String;

    .line 93
    iput-object p9, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->pluginType:Ljava/lang/String;

    .line 94
    iput-object p10, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->gotoAppUri:Ljava/lang/String;

    .line 95
    iput-object p11, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->operateProperties:Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;

    .line 96
    iput-object p12, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->disturb:Ljava/lang/Boolean;

    .line 97
    iput-object p13, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->acceptMsg:Ljava/lang/Boolean;

    .line 98
    iput-object p14, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->publicChannel:Ljava/lang/String;

    .line 99
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->gmtFollowTime:Ljava/lang/Long;

    .line 100
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->latestMsgTime:Ljava/lang/Long;

    .line 101
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->vip:Ljava/lang/String;

    .line 102
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 111
    if-ne p1, p0, :cond_1

    .line 130
    :cond_0
    :goto_0
    return v0

    .line 112
    :cond_1
    instance-of v2, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 113
    :cond_2
    check-cast p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;

    .line 114
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->followObjectId:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->followObjectId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 115
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->name:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 116
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->avatar:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->avatar:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 117
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->isFollow:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->isFollow:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 118
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->latestMsg:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->latestMsg:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 119
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->unReadMsgCount:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->unReadMsgCount:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 120
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->msgNoteType:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->msgNoteType:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 121
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->followType:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->followType:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 122
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->pluginType:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->pluginType:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 123
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->gotoAppUri:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->gotoAppUri:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 124
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->operateProperties:Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->operateProperties:Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 125
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->disturb:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->disturb:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 126
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->acceptMsg:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->acceptMsg:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 127
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->publicChannel:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->publicChannel:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 128
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->gmtFollowTime:Ljava/lang/Long;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->gmtFollowTime:Ljava/lang/Long;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 129
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->latestMsgTime:Ljava/lang/Long;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->latestMsgTime:Ljava/lang/Long;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 130
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->vip:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->vip:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    .line 114
    goto/16 :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 135
    iget v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->hashCode:I

    .line 136
    if-nez v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->followObjectId:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->followObjectId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 138
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->name:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 139
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->avatar:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->avatar:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 140
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->isFollow:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->isFollow:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 141
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->latestMsg:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->latestMsg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 142
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->unReadMsgCount:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->unReadMsgCount:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 143
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->msgNoteType:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->msgNoteType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    .line 144
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->followType:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->followType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    .line 145
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->pluginType:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->pluginType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v2

    .line 146
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->gotoAppUri:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->gotoAppUri:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v2

    .line 147
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->operateProperties:Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->operateProperties:Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;

    invoke-virtual {v0}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;->hashCode()I

    move-result v0

    :goto_a
    add-int/2addr v0, v2

    .line 148
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->disturb:Ljava/lang/Boolean;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->disturb:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_b
    add-int/2addr v0, v2

    .line 149
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->acceptMsg:Ljava/lang/Boolean;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->acceptMsg:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_c
    add-int/2addr v0, v2

    .line 150
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->publicChannel:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->publicChannel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_d
    add-int/2addr v0, v2

    .line 151
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->gmtFollowTime:Ljava/lang/Long;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->gmtFollowTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_e
    add-int/2addr v0, v2

    .line 152
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->latestMsgTime:Ljava/lang/Long;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->latestMsgTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_f
    add-int/2addr v0, v2

    .line 153
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->vip:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->vip:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 154
    iput v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;->hashCode:I

    .line 156
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 137
    goto/16 :goto_0

    :cond_3
    move v0, v1

    .line 138
    goto/16 :goto_1

    :cond_4
    move v0, v1

    .line 139
    goto/16 :goto_2

    :cond_5
    move v0, v1

    .line 140
    goto/16 :goto_3

    :cond_6
    move v0, v1

    .line 141
    goto/16 :goto_4

    :cond_7
    move v0, v1

    .line 142
    goto/16 :goto_5

    :cond_8
    move v0, v1

    .line 143
    goto/16 :goto_6

    :cond_9
    move v0, v1

    .line 144
    goto/16 :goto_7

    :cond_a
    move v0, v1

    .line 145
    goto/16 :goto_8

    :cond_b
    move v0, v1

    .line 146
    goto :goto_9

    :cond_c
    move v0, v1

    .line 147
    goto :goto_a

    :cond_d
    move v0, v1

    .line 148
    goto :goto_b

    :cond_e
    move v0, v1

    .line 149
    goto :goto_c

    :cond_f
    move v0, v1

    .line 150
    goto :goto_d

    :cond_10
    move v0, v1

    .line 151
    goto :goto_e

    :cond_11
    move v0, v1

    .line 152
    goto :goto_f
.end method

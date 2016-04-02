.class public final Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;
.super Lcom/squareup/wire/Message;


# static fields
.field public static final DEFAULT_DISPLAYOSPMERCHANTS:Ljava/lang/Boolean;

.field public static final DEFAULT_DISPLAYPAYCHANNEL:Ljava/lang/Boolean;

.field public static final DEFAULT_FACEPAYSWITCH:Ljava/lang/Boolean;

.field public static final DEFAULT_NOTICEAUTHPERIOD:Ljava/lang/Integer;

.field public static final DEFAULT_NOTICEAUTHTXT:Ljava/lang/String; = ""

.field public static final DEFAULT_PAYCHANNELMODEL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_QUERYORNO:Ljava/lang/Boolean;

.field public static final DEFAULT_RESULTCODE:Ljava/lang/String; = ""

.field public static final DEFAULT_RESULTDES:Ljava/lang/String; = ""

.field public static final DEFAULT_SHOULDNOTICEAUTH:Ljava/lang/Boolean;

.field public static final DEFAULT_SUCCESS:Ljava/lang/Boolean;

.field private static final serialVersionUID:J


# instance fields
.field public final displayOspMerchants:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final displayPayChannel:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x9
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final facePaySwitch:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xa
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final noticeAuthPeriod:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final noticeAuthTxt:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final payChannelModel:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        messageType = Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;
        tag = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;",
            ">;"
        }
    .end annotation
.end field

.field public final queryOrNo:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final resultCode:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final resultDes:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final shouldNoticeAuth:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final success:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->DEFAULT_SUCCESS:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->DEFAULT_QUERYORNO:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->DEFAULT_DISPLAYOSPMERCHANTS:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->DEFAULT_SHOULDNOTICEAUTH:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->DEFAULT_NOTICEAUTHPERIOD:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->DEFAULT_DISPLAYPAYCHANNEL:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->DEFAULT_FACEPAYSWITCH:Ljava/lang/Boolean;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->DEFAULT_PAYCHANNELMODEL:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes$Builder;)V
    .locals 12

    iget-object v1, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes$Builder;->success:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes$Builder;->resultCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes$Builder;->resultDes:Ljava/lang/String;

    iget-object v4, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes$Builder;->queryOrNo:Ljava/lang/Boolean;

    iget-object v5, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes$Builder;->displayOspMerchants:Ljava/lang/Boolean;

    iget-object v6, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes$Builder;->shouldNoticeAuth:Ljava/lang/Boolean;

    iget-object v7, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes$Builder;->noticeAuthPeriod:Ljava/lang/Integer;

    iget-object v8, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes$Builder;->noticeAuthTxt:Ljava/lang/String;

    iget-object v9, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes$Builder;->displayPayChannel:Ljava/lang/Boolean;

    iget-object v10, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes$Builder;->facePaySwitch:Ljava/lang/Boolean;

    iget-object v11, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes$Builder;->payChannelModel:Ljava/util/List;

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes$Builder;Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;-><init>(Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    iput-object p1, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->success:Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->resultCode:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->resultDes:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->queryOrNo:Ljava/lang/Boolean;

    iput-object p5, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->displayOspMerchants:Ljava/lang/Boolean;

    iput-object p6, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->shouldNoticeAuth:Ljava/lang/Boolean;

    iput-object p7, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->noticeAuthPeriod:Ljava/lang/Integer;

    iput-object p8, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->noticeAuthTxt:Ljava/lang/String;

    iput-object p9, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->displayPayChannel:Ljava/lang/Boolean;

    iput-object p10, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->facePaySwitch:Ljava/lang/Boolean;

    invoke-static {p11}, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->payChannelModel:Ljava/util/List;

    return-void
.end method

.method static synthetic access$0(Ljava/util/List;)Ljava/util/List;
    .locals 1

    invoke-static {p0}, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
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
    instance-of v2, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;

    iget-object v2, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->success:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->success:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->resultCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->resultCode:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->resultDes:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->resultDes:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->queryOrNo:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->queryOrNo:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->displayOspMerchants:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->displayOspMerchants:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->shouldNoticeAuth:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->shouldNoticeAuth:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->noticeAuthPeriod:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->noticeAuthPeriod:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->noticeAuthTxt:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->noticeAuthTxt:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->displayPayChannel:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->displayPayChannel:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->facePaySwitch:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->facePaySwitch:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->payChannelModel:Ljava/util/List;

    iget-object v3, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->payChannelModel:Ljava/util/List;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->hashCode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->success:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->success:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->resultCode:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->resultCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->resultDes:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->resultDes:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->queryOrNo:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->queryOrNo:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->displayOspMerchants:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->displayOspMerchants:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->shouldNoticeAuth:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->shouldNoticeAuth:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->noticeAuthPeriod:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->noticeAuthPeriod:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->noticeAuthTxt:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->noticeAuthTxt:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->displayPayChannel:Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->displayPayChannel:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->facePaySwitch:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->facePaySwitch:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x25

    iget-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->payChannelModel:Ljava/util/List;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->payChannelModel:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->hashCode:I

    :cond_1
    return v0

    :cond_2
    move v0, v1

    goto/16 :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_3

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
    const/4 v0, 0x1

    goto :goto_9
.end method

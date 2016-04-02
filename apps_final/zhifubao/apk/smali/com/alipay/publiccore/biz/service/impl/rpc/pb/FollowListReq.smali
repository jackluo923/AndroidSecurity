.class public final Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;
.super Lcom/squareup/wire/Message;
.source "FollowListReq.java"


# static fields
.field public static final DEFAULT_CHANNELPACKAGE:Ljava/lang/String; = ""

.field public static final DEFAULT_CLIENTVERSION:Ljava/lang/String; = ""

.field public static final DEFAULT_PAGENUM:Ljava/lang/Integer;

.field public static final DEFAULT_PAGESIZE:Ljava/lang/Integer;

.field public static final DEFAULT_PUBLICIDS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_SYNCBIZTYPE:Ljava/lang/String; = ""

.field public static final DEFAULT_TERMINAL:Ljava/lang/String; = ""

.field public static final DEFAULT_TOTALSIZE:Ljava/lang/Integer;

.field private static final serialVersionUID:J


# instance fields
.field public final channelPackage:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final clientVersion:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final pageNum:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final pageSize:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final publicIds:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final syncBizType:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final terminal:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final totalSize:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->DEFAULT_PUBLICIDS:Ljava/util/List;

    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->DEFAULT_PAGENUM:Ljava/lang/Integer;

    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->DEFAULT_PAGESIZE:Ljava/lang/Integer;

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->DEFAULT_TOTALSIZE:Ljava/lang/Integer;

    .line 14
    return-void
.end method

.method private constructor <init>(Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq$Builder;)V
    .locals 9

    .prologue
    .line 62
    iget-object v1, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq$Builder;->terminal:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq$Builder;->clientVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq$Builder;->channelPackage:Ljava/lang/String;

    iget-object v4, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq$Builder;->syncBizType:Ljava/lang/String;

    iget-object v5, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq$Builder;->publicIds:Ljava/util/List;

    iget-object v6, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq$Builder;->pageNum:Ljava/lang/Integer;

    iget-object v7, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq$Builder;->pageSize:Ljava/lang/Integer;

    iget-object v8, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq$Builder;->totalSize:Ljava/lang/Integer;

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 63
    invoke-virtual {p0, p1}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 64
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq$Builder;Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;-><init>(Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->terminal:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->clientVersion:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->channelPackage:Ljava/lang/String;

    .line 54
    iput-object p4, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->syncBizType:Ljava/lang/String;

    .line 55
    invoke-static {p5}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->publicIds:Ljava/util/List;

    .line 56
    iput-object p6, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->pageNum:Ljava/lang/Integer;

    .line 57
    iput-object p7, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->pageSize:Ljava/lang/Integer;

    .line 58
    iput-object p8, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->totalSize:Ljava/lang/Integer;

    .line 59
    return-void
.end method

.method static synthetic access$0(Ljava/util/List;)Ljava/util/List;
    .locals 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 68
    if-ne p1, p0, :cond_1

    .line 78
    :cond_0
    :goto_0
    return v0

    .line 69
    :cond_1
    instance-of v2, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 70
    :cond_2
    check-cast p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;

    .line 71
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->terminal:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->terminal:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 72
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->clientVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->clientVersion:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 73
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->channelPackage:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->channelPackage:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 74
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->syncBizType:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->syncBizType:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 75
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->publicIds:Ljava/util/List;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->publicIds:Ljava/util/List;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 76
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->pageNum:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->pageNum:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 77
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->pageSize:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->pageSize:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 78
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->totalSize:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->totalSize:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    .line 71
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 83
    iget v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->hashCode:I

    .line 84
    if-nez v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->terminal:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->terminal:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 86
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->clientVersion:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->clientVersion:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 87
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->channelPackage:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->channelPackage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 88
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->syncBizType:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->syncBizType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 89
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->publicIds:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->publicIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 90
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->pageNum:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->pageNum:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 91
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->pageSize:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->pageSize:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    .line 92
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->totalSize:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->totalSize:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 93
    iput v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->hashCode:I

    .line 95
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 85
    goto :goto_0

    :cond_3
    move v0, v1

    .line 86
    goto :goto_1

    :cond_4
    move v0, v1

    .line 87
    goto :goto_2

    :cond_5
    move v0, v1

    .line 88
    goto :goto_3

    .line 89
    :cond_6
    const/4 v0, 0x1

    goto :goto_4

    :cond_7
    move v0, v1

    .line 90
    goto :goto_5

    :cond_8
    move v0, v1

    .line 91
    goto :goto_6
.end method

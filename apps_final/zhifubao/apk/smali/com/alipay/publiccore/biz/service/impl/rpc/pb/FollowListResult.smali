.class public final Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;
.super Lcom/squareup/wire/Message;
.source "FollowListResult.java"


# static fields
.field public static final DEFAULT_DYNAMICCONFIGUID:Ljava/lang/String; = ""

.field public static final DEFAULT_FOLLOWACCOUNTLIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_PAGENUM:Ljava/lang/Integer;

.field public static final DEFAULT_PAGESIZE:Ljava/lang/Integer;

.field public static final DEFAULT_RESULTCODE:Ljava/lang/Integer;

.field public static final DEFAULT_RESULTMSG:Ljava/lang/String; = ""

.field public static final DEFAULT_ROWCOUNT:Ljava/lang/Integer;

.field public static final DEFAULT_SUCCESS:Ljava/lang/Boolean;

.field public static final DEFAULT_SYNCMAXOPLOGID:Ljava/lang/String; = ""

.field public static final DEFAULT_USERID:Ljava/lang/String; = ""

.field private static final serialVersionUID:J


# instance fields
.field public final dynamicConfigUid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final followAccountList:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        messageType = Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;
        tag = 0x4
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;",
            ">;"
        }
    .end annotation
.end field

.field public final pageNum:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final pageSize:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final resultCode:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x9
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final resultMsg:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xa
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final rowCount:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final success:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final syncMaxOpLogId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final userId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
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

    sput-object v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->DEFAULT_FOLLOWACCOUNTLIST:Ljava/util/List;

    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->DEFAULT_PAGENUM:Ljava/lang/Integer;

    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->DEFAULT_PAGESIZE:Ljava/lang/Integer;

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->DEFAULT_ROWCOUNT:Ljava/lang/Integer;

    .line 25
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->DEFAULT_SUCCESS:Ljava/lang/Boolean;

    .line 26
    const/16 v0, 0xc8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->DEFAULT_RESULTCODE:Ljava/lang/Integer;

    .line 15
    return-void
.end method

.method private constructor <init>(Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult$Builder;)V
    .locals 11

    .prologue
    .line 73
    iget-object v1, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult$Builder;->dynamicConfigUid:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult$Builder;->userId:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult$Builder;->syncMaxOpLogId:Ljava/lang/String;

    iget-object v4, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult$Builder;->followAccountList:Ljava/util/List;

    iget-object v5, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult$Builder;->pageNum:Ljava/lang/Integer;

    iget-object v6, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult$Builder;->pageSize:Ljava/lang/Integer;

    iget-object v7, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult$Builder;->rowCount:Ljava/lang/Integer;

    iget-object v8, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult$Builder;->success:Ljava/lang/Boolean;

    iget-object v9, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult$Builder;->resultCode:Ljava/lang/Integer;

    iget-object v10, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult$Builder;->resultMsg:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0, p1}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 75
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult$Builder;Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;-><init>(Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowAccountInfoVO;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->dynamicConfigUid:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->userId:Ljava/lang/String;

    .line 62
    iput-object p3, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->syncMaxOpLogId:Ljava/lang/String;

    .line 63
    invoke-static {p4}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->followAccountList:Ljava/util/List;

    .line 64
    iput-object p5, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->pageNum:Ljava/lang/Integer;

    .line 65
    iput-object p6, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->pageSize:Ljava/lang/Integer;

    .line 66
    iput-object p7, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->rowCount:Ljava/lang/Integer;

    .line 67
    iput-object p8, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->success:Ljava/lang/Boolean;

    .line 68
    iput-object p9, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->resultCode:Ljava/lang/Integer;

    .line 69
    iput-object p10, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->resultMsg:Ljava/lang/String;

    .line 70
    return-void
.end method

.method static synthetic access$0(Ljava/util/List;)Ljava/util/List;
    .locals 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 79
    if-ne p1, p0, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v0

    .line 80
    :cond_1
    instance-of v2, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 81
    :cond_2
    check-cast p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;

    .line 82
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->dynamicConfigUid:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->dynamicConfigUid:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 83
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->userId:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->userId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 84
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->syncMaxOpLogId:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->syncMaxOpLogId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 85
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->followAccountList:Ljava/util/List;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->followAccountList:Ljava/util/List;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 86
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->pageNum:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->pageNum:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 87
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->pageSize:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->pageSize:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 88
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->rowCount:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->rowCount:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 89
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->success:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->success:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 90
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->resultCode:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->resultCode:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 91
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->resultMsg:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->resultMsg:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    .line 82
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 96
    iget v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->hashCode:I

    .line 97
    if-nez v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->dynamicConfigUid:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->dynamicConfigUid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 99
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->userId:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->userId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 100
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->syncMaxOpLogId:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->syncMaxOpLogId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 101
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->followAccountList:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->followAccountList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 102
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->pageNum:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->pageNum:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 103
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->pageSize:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->pageSize:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 104
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->rowCount:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->rowCount:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    .line 105
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->success:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->success:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    .line 106
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->resultCode:Ljava/lang/Integer;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->resultCode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v2

    .line 107
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->resultMsg:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->resultMsg:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 108
    iput v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListResult;->hashCode:I

    .line 110
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 98
    goto :goto_0

    :cond_3
    move v0, v1

    .line 99
    goto :goto_1

    :cond_4
    move v0, v1

    .line 100
    goto :goto_2

    .line 101
    :cond_5
    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    move v0, v1

    .line 102
    goto :goto_4

    :cond_7
    move v0, v1

    .line 103
    goto :goto_5

    :cond_8
    move v0, v1

    .line 104
    goto :goto_6

    :cond_9
    move v0, v1

    .line 105
    goto :goto_7

    :cond_a
    move v0, v1

    .line 106
    goto :goto_8
.end method

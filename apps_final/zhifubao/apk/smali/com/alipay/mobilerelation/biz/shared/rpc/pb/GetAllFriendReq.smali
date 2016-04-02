.class public final Lcom/alipay/mobilerelation/biz/shared/rpc/pb/GetAllFriendReq;
.super Lcom/squareup/wire/Message;


# static fields
.field public static final DEFAULT_EXTVERSION:Ljava/lang/Long;

.field public static final DEFAULT_VERSION:Ljava/lang/Long;

.field private static final serialVersionUID:J


# instance fields
.field public final extVersion:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final version:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/GetAllFriendReq;->DEFAULT_VERSION:Ljava/lang/Long;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/GetAllFriendReq;->DEFAULT_EXTVERSION:Ljava/lang/Long;

    return-void
.end method

.method private constructor <init>(Lcom/alipay/mobilerelation/biz/shared/rpc/pb/GetAllFriendReq$Builder;)V
    .locals 2

    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/GetAllFriendReq$Builder;->version:Ljava/lang/Long;

    iget-object v1, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/GetAllFriendReq$Builder;->extVersion:Ljava/lang/Long;

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/GetAllFriendReq;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    invoke-virtual {p0, p1}, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/GetAllFriendReq;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobilerelation/biz/shared/rpc/pb/GetAllFriendReq$Builder;Lcom/alipay/mobilerelation/biz/shared/rpc/pb/GetAllFriendReq;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/GetAllFriendReq;-><init>(Lcom/alipay/mobilerelation/biz/shared/rpc/pb/GetAllFriendReq$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/GetAllFriendReq;->version:Ljava/lang/Long;

    iput-object p2, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/GetAllFriendReq;->extVersion:Ljava/lang/Long;

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
    instance-of v2, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/GetAllFriendReq;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/GetAllFriendReq;

    iget-object v2, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/GetAllFriendReq;->version:Ljava/lang/Long;

    iget-object v3, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/GetAllFriendReq;->version:Ljava/lang/Long;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/GetAllFriendReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/GetAllFriendReq;->extVersion:Ljava/lang/Long;

    iget-object v3, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/GetAllFriendReq;->extVersion:Ljava/lang/Long;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/GetAllFriendReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/GetAllFriendReq;->hashCode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/GetAllFriendReq;->version:Ljava/lang/Long;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/GetAllFriendReq;->version:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/GetAllFriendReq;->extVersion:Ljava/lang/Long;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/GetAllFriendReq;->extVersion:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/GetAllFriendReq;->hashCode:I

    :cond_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

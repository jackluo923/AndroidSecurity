.class public final Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;
.super Lcom/squareup/wire/Message;


# static fields
.field public static final DEFAULT_APPUPGRADELIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppVersion;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_PLATFORM:Ljava/lang/String; = ""

.field public static final DEFAULT_PRE:Ljava/lang/Boolean;

.field public static final DEFAULT_STAGELIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_WIDTH:Ljava/lang/Integer;

.field private static final serialVersionUID:J


# instance fields
.field public final appUpgradeList:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        messageType = Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppVersion;
        tag = 0x5
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppVersion;",
            ">;"
        }
    .end annotation
.end field

.field public final platform:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final pre:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final stageList:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x4
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

.field public final width:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;->DEFAULT_PRE:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;->DEFAULT_WIDTH:Ljava/lang/Integer;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;->DEFAULT_STAGELIST:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;->DEFAULT_APPUPGRADELIST:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq$Builder;)V
    .locals 6

    iget-object v1, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq$Builder;->platform:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq$Builder;->pre:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq$Builder;->width:Ljava/lang/Integer;

    iget-object v4, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq$Builder;->stageList:Ljava/util/List;

    iget-object v5, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq$Builder;->appUpgradeList:Ljava/util/List;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq$Builder;Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;-><init>(Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppVersion;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;->platform:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;->pre:Ljava/lang/Boolean;

    iput-object p3, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;->width:Ljava/lang/Integer;

    invoke-static {p4}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;->stageList:Ljava/util/List;

    invoke-static {p5}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;->appUpgradeList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$0(Ljava/util/List;)Ljava/util/List;
    .locals 1

    invoke-static {p0}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;->copyOf(Ljava/util/List;)Ljava/util/List;

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
    instance-of v2, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;

    iget-object v2, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;->platform:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;->platform:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;->pre:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;->pre:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;->width:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;->width:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;->stageList:Ljava/util/List;

    iget-object v3, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;->stageList:Ljava/util/List;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;->appUpgradeList:Ljava/util/List;

    iget-object v3, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;->appUpgradeList:Ljava/util/List;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;->hashCode:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;->platform:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;->platform:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;->pre:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;->pre:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;->width:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;->width:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;->stageList:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;->stageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;->appUpgradeList:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;->appUpgradeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    iput v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListReq;->hashCode:I

    :cond_2
    return v0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2
.end method

.class public final Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes;
.super Lcom/squareup/wire/Message;


# static fields
.field public static final DEFAULT_RESULTCODE:Ljava/lang/Integer;

.field public static final DEFAULT_RESULTMSG:Ljava/lang/String; = ""

.field public static final DEFAULT_STAGELIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field public final resultCode:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final resultMsg:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final stageList:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        messageType = Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;
        tag = 0x3
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes;->DEFAULT_RESULTCODE:Ljava/lang/Integer;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes;->DEFAULT_STAGELIST:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes$Builder;)V
    .locals 3

    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes$Builder;->resultCode:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes$Builder;->resultMsg:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes$Builder;->stageList:Ljava/util/List;

    invoke-direct {p0, v0, v1, v2}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes$Builder;Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes;-><init>(Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes;->resultCode:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes;->resultMsg:Ljava/lang/String;

    invoke-static {p3}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes;->stageList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$0(Ljava/util/List;)Ljava/util/List;
    .locals 1

    invoke-static {p0}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes;->copyOf(Ljava/util/List;)Ljava/util/List;

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
    instance-of v2, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes;

    iget-object v2, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes;->resultCode:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes;->resultCode:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes;->resultMsg:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes;->resultMsg:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes;->stageList:Ljava/util/List;

    iget-object v3, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes;->stageList:Ljava/util/List;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes;->hashCode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes;->resultCode:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes;->resultCode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes;->resultMsg:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes;->resultMsg:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes;->stageList:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes;->stageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppListRes;->hashCode:I

    :cond_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

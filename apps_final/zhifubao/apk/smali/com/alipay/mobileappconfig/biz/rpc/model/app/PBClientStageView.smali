.class public final Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;
.super Lcom/squareup/wire/Message;


# static fields
.field public static final DEFAULT_APPLIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_CONFIGMAP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBMap;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_DATAVERSION:Ljava/lang/String; = ""

.field public static final DEFAULT_PARENTSTAGECODE:Ljava/lang/String; = ""

.field public static final DEFAULT_STAGECODE:Ljava/lang/String; = ""

.field private static final serialVersionUID:J


# instance fields
.field public final appList:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        messageType = Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;
        tag = 0x4
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;",
            ">;"
        }
    .end annotation
.end field

.field public final configMap:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        messageType = Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBMap;
        tag = 0x5
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBMap;",
            ">;"
        }
    .end annotation
.end field

.field public final dataVersion:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final parentStageCode:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final stageCode:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;->DEFAULT_APPLIST:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;->DEFAULT_CONFIGMAP:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView$Builder;)V
    .locals 6

    iget-object v1, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView$Builder;->stageCode:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView$Builder;->parentStageCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView$Builder;->dataVersion:Ljava/lang/String;

    iget-object v4, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView$Builder;->appList:Ljava/util/List;

    iget-object v5, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView$Builder;->configMap:Ljava/util/List;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView$Builder;Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;-><init>(Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBMap;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;->stageCode:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;->parentStageCode:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;->dataVersion:Ljava/lang/String;

    invoke-static {p4}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;->appList:Ljava/util/List;

    invoke-static {p5}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;->configMap:Ljava/util/List;

    return-void
.end method

.method static synthetic access$0(Ljava/util/List;)Ljava/util/List;
    .locals 1

    invoke-static {p0}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;->copyOf(Ljava/util/List;)Ljava/util/List;

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
    instance-of v2, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;

    iget-object v2, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;->stageCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;->stageCode:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;->parentStageCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;->parentStageCode:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;->dataVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;->dataVersion:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;->appList:Ljava/util/List;

    iget-object v3, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;->appList:Ljava/util/List;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;->configMap:Ljava/util/List;

    iget-object v3, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;->configMap:Ljava/util/List;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;->equals(Ljava/util/List;Ljava/util/List;)Z

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

    iget v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;->hashCode:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;->stageCode:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;->stageCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;->parentStageCode:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;->parentStageCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;->dataVersion:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;->dataVersion:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;->appList:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;->appList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;->configMap:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;->configMap:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    iput v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientStageView;->hashCode:I

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

.class public final Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;
.super Lcom/squareup/wire/Message;
.source "OperatePropertiesVO.java"


# static fields
.field public static final DEFAULT_DEFAULTORDER:Ljava/lang/String; = ""

.field public static final DEFAULT_DELETETYPE:Ljava/lang/String; = ""

.field public static final DEFAULT_TOPTYPE:Ljava/lang/String; = ""

.field private static final serialVersionUID:J


# instance fields
.field public final defaultOrder:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final deleteType:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final topType:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO$Builder;)V
    .locals 3

    .prologue
    .line 33
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO$Builder;->topType:Ljava/lang/String;

    iget-object v1, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO$Builder;->deleteType:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO$Builder;->defaultOrder:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0, p1}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 35
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO$Builder;Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;-><init>(Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;->topType:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;->deleteType:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;->defaultOrder:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 39
    if-ne p1, p0, :cond_1

    .line 44
    :cond_0
    :goto_0
    return v0

    .line 40
    :cond_1
    instance-of v2, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 41
    :cond_2
    check-cast p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;

    .line 42
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;->topType:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;->topType:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 43
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;->deleteType:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;->deleteType:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 44
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;->defaultOrder:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;->defaultOrder:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    .line 42
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 49
    iget v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;->hashCode:I

    .line 50
    if-nez v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;->topType:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;->topType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 52
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;->deleteType:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;->deleteType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 53
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;->defaultOrder:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;->defaultOrder:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 54
    iput v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;->hashCode:I

    .line 56
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 51
    goto :goto_0

    :cond_3
    move v0, v1

    .line 52
    goto :goto_1
.end method

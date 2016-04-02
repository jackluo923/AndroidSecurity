.class public final Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBMap;
.super Lcom/squareup/wire/Message;


# static fields
.field public static final DEFAULT_KEY:Ljava/lang/String; = ""

.field public static final DEFAULT_VALUE:Ljava/lang/String; = ""

.field private static final serialVersionUID:J


# instance fields
.field public final key:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final value:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBMap$Builder;)V
    .locals 2

    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBMap$Builder;->key:Ljava/lang/String;

    iget-object v1, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBMap$Builder;->value:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBMap;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBMap;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBMap$Builder;Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBMap;-><init>(Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBMap$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBMap;->key:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBMap;->value:Ljava/lang/String;

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
    instance-of v2, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBMap;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBMap;

    iget-object v2, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBMap;->key:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBMap;->key:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBMap;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBMap;->value:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBMap;->value:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBMap;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBMap;->hashCode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBMap;->key:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBMap;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBMap;->value:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBMap;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBMap;->hashCode:I

    :cond_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

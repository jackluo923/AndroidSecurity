.class public final Lcom/alipay/mobilecashier/service/rpc/MspRes;
.super Lcom/squareup/wire/Message;
.source "MspRes.java"


# static fields
.field public static final DEFAULT_API_NM:Ljava/lang/String; = ""

.field public static final DEFAULT_API_NSP:Ljava/lang/String; = ""

.field public static final DEFAULT_API_VER:Ljava/lang/String; = ""

.field public static final DEFAULT_CODE:Ljava/lang/String; = ""

.field public static final DEFAULT_ERR_MSG:Ljava/lang/String; = ""

.field public static final DEFAULT_PARAMS:Ljava/lang/String; = ""


# instance fields
.field public final api_nm:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final api_nsp:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final api_ver:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final code:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final err_msg:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final params:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/alipay/mobilecashier/service/rpc/MspRes$Builder;)V
    .locals 7

    .prologue
    .line 60
    iget-object v1, p1, Lcom/alipay/mobilecashier/service/rpc/MspRes$Builder;->api_nsp:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobilecashier/service/rpc/MspRes$Builder;->api_nm:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilecashier/service/rpc/MspRes$Builder;->api_ver:Ljava/lang/String;

    iget-object v4, p1, Lcom/alipay/mobilecashier/service/rpc/MspRes$Builder;->params:Ljava/lang/String;

    iget-object v5, p1, Lcom/alipay/mobilecashier/service/rpc/MspRes$Builder;->code:Ljava/lang/String;

    iget-object v6, p1, Lcom/alipay/mobilecashier/service/rpc/MspRes$Builder;->err_msg:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobilecashier/service/rpc/MspRes;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0, p1}, Lcom/alipay/mobilecashier/service/rpc/MspRes;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 62
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobilecashier/service/rpc/MspRes$Builder;B)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/alipay/mobilecashier/service/rpc/MspRes;-><init>(Lcom/alipay/mobilecashier/service/rpc/MspRes$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes;->api_nsp:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes;->api_nm:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes;->api_ver:Ljava/lang/String;

    .line 54
    iput-object p4, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes;->params:Ljava/lang/String;

    .line 55
    iput-object p5, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes;->code:Ljava/lang/String;

    .line 56
    iput-object p6, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes;->err_msg:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 66
    if-ne p1, p0, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v0

    .line 67
    :cond_1
    instance-of v2, p1, Lcom/alipay/mobilecashier/service/rpc/MspRes;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 68
    :cond_2
    check-cast p1, Lcom/alipay/mobilecashier/service/rpc/MspRes;

    .line 69
    iget-object v2, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes;->api_nsp:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilecashier/service/rpc/MspRes;->api_nsp:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilecashier/service/rpc/MspRes;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 70
    iget-object v2, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes;->api_nm:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilecashier/service/rpc/MspRes;->api_nm:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilecashier/service/rpc/MspRes;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 71
    iget-object v2, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes;->api_ver:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilecashier/service/rpc/MspRes;->api_ver:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilecashier/service/rpc/MspRes;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 72
    iget-object v2, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes;->params:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilecashier/service/rpc/MspRes;->params:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilecashier/service/rpc/MspRes;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 73
    iget-object v2, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes;->code:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilecashier/service/rpc/MspRes;->code:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilecashier/service/rpc/MspRes;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 74
    iget-object v2, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes;->err_msg:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilecashier/service/rpc/MspRes;->err_msg:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilecashier/service/rpc/MspRes;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    .line 69
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 79
    iget v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes;->hashCode:I

    .line 80
    if-nez v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes;->api_nsp:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes;->api_nsp:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 82
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes;->api_nm:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes;->api_nm:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 83
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes;->api_ver:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes;->api_ver:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 84
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes;->params:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes;->params:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 85
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes;->code:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes;->code:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 86
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes;->err_msg:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes;->err_msg:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 87
    iput v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes;->hashCode:I

    .line 89
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 81
    goto :goto_0

    :cond_3
    move v0, v1

    .line 82
    goto :goto_1

    :cond_4
    move v0, v1

    .line 83
    goto :goto_2

    :cond_5
    move v0, v1

    .line 84
    goto :goto_3

    :cond_6
    move v0, v1

    .line 85
    goto :goto_4
.end method

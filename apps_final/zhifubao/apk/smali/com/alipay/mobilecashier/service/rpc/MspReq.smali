.class public final Lcom/alipay/mobilecashier/service/rpc/MspReq;
.super Lcom/squareup/wire/Message;
.source "MspReq.java"


# static fields
.field public static final DEFAULT_API_NM:Ljava/lang/String; = ""

.field public static final DEFAULT_API_NSP:Ljava/lang/String; = ""

.field public static final DEFAULT_API_VER:Ljava/lang/String; = ""

.field public static final DEFAULT_AUTH_KEY:Ljava/lang/String; = ""

.field public static final DEFAULT_DEVICE:Ljava/lang/String; = ""

.field public static final DEFAULT_IMEI:Ljava/lang/String; = ""

.field public static final DEFAULT_IMSI:Ljava/lang/String; = ""

.field public static final DEFAULT_MAC:Ljava/lang/String; = ""

.field public static final DEFAULT_OS_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_PARAMS:Ljava/lang/String; = ""

.field public static final DEFAULT_SESSION:Ljava/lang/String; = ""

.field public static final DEFAULT_TID:Ljava/lang/String; = ""

.field public static final DEFAULT_UA:Ljava/lang/String; = ""

.field public static final DEFAULT_VER:Ljava/lang/String; = ""


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

.field public final auth_key:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final device:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final imei:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xc
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final imsi:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xb
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final mac:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xd
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final os_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xe
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final params:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final session:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x9
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final tid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xa
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final ua:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final ver:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;)V
    .locals 16

    .prologue
    .line 100
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;->api_nsp:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;->api_nm:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;->api_ver:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;->params:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;->auth_key:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;->ver:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;->ua:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;->device:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;->session:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;->tid:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;->imsi:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;->imei:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;->mac:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;->os_id:Ljava/lang/String;

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v15}, Lcom/alipay/mobilecashier/service/rpc/MspReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual/range {p0 .. p1}, Lcom/alipay/mobilecashier/service/rpc/MspReq;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 102
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;B)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/alipay/mobilecashier/service/rpc/MspReq;-><init>(Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->api_nsp:Ljava/lang/String;

    .line 84
    iput-object p2, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->api_nm:Ljava/lang/String;

    .line 85
    iput-object p3, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->api_ver:Ljava/lang/String;

    .line 86
    iput-object p4, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->params:Ljava/lang/String;

    .line 87
    iput-object p5, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->auth_key:Ljava/lang/String;

    .line 88
    iput-object p6, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->ver:Ljava/lang/String;

    .line 89
    iput-object p7, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->ua:Ljava/lang/String;

    .line 90
    iput-object p8, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->device:Ljava/lang/String;

    .line 91
    iput-object p9, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->session:Ljava/lang/String;

    .line 92
    iput-object p10, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->tid:Ljava/lang/String;

    .line 93
    iput-object p11, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->imsi:Ljava/lang/String;

    .line 94
    iput-object p12, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->imei:Ljava/lang/String;

    .line 95
    iput-object p13, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->mac:Ljava/lang/String;

    .line 96
    iput-object p14, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->os_id:Ljava/lang/String;

    .line 97
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 106
    if-ne p1, p0, :cond_1

    .line 122
    :cond_0
    :goto_0
    return v0

    .line 107
    :cond_1
    instance-of v2, p1, Lcom/alipay/mobilecashier/service/rpc/MspReq;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 108
    :cond_2
    check-cast p1, Lcom/alipay/mobilecashier/service/rpc/MspReq;

    .line 109
    iget-object v2, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->api_nsp:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilecashier/service/rpc/MspReq;->api_nsp:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilecashier/service/rpc/MspReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 110
    iget-object v2, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->api_nm:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilecashier/service/rpc/MspReq;->api_nm:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilecashier/service/rpc/MspReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 111
    iget-object v2, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->api_ver:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilecashier/service/rpc/MspReq;->api_ver:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilecashier/service/rpc/MspReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 112
    iget-object v2, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->params:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilecashier/service/rpc/MspReq;->params:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilecashier/service/rpc/MspReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 113
    iget-object v2, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->auth_key:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilecashier/service/rpc/MspReq;->auth_key:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilecashier/service/rpc/MspReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 114
    iget-object v2, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->ver:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilecashier/service/rpc/MspReq;->ver:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilecashier/service/rpc/MspReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 115
    iget-object v2, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->ua:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilecashier/service/rpc/MspReq;->ua:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilecashier/service/rpc/MspReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 116
    iget-object v2, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->device:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilecashier/service/rpc/MspReq;->device:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilecashier/service/rpc/MspReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 117
    iget-object v2, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->session:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilecashier/service/rpc/MspReq;->session:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilecashier/service/rpc/MspReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 118
    iget-object v2, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->tid:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilecashier/service/rpc/MspReq;->tid:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilecashier/service/rpc/MspReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 119
    iget-object v2, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->imsi:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilecashier/service/rpc/MspReq;->imsi:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilecashier/service/rpc/MspReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 120
    iget-object v2, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->imei:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilecashier/service/rpc/MspReq;->imei:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilecashier/service/rpc/MspReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 121
    iget-object v2, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->mac:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilecashier/service/rpc/MspReq;->mac:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilecashier/service/rpc/MspReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 122
    iget-object v2, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->os_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilecashier/service/rpc/MspReq;->os_id:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilecashier/service/rpc/MspReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    .line 109
    goto/16 :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 127
    iget v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->hashCode:I

    .line 128
    if-nez v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->api_nsp:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->api_nsp:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 130
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->api_nm:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->api_nm:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 131
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->api_ver:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->api_ver:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 132
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->params:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->params:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 133
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->auth_key:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->auth_key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 134
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->ver:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->ver:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 135
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->ua:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->ua:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    .line 136
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->device:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->device:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    .line 137
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->session:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->session:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v2

    .line 138
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->tid:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->tid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v2

    .line 139
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->imsi:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->imsi:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    add-int/2addr v0, v2

    .line 140
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->imei:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->imei:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    add-int/2addr v0, v2

    .line 141
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->mac:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->mac:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_c
    add-int/2addr v0, v2

    .line 142
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->os_id:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->os_id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 143
    iput v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->hashCode:I

    .line 145
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 129
    goto/16 :goto_0

    :cond_3
    move v0, v1

    .line 130
    goto/16 :goto_1

    :cond_4
    move v0, v1

    .line 131
    goto/16 :goto_2

    :cond_5
    move v0, v1

    .line 132
    goto/16 :goto_3

    :cond_6
    move v0, v1

    .line 133
    goto/16 :goto_4

    :cond_7
    move v0, v1

    .line 134
    goto :goto_5

    :cond_8
    move v0, v1

    .line 135
    goto :goto_6

    :cond_9
    move v0, v1

    .line 136
    goto :goto_7

    :cond_a
    move v0, v1

    .line 137
    goto :goto_8

    :cond_b
    move v0, v1

    .line 138
    goto :goto_9

    :cond_c
    move v0, v1

    .line 139
    goto :goto_a

    :cond_d
    move v0, v1

    .line 140
    goto :goto_b

    :cond_e
    move v0, v1

    .line 141
    goto :goto_c
.end method

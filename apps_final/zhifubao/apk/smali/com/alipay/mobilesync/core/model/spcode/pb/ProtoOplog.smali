.class public final Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;
.super Lcom/squareup/wire/Message;
.source "ProtoOplog.java"


# static fields
.field public static final DEFAULT_APP_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_BINARY_PAYLOAD:Lokio/ByteString;

.field public static final DEFAULT_BIZ_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_EXT:Ljava/lang/String; = ""

.field public static final DEFAULT_MCT:Ljava/lang/Long;

.field public static final DEFAULT_MK:Ljava/lang/Long;

.field public static final DEFAULT_M_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_PAYLOAD:Ljava/lang/String; = ""

.field public static final DEFAULT_SC:Ljava/lang/Integer;

.field public static final DEFAULT_ST:Ljava/lang/Integer;

.field private static final serialVersionUID:J


# instance fields
.field public final app_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final binary_payload:Lokio/ByteString;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x9
        type = .enum Lcom/squareup/wire/Message$Datatype;->BYTES:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final biz_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final ext:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xa
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final m_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final mct:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final mk:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final payload:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final sc:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final st:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->DEFAULT_SC:Ljava/lang/Integer;

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->DEFAULT_ST:Ljava/lang/Integer;

    .line 20
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->DEFAULT_MCT:Ljava/lang/Long;

    .line 21
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->DEFAULT_MK:Ljava/lang/Long;

    .line 26
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    sput-object v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->DEFAULT_BINARY_PAYLOAD:Lokio/ByteString;

    .line 15
    return-void
.end method

.method private constructor <init>(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog$Builder;)V
    .locals 11

    .prologue
    .line 73
    iget-object v1, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog$Builder;->sc:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog$Builder;->st:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog$Builder;->mct:Ljava/lang/Long;

    iget-object v4, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog$Builder;->mk:Ljava/lang/Long;

    iget-object v5, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog$Builder;->m_id:Ljava/lang/String;

    iget-object v6, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog$Builder;->app_id:Ljava/lang/String;

    iget-object v7, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog$Builder;->biz_id:Ljava/lang/String;

    iget-object v8, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog$Builder;->payload:Ljava/lang/String;

    iget-object v9, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog$Builder;->binary_payload:Lokio/ByteString;

    iget-object v10, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog$Builder;->ext:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0, p1}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 75
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog$Builder;Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;-><init>(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->sc:Ljava/lang/Integer;

    .line 61
    iput-object p2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->st:Ljava/lang/Integer;

    .line 62
    iput-object p3, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->mct:Ljava/lang/Long;

    .line 63
    iput-object p4, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->mk:Ljava/lang/Long;

    .line 64
    iput-object p5, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->m_id:Ljava/lang/String;

    .line 65
    iput-object p6, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->app_id:Ljava/lang/String;

    .line 66
    iput-object p7, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->biz_id:Ljava/lang/String;

    .line 67
    iput-object p8, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->payload:Ljava/lang/String;

    .line 68
    iput-object p9, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->binary_payload:Lokio/ByteString;

    .line 69
    iput-object p10, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->ext:Ljava/lang/String;

    .line 70
    return-void
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
    instance-of v2, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 81
    :cond_2
    check-cast p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;

    .line 82
    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->sc:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->sc:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 83
    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->st:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->st:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 84
    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->mct:Ljava/lang/Long;

    iget-object v3, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->mct:Ljava/lang/Long;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 85
    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->mk:Ljava/lang/Long;

    iget-object v3, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->mk:Ljava/lang/Long;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 86
    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->m_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->m_id:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 87
    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->app_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->app_id:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 88
    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->biz_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->biz_id:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 89
    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->payload:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->payload:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 90
    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->binary_payload:Lokio/ByteString;

    iget-object v3, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->binary_payload:Lokio/ByteString;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 91
    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->ext:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->ext:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    iget v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->hashCode:I

    .line 97
    if-nez v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->sc:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->sc:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    .line 99
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->st:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->st:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 100
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->mct:Ljava/lang/Long;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->mct:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 101
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->mk:Ljava/lang/Long;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->mk:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 102
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->m_id:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->m_id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 103
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->app_id:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->app_id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 104
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->biz_id:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->biz_id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    .line 105
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->payload:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->payload:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    .line 106
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->binary_payload:Lokio/ByteString;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->binary_payload:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v2

    .line 107
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->ext:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->ext:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 108
    iput v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->hashCode:I

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

    :cond_5
    move v0, v1

    .line 101
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

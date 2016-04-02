.class public final Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;
.super Lcom/squareup/wire/Message;
.source "ProtoUpAckMsg.java"


# static fields
.field public static final DEFAULT_APP_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_EXT:Ljava/lang/String; = ""

.field public static final DEFAULT_MK:Ljava/lang/Long;

.field public static final DEFAULT_M_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_SC:Ljava/lang/Integer;

.field public static final DEFAULT_ST:Ljava/lang/Integer;

.field private static final serialVersionUID:J


# instance fields
.field public final app_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final ext:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final m_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final mk:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
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
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;->DEFAULT_SC:Ljava/lang/Integer;

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;->DEFAULT_ST:Ljava/lang/Integer;

    .line 18
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;->DEFAULT_MK:Ljava/lang/Long;

    .line 13
    return-void
.end method

.method private constructor <init>(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg$Builder;)V
    .locals 7

    .prologue
    .line 51
    iget-object v1, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg$Builder;->sc:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg$Builder;->st:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg$Builder;->mk:Ljava/lang/Long;

    iget-object v4, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg$Builder;->m_id:Ljava/lang/String;

    iget-object v5, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg$Builder;->app_id:Ljava/lang/String;

    iget-object v6, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg$Builder;->ext:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0, p1}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 53
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg$Builder;Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;-><init>(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;->sc:Ljava/lang/Integer;

    .line 43
    iput-object p2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;->st:Ljava/lang/Integer;

    .line 44
    iput-object p3, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;->mk:Ljava/lang/Long;

    .line 45
    iput-object p4, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;->m_id:Ljava/lang/String;

    .line 46
    iput-object p5, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;->app_id:Ljava/lang/String;

    .line 47
    iput-object p6, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;->ext:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 57
    if-ne p1, p0, :cond_1

    .line 65
    :cond_0
    :goto_0
    return v0

    .line 58
    :cond_1
    instance-of v2, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 59
    :cond_2
    check-cast p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;

    .line 60
    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;->sc:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;->sc:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 61
    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;->st:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;->st:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 62
    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;->mk:Ljava/lang/Long;

    iget-object v3, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;->mk:Ljava/lang/Long;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 63
    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;->m_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;->m_id:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 64
    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;->app_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;->app_id:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 65
    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;->ext:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;->ext:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    .line 60
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 70
    iget v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;->hashCode:I

    .line 71
    if-nez v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;->sc:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;->sc:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    .line 73
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;->st:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;->st:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 74
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;->mk:Ljava/lang/Long;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;->mk:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 75
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;->m_id:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;->m_id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 76
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;->app_id:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;->app_id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 77
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;->ext:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;->ext:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 78
    iput v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;->hashCode:I

    .line 80
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 72
    goto :goto_0

    :cond_3
    move v0, v1

    .line 73
    goto :goto_1

    :cond_4
    move v0, v1

    .line 74
    goto :goto_2

    :cond_5
    move v0, v1

    .line 75
    goto :goto_3

    :cond_6
    move v0, v1

    .line 76
    goto :goto_4
.end method

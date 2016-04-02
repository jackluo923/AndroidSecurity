.class public final Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg;
.super Lcom/squareup/wire/Message;
.source "ProtoUpMsg.java"


# static fields
.field public static final DEFAULT_APP_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_M_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_PAYLOAD:Ljava/lang/String; = ""

.field public static final DEFAULT_TO_ID:Ljava/lang/String; = ""

.field private static final serialVersionUID:J


# instance fields
.field public final app_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final m_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final payload:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final to_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg$Builder;)V
    .locals 4

    .prologue
    .line 39
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg$Builder;->m_id:Ljava/lang/String;

    iget-object v1, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg$Builder;->app_id:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg$Builder;->payload:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg$Builder;->to_id:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0, p1}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg$Builder;Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg;-><init>(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg;->m_id:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg;->app_id:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg;->payload:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg;->to_id:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 45
    if-ne p1, p0, :cond_1

    .line 51
    :cond_0
    :goto_0
    return v0

    .line 46
    :cond_1
    instance-of v2, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 47
    :cond_2
    check-cast p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg;

    .line 48
    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg;->m_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg;->m_id:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 49
    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg;->app_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg;->app_id:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 50
    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg;->payload:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg;->payload:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 51
    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg;->to_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg;->to_id:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    .line 48
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 56
    iget v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg;->hashCode:I

    .line 57
    if-nez v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg;->m_id:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg;->m_id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 59
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg;->app_id:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg;->app_id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 60
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg;->payload:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg;->payload:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 61
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg;->to_id:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg;->to_id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 62
    iput v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg;->hashCode:I

    .line 64
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 58
    goto :goto_0

    :cond_3
    move v0, v1

    .line 59
    goto :goto_1

    :cond_4
    move v0, v1

    .line 60
    goto :goto_2
.end method

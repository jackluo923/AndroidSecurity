.class public final Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005;
.super Lcom/squareup/wire/Message;
.source "ProtoSyncOpCode2005.java"


# static fields
.field public static final DEFAULT_BIZ_TYPE:Ljava/lang/String; = ""

.field public static final DEFAULT_SYNC_KEY:Ljava/lang/Long;

.field public static final DEFAULT_USER_ID:Ljava/lang/String; = ""

.field private static final serialVersionUID:J


# instance fields
.field public final ack_msg:Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x4
    .end annotation
.end field

.field public final biz_type:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final sync_key:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final user_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005;->DEFAULT_SYNC_KEY:Ljava/lang/Long;

    .line 12
    return-void
.end method

.method private constructor <init>(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005$Builder;)V
    .locals 4

    .prologue
    .line 39
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005$Builder;->biz_type:Ljava/lang/String;

    iget-object v1, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005$Builder;->sync_key:Ljava/lang/Long;

    iget-object v2, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005$Builder;->user_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005$Builder;->ack_msg:Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;)V

    .line 40
    invoke-virtual {p0, p1}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005$Builder;Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005;-><init>(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005;->biz_type:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005;->sync_key:Ljava/lang/Long;

    .line 34
    iput-object p3, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005;->user_id:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005;->ack_msg:Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;

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
    instance-of v2, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 47
    :cond_2
    check-cast p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005;

    .line 48
    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005;->biz_type:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005;->biz_type:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 49
    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005;->sync_key:Ljava/lang/Long;

    iget-object v3, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005;->sync_key:Ljava/lang/Long;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 50
    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005;->user_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005;->user_id:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 51
    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005;->ack_msg:Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;

    iget-object v3, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005;->ack_msg:Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    iget v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005;->hashCode:I

    .line 57
    if-nez v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005;->biz_type:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005;->biz_type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 59
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005;->sync_key:Ljava/lang/Long;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005;->sync_key:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 60
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005;->user_id:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005;->user_id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 61
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005;->ack_msg:Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005;->ack_msg:Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;

    invoke-virtual {v1}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpAckMsg;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 62
    iput v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2005;->hashCode:I

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

.class public final Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;
.super Lcom/squareup/wire/Message;
.source "ProtoBizSyncData.java"


# static fields
.field public static final DEFAULT_BIZ_TYPE:Ljava/lang/String; = ""

.field public static final DEFAULT_HAS_MORE:Ljava/lang/Boolean;

.field public static final DEFAULT_OPLOG:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_PF:Ljava/lang/Integer;

.field public static final DEFAULT_SYNC_KEY:Ljava/lang/Long;

.field private static final serialVersionUID:J


# instance fields
.field public final biz_type:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final has_more:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final oplog:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        messageType = Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;
        tag = 0x5
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;",
            ">;"
        }
    .end annotation
.end field

.field public final pf:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final sync_key:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;->DEFAULT_PF:Ljava/lang/Integer;

    .line 22
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;->DEFAULT_HAS_MORE:Ljava/lang/Boolean;

    .line 23
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;->DEFAULT_SYNC_KEY:Ljava/lang/Long;

    .line 24
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;->DEFAULT_OPLOG:Ljava/util/List;

    .line 17
    return-void
.end method

.method private constructor <init>(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData$Builder;)V
    .locals 6

    .prologue
    .line 50
    iget-object v1, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData$Builder;->biz_type:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData$Builder;->pf:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData$Builder;->has_more:Ljava/lang/Boolean;

    iget-object v4, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData$Builder;->sync_key:Ljava/lang/Long;

    iget-object v5, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData$Builder;->oplog:Ljava/util/List;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/util/List;)V

    .line 51
    invoke-virtual {p0, p1}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData$Builder;Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;-><init>(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;->biz_type:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;->pf:Ljava/lang/Integer;

    .line 44
    iput-object p3, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;->has_more:Ljava/lang/Boolean;

    .line 45
    iput-object p4, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;->sync_key:Ljava/lang/Long;

    .line 46
    invoke-static {p5}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;->oplog:Ljava/util/List;

    .line 47
    return-void
.end method

.method static synthetic access$0(Ljava/util/List;)Ljava/util/List;
    .locals 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 56
    if-ne p1, p0, :cond_1

    .line 63
    :cond_0
    :goto_0
    return v0

    .line 57
    :cond_1
    instance-of v2, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 58
    :cond_2
    check-cast p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;

    .line 59
    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;->biz_type:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;->biz_type:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 60
    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;->pf:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;->pf:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 61
    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;->has_more:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;->has_more:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 62
    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;->sync_key:Ljava/lang/Long;

    iget-object v3, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;->sync_key:Ljava/lang/Long;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 63
    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;->oplog:Ljava/util/List;

    iget-object v3, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;->oplog:Ljava/util/List;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    .line 59
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 68
    iget v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;->hashCode:I

    .line 69
    if-nez v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;->biz_type:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;->biz_type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 71
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;->pf:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;->pf:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 72
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;->has_more:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;->has_more:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 73
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;->sync_key:Ljava/lang/Long;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;->sync_key:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 74
    mul-int/lit8 v1, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;->oplog:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;->oplog:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v1

    .line 75
    iput v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;->hashCode:I

    .line 77
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 70
    goto :goto_0

    :cond_3
    move v0, v1

    .line 71
    goto :goto_1

    :cond_4
    move v0, v1

    .line 72
    goto :goto_2

    .line 74
    :cond_5
    const/4 v0, 0x1

    goto :goto_3
.end method

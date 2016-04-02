.class public final Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;
.super Lcom/squareup/wire/Message;
.source "ProtoBizSyncInfo.java"


# static fields
.field public static final DEFAULT_BIZ_TYPE:Ljava/lang/String; = ""

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

.field public final pf:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final sync_key:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;->DEFAULT_SYNC_KEY:Ljava/lang/Long;

    .line 18
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;->DEFAULT_PF:Ljava/lang/Integer;

    .line 13
    return-void
.end method

.method private constructor <init>(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo$Builder;)V
    .locals 3

    .prologue
    .line 36
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo$Builder;->biz_type:Ljava/lang/String;

    iget-object v1, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo$Builder;->sync_key:Ljava/lang/Long;

    iget-object v2, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo$Builder;->pf:Ljava/lang/Integer;

    invoke-direct {p0, v0, v1, v2}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;)V

    .line 37
    invoke-virtual {p0, p1}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 38
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo$Builder;Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;-><init>(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;->biz_type:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;->sync_key:Ljava/lang/Long;

    .line 32
    iput-object p3, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;->pf:Ljava/lang/Integer;

    .line 33
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 42
    if-ne p1, p0, :cond_1

    .line 47
    :cond_0
    :goto_0
    return v0

    .line 43
    :cond_1
    instance-of v2, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 44
    :cond_2
    check-cast p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;

    .line 45
    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;->biz_type:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;->biz_type:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 46
    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;->sync_key:Ljava/lang/Long;

    iget-object v3, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;->sync_key:Ljava/lang/Long;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 47
    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;->pf:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;->pf:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    .line 45
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 52
    iget v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;->hashCode:I

    .line 53
    if-nez v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;->biz_type:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;->biz_type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 55
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;->sync_key:Ljava/lang/Long;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;->sync_key:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 56
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;->pf:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;->pf:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 57
    iput v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;->hashCode:I

    .line 59
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 54
    goto :goto_0

    :cond_3
    move v0, v1

    .line 55
    goto :goto_1
.end method

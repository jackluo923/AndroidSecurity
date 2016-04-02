.class public final Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode3001;
.super Lcom/squareup/wire/Message;
.source "ProtoSyncOpCode3001.java"


# static fields
.field public static final DEFAULT_BIZ_SYNC_INFO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_BUCKET_SYNC_INFO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_USER_ID:Ljava/lang/String; = ""

.field private static final serialVersionUID:J


# instance fields
.field public final biz_sync_info:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        messageType = Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;
        tag = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final bucket_sync_info:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        messageType = Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;
        tag = 0x3
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final user_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode3001;->DEFAULT_BIZ_SYNC_INFO:Ljava/util/List;

    .line 19
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode3001;->DEFAULT_BUCKET_SYNC_INFO:Ljava/util/List;

    .line 14
    return-void
.end method

.method private constructor <init>(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode3001$Builder;)V
    .locals 3

    .prologue
    .line 37
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode3001$Builder;->user_id:Ljava/lang/String;

    iget-object v1, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode3001$Builder;->biz_sync_info:Ljava/util/List;

    iget-object v2, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode3001$Builder;->bucket_sync_info:Ljava/util/List;

    invoke-direct {p0, v0, v1, v2}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode3001;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 38
    invoke-virtual {p0, p1}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode3001;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 39
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode3001$Builder;Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode3001;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode3001;-><init>(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode3001$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode3001;->user_id:Ljava/lang/String;

    .line 32
    invoke-static {p2}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode3001;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode3001;->biz_sync_info:Ljava/util/List;

    .line 33
    invoke-static {p3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode3001;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode3001;->bucket_sync_info:Ljava/util/List;

    .line 34
    return-void
.end method

.method static synthetic access$0(Ljava/util/List;)Ljava/util/List;
    .locals 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode3001;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 43
    if-ne p1, p0, :cond_1

    .line 48
    :cond_0
    :goto_0
    return v0

    .line 44
    :cond_1
    instance-of v2, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode3001;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 45
    :cond_2
    check-cast p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode3001;

    .line 46
    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode3001;->user_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode3001;->user_id:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode3001;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 47
    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode3001;->biz_sync_info:Ljava/util/List;

    iget-object v3, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode3001;->biz_sync_info:Ljava/util/List;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode3001;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 48
    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode3001;->bucket_sync_info:Ljava/util/List;

    iget-object v3, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode3001;->bucket_sync_info:Ljava/util/List;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode3001;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    .line 46
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 53
    iget v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode3001;->hashCode:I

    .line 54
    if-nez v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode3001;->user_id:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode3001;->user_id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 56
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode3001;->biz_sync_info:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode3001;->biz_sync_info:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 57
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode3001;->bucket_sync_info:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode3001;->bucket_sync_info:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 58
    iput v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode3001;->hashCode:I

    .line 60
    :cond_1
    return v0

    .line 55
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    move v0, v1

    .line 56
    goto :goto_1
.end method

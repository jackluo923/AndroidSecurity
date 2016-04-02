.class public final Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2002;
.super Lcom/squareup/wire/Message;
.source "ProtoSyncOpCode2002.java"


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

.field private static final serialVersionUID:J


# instance fields
.field public final biz_sync_info:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        messageType = Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;
        tag = 0x1
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

.field public final bucket_sync_info:Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2002;->DEFAULT_BIZ_SYNC_INFO:Ljava/util/List;

    .line 12
    return-void
.end method

.method private constructor <init>(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2002$Builder;)V
    .locals 2

    .prologue
    .line 29
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2002$Builder;->biz_sync_info:Ljava/util/List;

    iget-object v1, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2002$Builder;->bucket_sync_info:Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2002;-><init>(Ljava/util/List;Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;)V

    .line 30
    invoke-virtual {p0, p1}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2002;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 31
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2002$Builder;Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2002;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2002;-><init>(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2002$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;",
            ">;",
            "Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 24
    invoke-static {p1}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2002;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2002;->biz_sync_info:Ljava/util/List;

    .line 25
    iput-object p2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2002;->bucket_sync_info:Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;

    .line 26
    return-void
.end method

.method static synthetic access$0(Ljava/util/List;)Ljava/util/List;
    .locals 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2002;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 35
    if-ne p1, p0, :cond_1

    .line 39
    :cond_0
    :goto_0
    return v0

    .line 36
    :cond_1
    instance-of v2, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2002;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 37
    :cond_2
    check-cast p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2002;

    .line 38
    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2002;->biz_sync_info:Ljava/util/List;

    iget-object v3, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2002;->biz_sync_info:Ljava/util/List;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2002;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 39
    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2002;->bucket_sync_info:Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;

    iget-object v3, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2002;->bucket_sync_info:Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2002;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    .line 38
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 44
    iget v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2002;->hashCode:I

    .line 45
    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2002;->biz_sync_info:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2002;->biz_sync_info:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    .line 47
    :goto_0
    mul-int/lit8 v1, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2002;->bucket_sync_info:Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2002;->bucket_sync_info:Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;

    invoke-virtual {v0}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v1

    .line 48
    iput v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2002;->hashCode:I

    .line 50
    :cond_0
    return v0

    .line 46
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 47
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

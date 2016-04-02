.class public final Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;
.super Lcom/squareup/wire/Message;
.source "ProtoSyncOpCode2001.java"


# static fields
.field public static final DEFAULT_BIZ_SYNC_DATA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_NOT_CHECK_PRINCIPAL:Ljava/lang/Boolean;

.field public static final DEFAULT_PRINCIPAL_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_PRINCIPAL_ID_TYPE:Ljava/lang/Integer;

.field private static final serialVersionUID:J


# instance fields
.field public final biz_sync_data:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        messageType = Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;
        tag = 0x3
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;",
            ">;"
        }
    .end annotation
.end field

.field public final bucket_sync_info:Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
    .end annotation
.end field

.field public final not_check_principal:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final principal_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final principal_id_type:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;->DEFAULT_PRINCIPAL_ID_TYPE:Ljava/lang/Integer;

    .line 21
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;->DEFAULT_BIZ_SYNC_DATA:Ljava/util/List;

    .line 22
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;->DEFAULT_NOT_CHECK_PRINCIPAL:Ljava/lang/Boolean;

    .line 16
    return-void
.end method

.method private constructor <init>(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001$Builder;)V
    .locals 6

    .prologue
    .line 51
    iget-object v1, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001$Builder;->principal_id_type:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001$Builder;->principal_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001$Builder;->biz_sync_data:Ljava/util/List;

    iget-object v4, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001$Builder;->bucket_sync_info:Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;

    iget-object v5, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001$Builder;->not_check_principal:Ljava/lang/Boolean;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;Ljava/lang/Boolean;)V

    .line 52
    invoke-virtual {p0, p1}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 53
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001$Builder;Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;-><init>(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncData;",
            ">;",
            "Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;->principal_id_type:Ljava/lang/Integer;

    .line 44
    iput-object p2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;->principal_id:Ljava/lang/String;

    .line 45
    invoke-static {p3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;->biz_sync_data:Ljava/util/List;

    .line 46
    iput-object p4, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;->bucket_sync_info:Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;

    .line 47
    iput-object p5, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;->not_check_principal:Ljava/lang/Boolean;

    .line 48
    return-void
.end method

.method static synthetic access$0(Ljava/util/List;)Ljava/util/List;
    .locals 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 57
    if-ne p1, p0, :cond_1

    .line 64
    :cond_0
    :goto_0
    return v0

    .line 58
    :cond_1
    instance-of v2, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 59
    :cond_2
    check-cast p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;

    .line 60
    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;->principal_id_type:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;->principal_id_type:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 61
    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;->principal_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;->principal_id:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 62
    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;->biz_sync_data:Ljava/util/List;

    iget-object v3, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;->biz_sync_data:Ljava/util/List;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 63
    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;->bucket_sync_info:Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;

    iget-object v3, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;->bucket_sync_info:Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 64
    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;->not_check_principal:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;->not_check_principal:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 69
    iget v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;->hashCode:I

    .line 70
    if-nez v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;->principal_id_type:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;->principal_id_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    .line 72
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;->principal_id:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;->principal_id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 73
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;->biz_sync_data:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;->biz_sync_data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 74
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;->bucket_sync_info:Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;->bucket_sync_info:Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;

    invoke-virtual {v0}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBucketSyncInfo;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 75
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;->not_check_principal:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;->not_check_principal:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 76
    iput v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2001;->hashCode:I

    .line 78
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 71
    goto :goto_0

    :cond_3
    move v0, v1

    .line 72
    goto :goto_1

    .line 73
    :cond_4
    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    move v0, v1

    .line 74
    goto :goto_3
.end method

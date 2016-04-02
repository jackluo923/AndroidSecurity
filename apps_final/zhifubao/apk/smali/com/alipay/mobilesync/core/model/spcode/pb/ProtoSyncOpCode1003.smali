.class public final Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1003;
.super Lcom/squareup/wire/Message;
.source "ProtoSyncOpCode1003.java"


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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1003;->DEFAULT_BIZ_SYNC_INFO:Ljava/util/List;

    .line 12
    return-void
.end method

.method private constructor <init>(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1003$Builder;)V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1003$Builder;->biz_sync_info:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1003;-><init>(Ljava/util/List;)V

    .line 26
    invoke-virtual {p0, p1}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1003;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 27
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1003$Builder;Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1003;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1003;-><init>(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1003$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoBizSyncInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 21
    invoke-static {p1}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1003;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1003;->biz_sync_info:Ljava/util/List;

    .line 22
    return-void
.end method

.method static synthetic access$0(Ljava/util/List;)Ljava/util/List;
    .locals 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1003;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 31
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    .line 33
    :goto_0
    return v0

    .line 32
    :cond_0
    instance-of v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1003;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1003;->biz_sync_info:Ljava/util/List;

    check-cast p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1003;

    iget-object v1, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1003;->biz_sync_info:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1003;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1003;->hashCode:I

    .line 39
    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1003;->biz_sync_info:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1003;->biz_sync_info:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode1003;->hashCode:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

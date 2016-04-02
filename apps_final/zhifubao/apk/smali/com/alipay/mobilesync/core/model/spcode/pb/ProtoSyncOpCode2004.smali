.class public final Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004;
.super Lcom/squareup/wire/Message;
.source "ProtoSyncOpCode2004.java"


# static fields
.field public static final DEFAULT_BIZ_TYPE:Ljava/lang/String; = ""

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

.field public final msg:Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x3
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
    .line 16
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004;->DEFAULT_SYNC_KEY:Ljava/lang/Long;

    .line 12
    return-void
.end method

.method private constructor <init>(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004$Builder;)V
    .locals 3

    .prologue
    .line 34
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004$Builder;->biz_type:Ljava/lang/String;

    iget-object v1, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004$Builder;->sync_key:Ljava/lang/Long;

    iget-object v2, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004$Builder;->msg:Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg;

    invoke-direct {p0, v0, v1, v2}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004;-><init>(Ljava/lang/String;Ljava/lang/Long;Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg;)V

    .line 35
    invoke-virtual {p0, p1}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 36
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004$Builder;Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004;-><init>(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004;->biz_type:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004;->sync_key:Ljava/lang/Long;

    .line 30
    iput-object p3, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004;->msg:Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg;

    .line 31
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 40
    if-ne p1, p0, :cond_1

    .line 45
    :cond_0
    :goto_0
    return v0

    .line 41
    :cond_1
    instance-of v2, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 42
    :cond_2
    check-cast p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004;

    .line 43
    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004;->biz_type:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004;->biz_type:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 44
    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004;->sync_key:Ljava/lang/Long;

    iget-object v3, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004;->sync_key:Ljava/lang/Long;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 45
    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004;->msg:Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg;

    iget-object v3, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004;->msg:Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    .line 43
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 50
    iget v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004;->hashCode:I

    .line 51
    if-nez v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004;->biz_type:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004;->biz_type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 53
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004;->sync_key:Ljava/lang/Long;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004;->sync_key:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 54
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004;->msg:Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004;->msg:Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg;

    invoke-virtual {v1}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoUpMsg;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 55
    iput v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoSyncOpCode2004;->hashCode:I

    .line 57
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 52
    goto :goto_0

    :cond_3
    move v0, v1

    .line 53
    goto :goto_1
.end method

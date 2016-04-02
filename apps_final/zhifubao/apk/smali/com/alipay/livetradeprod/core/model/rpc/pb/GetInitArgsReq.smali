.class public final Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsReq;
.super Lcom/squareup/wire/Message;


# static fields
.field public static final DEFAULT_ISQUERYFACEPAYSWITCH:Ljava/lang/Boolean;

.field private static final serialVersionUID:J


# instance fields
.field public final isQueryFacePaySwitch:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsReq;->DEFAULT_ISQUERYFACEPAYSWITCH:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>(Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsReq$Builder;)V
    .locals 1

    iget-object v0, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsReq$Builder;->isQueryFacePaySwitch:Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsReq;-><init>(Ljava/lang/Boolean;)V

    invoke-virtual {p0, p1}, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsReq;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsReq$Builder;Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsReq;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsReq;-><init>(Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsReq$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    iput-object p1, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsReq;->isQueryFacePaySwitch:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsReq;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsReq;->isQueryFacePaySwitch:Ljava/lang/Boolean;

    check-cast p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsReq;

    iget-object v1, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsReq;->isQueryFacePaySwitch:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsReq;->hashCode:I

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsReq;->isQueryFacePaySwitch:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsReq;->isQueryFacePaySwitch:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsReq;->hashCode:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

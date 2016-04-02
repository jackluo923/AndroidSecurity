.class public final enum Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field public static final enum CHAT:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;

.field private static final synthetic ENUM$VALUES:[Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;

.field public static final enum FORWARD:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;

.field public static final enum SHARE:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;

    const-string/jumbo v1, "CHAT"

    invoke-direct {v0, v1, v2, v2}, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;->CHAT:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;

    new-instance v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;

    const-string/jumbo v1, "FORWARD"

    invoke-direct {v0, v1, v3, v3}, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;->FORWARD:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;

    new-instance v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;

    const-string/jumbo v1, "SHARE"

    invoke-direct {v0, v1, v4, v4}, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;->SHARE:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;

    sget-object v1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;->CHAT:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;->FORWARD:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;->SHARE:Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;->ENUM$VALUES:[Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;
    .locals 1

    const-class v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;->ENUM$VALUES:[Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobilechat/biz/outservice/rpc/pb/ChatMsgScene;->value:I

    return v0
.end method

.class public final enum Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Connected:Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;

.field public static final enum Connecting:Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;

.field public static final enum DisConnect:Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;

.field private static final synthetic ENUM$VALUES:[Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;

.field public static final enum WaitCallback:Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;

    const-string/jumbo v1, "DisConnect"

    invoke-direct {v0, v1, v2}, Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;->DisConnect:Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;

    new-instance v0, Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;

    const-string/jumbo v1, "Connecting"

    invoke-direct {v0, v1, v3}, Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;->Connecting:Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;

    new-instance v0, Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;

    const-string/jumbo v1, "Connected"

    invoke-direct {v0, v1, v4}, Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;->Connected:Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;

    new-instance v0, Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;

    const-string/jumbo v1, "WaitCallback"

    invoke-direct {v0, v1, v5}, Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;->WaitCallback:Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;

    sget-object v1, Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;->DisConnect:Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;->Connecting:Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;->Connected:Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;->WaitCallback:Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;->ENUM$VALUES:[Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;
    .locals 1

    const-class v0, Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;

    return-object v0
.end method

.method public static values()[Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;->ENUM$VALUES:[Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;

    array-length v1, v0

    new-array v2, v1, [Lcom/taobao/mteam/abeacon/found/EConnectionOperationState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

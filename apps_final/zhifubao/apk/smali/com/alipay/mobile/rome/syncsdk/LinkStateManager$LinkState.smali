.class public final enum Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;
.super Ljava/lang/Enum;
.source "LinkStateManager.java"


# static fields
.field public static final enum CONNECTED:Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

.field public static final enum CONNECTING:Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

.field public static final enum CONNECT_FAILED:Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

.field private static final synthetic ENUM$VALUES:[Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

.field public static final enum NOT_AVAILABLE:Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    const-string/jumbo v1, "NOT_AVAILABLE"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;->NOT_AVAILABLE:Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    .line 13
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    const-string/jumbo v1, "CONNECTING"

    invoke-direct {v0, v1, v3}, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;->CONNECTING:Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    .line 14
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    const-string/jumbo v1, "CONNECTED"

    invoke-direct {v0, v1, v4}, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;->CONNECTED:Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    .line 15
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    const-string/jumbo v1, "CONNECT_FAILED"

    invoke-direct {v0, v1, v5}, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;->CONNECT_FAILED:Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    .line 11
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;->NOT_AVAILABLE:Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;->CONNECTING:Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;->CONNECTED:Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;->CONNECT_FAILED:Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;->ENUM$VALUES:[Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;->ENUM$VALUES:[Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

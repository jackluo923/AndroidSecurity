.class public final enum Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;
.super Ljava/lang/Enum;
.source "ConnStateFsm.java"


# static fields
.field public static final enum CONNECTED:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

.field public static final enum DEVICE_BINDED:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

.field private static final synthetic ENUM$VALUES:[Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

.field public static final enum INIT:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

.field public static final enum REGISTERED:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

.field public static final enum USER_BINDED:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

.field public static final enum WAIT_DEVICE_BINDED:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

.field public static final enum WAIT_REGISTERED:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

.field public static final enum WAIT_USER_BINDED:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

.field public static final enum WAIT_USER_UNBINDED:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 15
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    const-string/jumbo v1, "INIT"

    invoke-direct {v0, v1, v3}, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;-><init>(Ljava/lang/String;I)V

    .line 16
    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->INIT:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    .line 18
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    const-string/jumbo v1, "CONNECTED"

    invoke-direct {v0, v1, v4}, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->CONNECTED:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    .line 21
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    const-string/jumbo v1, "WAIT_DEVICE_BINDED"

    invoke-direct {v0, v1, v5}, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;-><init>(Ljava/lang/String;I)V

    .line 22
    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->WAIT_DEVICE_BINDED:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    .line 24
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    const-string/jumbo v1, "DEVICE_BINDED"

    invoke-direct {v0, v1, v6}, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;-><init>(Ljava/lang/String;I)V

    .line 25
    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->DEVICE_BINDED:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    .line 27
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    const-string/jumbo v1, "WAIT_USER_BINDED"

    invoke-direct {v0, v1, v7}, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;-><init>(Ljava/lang/String;I)V

    .line 28
    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->WAIT_USER_BINDED:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    .line 30
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    const-string/jumbo v1, "USER_BINDED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;-><init>(Ljava/lang/String;I)V

    .line 31
    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->USER_BINDED:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    .line 33
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    const-string/jumbo v1, "WAIT_REGISTERED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;-><init>(Ljava/lang/String;I)V

    .line 34
    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->WAIT_REGISTERED:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    .line 36
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    const-string/jumbo v1, "REGISTERED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;-><init>(Ljava/lang/String;I)V

    .line 37
    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->REGISTERED:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    .line 39
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    const-string/jumbo v1, "WAIT_USER_UNBINDED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;-><init>(Ljava/lang/String;I)V

    .line 40
    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->WAIT_USER_UNBINDED:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    .line 14
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->INIT:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->CONNECTED:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->WAIT_DEVICE_BINDED:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->DEVICE_BINDED:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->WAIT_USER_BINDED:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->USER_BINDED:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->WAIT_REGISTERED:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->REGISTERED:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->WAIT_USER_UNBINDED:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->ENUM$VALUES:[Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;->ENUM$VALUES:[Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

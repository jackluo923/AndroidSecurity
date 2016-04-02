.class final enum Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;

.field public static final enum FAILED:Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;

.field public static final enum FINISHED:Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;

.field public static final enum GOING_LEFT:Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;

.field public static final enum GOING_RIGHT:Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;

.field public static final enum UNSET:Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;

    const-string v1, "UNSET"

    invoke-direct {v0, v1, v2}, Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;->UNSET:Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;

    new-instance v0, Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;

    const-string v1, "GOING_RIGHT"

    invoke-direct {v0, v1, v3}, Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;->GOING_RIGHT:Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;

    new-instance v0, Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;

    const-string v1, "GOING_LEFT"

    invoke-direct {v0, v1, v4}, Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;->GOING_LEFT:Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;

    new-instance v0, Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;

    const-string v1, "FINISHED"

    invoke-direct {v0, v1, v5}, Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;->FINISHED:Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;

    new-instance v0, Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v6}, Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;->FAILED:Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;

    sget-object v1, Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;->UNSET:Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;->GOING_RIGHT:Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;->GOING_LEFT:Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;->FINISHED:Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;->FAILED:Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;->ENUM$VALUES:[Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;
    .locals 1

    const-class v0, Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;

    return-object v0
.end method

.method public static values()[Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;->ENUM$VALUES:[Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;

    array-length v1, v0

    new-array v2, v1, [Lcom/adsdk/sdk/mraid/AdAlertGestureListener$ZigZagState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

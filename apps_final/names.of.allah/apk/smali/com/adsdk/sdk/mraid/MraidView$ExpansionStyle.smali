.class public final enum Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DISABLED:Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;

.field public static final enum ENABLED:Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;

.field private static final synthetic ENUM$VALUES:[Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;

    const-string v1, "ENABLED"

    invoke-direct {v0, v1, v2}, Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;->ENABLED:Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;

    new-instance v0, Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;

    const-string v1, "DISABLED"

    invoke-direct {v0, v1, v3}, Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;->DISABLED:Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;

    sget-object v1, Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;->ENABLED:Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;->DISABLED:Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;

    aput-object v1, v0, v3

    sput-object v0, Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;->ENUM$VALUES:[Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;
    .locals 1

    const-class v0, Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;

    return-object v0
.end method

.method public static values()[Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;->ENUM$VALUES:[Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;

    array-length v1, v0

    new-array v2, v1, [Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

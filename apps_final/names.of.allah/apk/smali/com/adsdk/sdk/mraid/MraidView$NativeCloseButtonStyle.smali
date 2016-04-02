.class public final enum Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AD_CONTROLLED:Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;

.field public static final enum ALWAYS_HIDDEN:Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;

.field public static final enum ALWAYS_VISIBLE:Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;

.field private static final synthetic ENUM$VALUES:[Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;

    const-string v1, "ALWAYS_VISIBLE"

    invoke-direct {v0, v1, v2}, Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;->ALWAYS_VISIBLE:Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;

    new-instance v0, Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;

    const-string v1, "ALWAYS_HIDDEN"

    invoke-direct {v0, v1, v3}, Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;->ALWAYS_HIDDEN:Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;

    new-instance v0, Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;

    const-string v1, "AD_CONTROLLED"

    invoke-direct {v0, v1, v4}, Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;->AD_CONTROLLED:Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;

    sget-object v1, Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;->ALWAYS_VISIBLE:Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;->ALWAYS_HIDDEN:Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;->AD_CONTROLLED:Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;

    aput-object v1, v0, v4

    sput-object v0, Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;->ENUM$VALUES:[Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;
    .locals 1

    const-class v0, Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;

    return-object v0
.end method

.method public static values()[Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;->ENUM$VALUES:[Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;

    array-length v1, v0

    new-array v2, v1, [Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

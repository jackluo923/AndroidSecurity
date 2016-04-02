.class public final enum Lcom/adsdk/sdk/data/ClickType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adsdk/sdk/data/ClickType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BROWSER:Lcom/adsdk/sdk/data/ClickType;

.field private static final synthetic ENUM$VALUES:[Lcom/adsdk/sdk/data/ClickType;

.field public static final enum INAPP:Lcom/adsdk/sdk/data/ClickType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/adsdk/sdk/data/ClickType;

    const-string v1, "INAPP"

    invoke-direct {v0, v1, v2}, Lcom/adsdk/sdk/data/ClickType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adsdk/sdk/data/ClickType;->INAPP:Lcom/adsdk/sdk/data/ClickType;

    new-instance v0, Lcom/adsdk/sdk/data/ClickType;

    const-string v1, "BROWSER"

    invoke-direct {v0, v1, v3}, Lcom/adsdk/sdk/data/ClickType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adsdk/sdk/data/ClickType;->BROWSER:Lcom/adsdk/sdk/data/ClickType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/adsdk/sdk/data/ClickType;

    sget-object v1, Lcom/adsdk/sdk/data/ClickType;->INAPP:Lcom/adsdk/sdk/data/ClickType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adsdk/sdk/data/ClickType;->BROWSER:Lcom/adsdk/sdk/data/ClickType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/adsdk/sdk/data/ClickType;->ENUM$VALUES:[Lcom/adsdk/sdk/data/ClickType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getValue(Ljava/lang/String;)Lcom/adsdk/sdk/data/ClickType;
    .locals 5

    invoke-static {}, Lcom/adsdk/sdk/data/ClickType;->values()[Lcom/adsdk/sdk/data/ClickType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/adsdk/sdk/data/ClickType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adsdk/sdk/data/ClickType;
    .locals 1

    const-class v0, Lcom/adsdk/sdk/data/ClickType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adsdk/sdk/data/ClickType;

    return-object v0
.end method

.method public static values()[Lcom/adsdk/sdk/data/ClickType;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/adsdk/sdk/data/ClickType;->ENUM$VALUES:[Lcom/adsdk/sdk/data/ClickType;

    array-length v1, v0

    new-array v2, v1, [Lcom/adsdk/sdk/data/ClickType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

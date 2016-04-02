.class public Lmobi/monaca/framework/nativeui/UIGravity;
.super Ljava/lang/Object;
.source "UIGravity.java"


# static fields
.field public static final HORIZONTAL_POSITIONS:[Ljava/lang/String;

.field public static final VERTICAL_POSITIONS:[Ljava/lang/String;

.field private static final horizontalGravities:[I

.field private static horizontalGravityMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final verticalGravities:[I

.field private static verticalGravityMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x3

    .line 13
    new-array v0, v2, [Ljava/lang/String;

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_gravity_left:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_gravity_center:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_gravity_right:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lmobi/monaca/framework/nativeui/UIGravity;->HORIZONTAL_POSITIONS:[Ljava/lang/String;

    .line 17
    new-array v0, v2, [Ljava/lang/String;

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_gravity_top:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_gravity_center:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sget v1, Lmobi/monaca/framework/psedo/R$string;->nc_gravity_bottom:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lmobi/monaca/framework/nativeui/UIGravity;->VERTICAL_POSITIONS:[Ljava/lang/String;

    .line 22
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lmobi/monaca/framework/nativeui/UIGravity;->horizontalGravities:[I

    .line 23
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lmobi/monaca/framework/nativeui/UIGravity;->verticalGravities:[I

    return-void

    .line 22
    nop

    :array_0
    .array-data 4
        0x3
        0x1
        0x5
    .end array-data

    .line 23
    :array_1
    .array-data 4
        0x30
        0x10
        0x50
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHorizontalGravity(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "position"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-static {}, Lmobi/monaca/framework/nativeui/UIGravity;->initHorizontalMap()V

    .line 47
    sget-object v0, Lmobi/monaca/framework/nativeui/UIGravity;->horizontalGravityMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public static getVerticalGravity(Ljava/lang/String;)I
    .locals 1
    .param p0, "position"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-static {}, Lmobi/monaca/framework/nativeui/UIGravity;->initVerticalMap()V

    .line 57
    sget-object v0, Lmobi/monaca/framework/nativeui/UIGravity;->verticalGravityMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static hasHorizontalGravity(Ljava/lang/String;)Z
    .locals 1
    .param p0, "position"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-static {}, Lmobi/monaca/framework/nativeui/UIGravity;->initHorizontalMap()V

    .line 52
    sget-object v0, Lmobi/monaca/framework/nativeui/UIGravity;->horizontalGravityMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static hasVerticalGravity(Ljava/lang/String;)Z
    .locals 1
    .param p0, "position"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-static {}, Lmobi/monaca/framework/nativeui/UIGravity;->initVerticalMap()V

    .line 62
    sget-object v0, Lmobi/monaca/framework/nativeui/UIGravity;->verticalGravityMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static initHorizontalMap()V
    .locals 4

    .prologue
    .line 26
    sget-object v1, Lmobi/monaca/framework/nativeui/UIGravity;->horizontalGravityMap:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 27
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lmobi/monaca/framework/nativeui/UIGravity;->horizontalGravityMap:Ljava/util/HashMap;

    .line 28
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lmobi/monaca/framework/nativeui/UIGravity;->HORIZONTAL_POSITIONS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 29
    sget-object v1, Lmobi/monaca/framework/nativeui/UIGravity;->horizontalGravityMap:Ljava/util/HashMap;

    sget-object v2, Lmobi/monaca/framework/nativeui/UIGravity;->HORIZONTAL_POSITIONS:[Ljava/lang/String;

    aget-object v2, v2, v0

    sget-object v3, Lmobi/monaca/framework/nativeui/UIGravity;->horizontalGravities:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method

.method private static initVerticalMap()V
    .locals 4

    .prologue
    .line 36
    sget-object v1, Lmobi/monaca/framework/nativeui/UIGravity;->verticalGravityMap:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 37
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lmobi/monaca/framework/nativeui/UIGravity;->verticalGravityMap:Ljava/util/HashMap;

    .line 38
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lmobi/monaca/framework/nativeui/UIGravity;->VERTICAL_POSITIONS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 39
    sget-object v1, Lmobi/monaca/framework/nativeui/UIGravity;->verticalGravityMap:Ljava/util/HashMap;

    sget-object v2, Lmobi/monaca/framework/nativeui/UIGravity;->VERTICAL_POSITIONS:[Ljava/lang/String;

    aget-object v2, v2, v0

    sget-object v3, Lmobi/monaca/framework/nativeui/UIGravity;->verticalGravities:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    :cond_0
    return-void
.end method

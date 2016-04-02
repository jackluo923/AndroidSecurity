.class public final enum Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
.super Ljava/lang/Enum;
.source "ImageScaleType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

.field public static final enum EXACT:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

.field public static final enum EXACTLY_STRETCHED:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

.field public static final enum IN_SAMPLE_INT:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

.field public static final enum IN_SAMPLE_POWER_OF_2:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

.field public static final enum POWER_OF_2:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 19
    new-instance v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    const-string v1, "POWER_OF_2"

    invoke-direct {v0, v1, v3}, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->POWER_OF_2:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 28
    new-instance v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    const-string v1, "IN_SAMPLE_POWER_OF_2"

    invoke-direct {v0, v1, v4}, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->IN_SAMPLE_POWER_OF_2:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 34
    new-instance v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    const-string v1, "EXACT"

    invoke-direct {v0, v1, v5}, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACT:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 41
    new-instance v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    const-string v1, "IN_SAMPLE_INT"

    invoke-direct {v0, v1, v6}, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->IN_SAMPLE_INT:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 52
    new-instance v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    const-string v1, "EXACTLY"

    invoke-direct {v0, v1, v7}, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 65
    new-instance v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    const-string v1, "EXACTLY_STRETCHED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY_STRETCHED:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 13
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->POWER_OF_2:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->IN_SAMPLE_POWER_OF_2:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACT:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->IN_SAMPLE_INT:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY_STRETCHED:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->$VALUES:[Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 13
    const-class v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    return-object v0
.end method

.method public static values()[Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->$VALUES:[Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    invoke-virtual {v0}, [Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    return-object v0
.end method

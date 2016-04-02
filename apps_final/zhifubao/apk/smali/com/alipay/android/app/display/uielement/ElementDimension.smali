.class public final enum Lcom/alipay/android/app/display/uielement/ElementDimension;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/android/app/display/uielement/ElementDimension;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AUTO:Lcom/alipay/android/app/display/uielement/ElementDimension;

.field public static final enum FIX:Lcom/alipay/android/app/display/uielement/ElementDimension;

.field public static final enum STAR:Lcom/alipay/android/app/display/uielement/ElementDimension;

.field private static final synthetic b:[Lcom/alipay/android/app/display/uielement/ElementDimension;


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/alipay/android/app/display/uielement/ElementDimension;

    const-string/jumbo v1, "STAR"

    const-string/jumbo v2, "*"

    invoke-direct {v0, v1, v3, v2}, Lcom/alipay/android/app/display/uielement/ElementDimension;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/display/uielement/ElementDimension;->STAR:Lcom/alipay/android/app/display/uielement/ElementDimension;

    new-instance v0, Lcom/alipay/android/app/display/uielement/ElementDimension;

    const-string/jumbo v1, "AUTO"

    const-string/jumbo v2, "auto"

    invoke-direct {v0, v1, v4, v2}, Lcom/alipay/android/app/display/uielement/ElementDimension;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/display/uielement/ElementDimension;->AUTO:Lcom/alipay/android/app/display/uielement/ElementDimension;

    new-instance v0, Lcom/alipay/android/app/display/uielement/ElementDimension;

    const-string/jumbo v1, "FIX"

    const-string/jumbo v2, "fix"

    invoke-direct {v0, v1, v5, v2}, Lcom/alipay/android/app/display/uielement/ElementDimension;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/display/uielement/ElementDimension;->FIX:Lcom/alipay/android/app/display/uielement/ElementDimension;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alipay/android/app/display/uielement/ElementDimension;

    sget-object v1, Lcom/alipay/android/app/display/uielement/ElementDimension;->STAR:Lcom/alipay/android/app/display/uielement/ElementDimension;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/android/app/display/uielement/ElementDimension;->AUTO:Lcom/alipay/android/app/display/uielement/ElementDimension;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/android/app/display/uielement/ElementDimension;->FIX:Lcom/alipay/android/app/display/uielement/ElementDimension;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alipay/android/app/display/uielement/ElementDimension;->b:[Lcom/alipay/android/app/display/uielement/ElementDimension;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/alipay/android/app/display/uielement/ElementDimension;->a:Ljava/lang/String;

    return-void
.end method

.method static a(Ljava/lang/String;)Lcom/alipay/android/app/display/uielement/ElementDimension;
    .locals 5

    invoke-static {}, Lcom/alipay/android/app/display/uielement/ElementDimension;->values()[Lcom/alipay/android/app/display/uielement/ElementDimension;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget-object v4, v0, Lcom/alipay/android/app/display/uielement/ElementDimension;->a:Ljava/lang/String;

    invoke-static {p0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/app/display/uielement/ElementDimension;
    .locals 1

    const-class v0, Lcom/alipay/android/app/display/uielement/ElementDimension;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/display/uielement/ElementDimension;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/app/display/uielement/ElementDimension;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/display/uielement/ElementDimension;->b:[Lcom/alipay/android/app/display/uielement/ElementDimension;

    invoke-virtual {v0}, [Lcom/alipay/android/app/display/uielement/ElementDimension;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/app/display/uielement/ElementDimension;

    return-object v0
.end method

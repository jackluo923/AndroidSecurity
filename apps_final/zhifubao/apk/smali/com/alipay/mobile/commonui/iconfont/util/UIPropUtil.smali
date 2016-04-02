.class public Lcom/alipay/mobile/commonui/iconfont/util/UIPropUtil;
.super Ljava/lang/Object;


# static fields
.field public static final INVALID_DIMEN:F = -1.0f

.field static final SPLITER:Ljava/lang/String; = " "

.field private static a:Landroid/util/DisplayMetrics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/commonui/iconfont/util/UIPropUtil;->a:Landroid/util/DisplayMetrics;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertDipToPx(Landroid/content/Context;F)F
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/alipay/mobile/commonui/iconfont/util/UIPropUtil;->getDensity(Landroid/content/Context;Z)F

    move-result v0

    mul-float/2addr v0, p1

    return v0
.end method

.method public static convertSpToPx(Landroid/content/Context;F)F
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/alipay/mobile/commonui/iconfont/util/UIPropUtil;->getDensity(Landroid/content/Context;Z)F

    move-result v0

    mul-float/2addr v0, p1

    return v0
.end method

.method public static varargs genTextSelector(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/res/ColorStateList;
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x4

    const/4 v4, 0x1

    const/4 v8, 0x2

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    array-length v0, p1

    if-lez v0, :cond_2

    const/4 v0, 0x5

    const/4 v1, 0x5

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    new-array v5, v9, [I

    move v1, v2

    move v3, v4

    :goto_0
    array-length v6, p1

    if-ge v1, v6, :cond_1

    aget-object v6, p1, v1

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    packed-switch v1, :pswitch_data_0

    :goto_1
    move v3, v2

    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_0
    new-array v3, v9, [I

    fill-array-data v3, :array_0

    aput-object v3, v0, v2

    invoke-static {v6}, Lcom/alipay/mobile/commonui/iconfont/util/UIPropUtil;->getColorByValue(Ljava/lang/String;)I

    move-result v3

    aput v3, v5, v2

    move v3, v2

    goto :goto_2

    :pswitch_1
    new-array v3, v8, [I

    fill-array-data v3, :array_1

    aput-object v3, v0, v4

    invoke-static {v6}, Lcom/alipay/mobile/commonui/iconfont/util/UIPropUtil;->getColorByValue(Ljava/lang/String;)I

    move-result v3

    aput v3, v5, v4

    new-array v3, v8, [I

    fill-array-data v3, :array_2

    aput-object v3, v0, v8

    invoke-static {v6}, Lcom/alipay/mobile/commonui/iconfont/util/UIPropUtil;->getColorByValue(Ljava/lang/String;)I

    move-result v3

    aput v3, v5, v8

    new-array v3, v8, [I

    fill-array-data v3, :array_3

    aput-object v3, v0, v10

    invoke-static {v6}, Lcom/alipay/mobile/commonui/iconfont/util/UIPropUtil;->getColorByValue(Ljava/lang/String;)I

    move-result v3

    aput v3, v5, v10

    move v3, v2

    goto :goto_2

    :pswitch_2
    new-array v3, v4, [I

    const v7, -0x101009e

    aput v7, v3, v2

    aput-object v3, v0, v9

    invoke-static {v6}, Lcom/alipay/mobile/commonui/iconfont/util/UIPropUtil;->getColorByValue(Ljava/lang/String;)I

    move-result v3

    aput v3, v5, v9

    goto :goto_1

    :cond_1
    if-nez v3, :cond_2

    new-instance v1, Landroid/content/res/ColorStateList;

    invoke-direct {v1, v0, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object v0, v1

    :goto_3
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :array_0
    .array-data 4
        0x101009e
        -0x10100a7
        -0x101009c
        -0x10100a1
    .end array-data

    :array_1
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data

    :array_2
    .array-data 4
        0x101009e
        0x101009c
    .end array-data

    :array_3
    .array-data 4
        0x101009e
        0x10100a1
    .end array-data
.end method

.method public static getColorByValue(Ljava/lang/String;)I
    .locals 5

    const/4 v1, 0x0

    const-string/jumbo v0, "rgb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    new-array v2, v0, [I

    const-string/jumbo v0, "("

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string/jumbo v3, ")"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v0, v1

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    aget v0, v2, v1

    const/4 v1, 0x1

    aget v1, v2, v1

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    :goto_1
    return v0

    :cond_1
    const-string/jumbo v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_1
.end method

.method public static declared-synchronized getDensity(Landroid/content/Context;Z)F
    .locals 3

    const-class v1, Lcom/alipay/mobile/commonui/iconfont/util/UIPropUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/commonui/iconfont/util/UIPropUtil;->a:Landroid/util/DisplayMetrics;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v0, Lcom/alipay/mobile/commonui/iconfont/util/UIPropUtil;->a:Landroid/util/DisplayMetrics;

    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/commonui/iconfont/util/UIPropUtil;->a:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Lcom/alipay/mobile/commonui/iconfont/util/UIPropUtil;->a:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    :try_start_1
    sget-object v0, Lcom/alipay/mobile/commonui/iconfont/util/UIPropUtil;->a:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getPx(Ljava/lang/String;Landroid/content/Context;)F
    .locals 3

    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    const-string/jumbo v1, "dp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    const-string/jumbo v2, "dp"

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {p1, v1}, Lcom/alipay/mobile/commonui/iconfont/util/UIPropUtil;->convertDipToPx(Landroid/content/Context;F)F

    move-result v0

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "sp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    const-string/jumbo v2, "sp"

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {p1, v1}, Lcom/alipay/mobile/commonui/iconfont/util/UIPropUtil;->convertSpToPx(Landroid/content/Context;F)F

    move-result v0

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "px"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    const-string/jumbo v2, "px"

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    goto :goto_0

    :cond_4
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {p1, v1}, Lcom/alipay/mobile/commonui/iconfont/util/UIPropUtil;->convertDipToPx(Landroid/content/Context;F)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

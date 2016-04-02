.class public Lcom/alipay/android/app/template/ResUtils;
.super Ljava/lang/Object;
.source "ResUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAnimId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 16
    const-string/jumbo v0, "anim"

    invoke-static {p0, p1, v0}, Lcom/alipay/android/app/template/ResUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getColorId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 20
    const-string/jumbo v0, "color"

    invoke-static {p0, p1, v0}, Lcom/alipay/android/app/template/ResUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getDimenId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 24
    const-string/jumbo v0, "dimen"

    invoke-static {p0, p1, v0}, Lcom/alipay/android/app/template/ResUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getDrawableId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 28
    const-string/jumbo v0, "drawable"

    invoke-static {p0, p1, v0}, Lcom/alipay/android/app/template/ResUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 12
    const-string/jumbo v0, "id"

    invoke-static {p0, p1, v0}, Lcom/alipay/android/app/template/ResUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getLayoutId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 32
    const-string/jumbo v0, "layout"

    invoke-static {p0, p1, v0}, Lcom/alipay/android/app/template/ResUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    const-string/jumbo v0, "com.alipay.android.app.template"

    return-object v0
.end method

.method public static getRawId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 66
    const-string/jumbo v0, "raw"

    invoke-static {p0, p1, v0}, Lcom/alipay/android/app/template/ResUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static final getResourceDeclareStyleableIntArray(Landroid/content/Context;Ljava/lang/String;)[I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 86
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/alipay/android/app/template/ResUtils;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ".R$styleable"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 85
    array-length v3, v2

    const/4 v0, 0x0

    .line 89
    :goto_0
    if-lt v0, v3, :cond_0

    :goto_1
    move-object v0, v1

    .line 100
    :goto_2
    return-object v0

    .line 85
    :cond_0
    aget-object v4, v2, v0

    .line 91
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 93
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 89
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 105
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 106
    invoke-static {p0}, Lcom/alipay/android/app/template/ResUtils;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 109
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 115
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 118
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getStringId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 36
    const-string/jumbo v0, "string"

    invoke-static {p0, p1, v0}, Lcom/alipay/android/app/template/ResUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getStyleId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 40
    const-string/jumbo v0, "style"

    invoke-static {p0, p1, v0}, Lcom/alipay/android/app/template/ResUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getStyleableId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 45
    invoke-static {p0}, Lcom/alipay/android/app/template/ResUtils;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 47
    :try_start_0
    const-string/jumbo v0, "styleable"

    invoke-static {p0, p1, v0}, Lcom/alipay/android/app/template/ResUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 48
    if-lez v0, :cond_0

    .line 55
    :goto_0
    return v0

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, ".R$styleable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 56
    const-string/jumbo v2, "styleable"

    invoke-virtual {v1, p1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static getStyleableIds(Landroid/content/Context;Ljava/lang/String;)[I
    .locals 1

    .prologue
    .line 78
    invoke-static {p0, p1}, Lcom/alipay/android/app/template/ResUtils;->getResourceDeclareStyleableIntArray(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public static getXmlId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 62
    const-string/jumbo v0, "xml"

    invoke-static {p0, p1, v0}, Lcom/alipay/android/app/template/ResUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

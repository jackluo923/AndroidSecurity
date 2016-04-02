.class public Lcom/alipay/android/app/template/view/widget/TSelector;
.super Lcom/alipay/android/app/template/view/widget/TBaseComponent;
.source "TSelector.java"


# static fields
.field private static r:Ljava/lang/String;


# instance fields
.field private d:Lcom/alipay/android/app/template/view/widget/TSelector$Options;

.field private p:I

.field private q:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 130
    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/android/app/template/view/widget/TSelector;->r:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/app/template/util/TemplateLayoutParams;Lcom/alipay/android/app/template/TemplateWindow;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/template/view/widget/TBaseComponent;-><init>(Lcom/alipay/android/app/template/util/TemplateLayoutParams;Lcom/alipay/android/app/template/TemplateWindow;)V

    .line 28
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TSelector;->q:Ljava/lang/String;

    .line 32
    new-instance v0, Lcom/alipay/android/app/template/view/widget/TSelector$Options;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/template/view/widget/TSelector$Options;-><init>(Lcom/alipay/android/app/template/view/widget/TSelector;)V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TSelector;->d:Lcom/alipay/android/app/template/view/widget/TSelector$Options;

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/template/view/widget/TSelector;)V
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TSelector;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onInputScript:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TSelector;->k:Lcom/alipay/android/app/template/TemplateWindow;

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TSelector;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onInputScript:Ljava/lang/String;

    sget-object v2, Lcom/alipay/android/app/template/ScriptPropertyType;->oninput:Lcom/alipay/android/app/template/ScriptPropertyType;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/template/TemplateWindow;->executePropertyScript(Ljava/lang/String;Lcom/alipay/android/app/template/ScriptPropertyType;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TSelector;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TSelector;->k:Lcom/alipay/android/app/template/TemplateWindow;

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TSelector;->q:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/template/TemplateWindow;->callJsMethod(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/alipay/android/app/template/view/widget/TSelector;->r:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 130
    sput-object p0, Lcom/alipay/android/app/template/view/widget/TSelector;->r:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method final a(Landroid/app/Activity;)V
    .locals 5

    .prologue
    const/high16 v4, 0x20000000

    .line 37
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 39
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TSelector;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textSize:I

    sget v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    if-ne v0, v3, :cond_0

    const/high16 v0, 0x41400000    # 12.0f

    sget v3, Lcom/alipay/android/app/template/util/UiUtil;->DP:F

    mul-float/2addr v0, v3

    :goto_0
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 40
    const-string/jumbo v0, "\u9009\u62e9\u8bc1\u4ef6\u7c7b\u578b"

    .line 41
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    .line 42
    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    .line 43
    iget-object v3, p0, Lcom/alipay/android/app/template/view/widget/TSelector;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    invoke-static {v0, v4}, Lcom/alipay/android/app/template/util/TemplateUnitSpec;->makeUnitSpec(II)I

    move-result v0

    iput v0, v3, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->widthStr:I

    .line 44
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TSelector;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v3, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float v2, v3, v2

    float-to-int v2, v2

    invoke-static {v2, v4}, Lcom/alipay/android/app/template/util/TemplateUnitSpec;->makeUnitSpec(II)I

    move-result v2

    iput v2, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->heightStr:I

    .line 45
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TSelector;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iput-object v1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    .line 46
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TSelector;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textSize:I

    invoke-static {v0}, Lcom/alipay/android/app/template/util/UiUtil;->convertPxToDp(I)I

    move-result v0

    int-to-float v0, v0

    goto :goto_0
.end method

.method public fillElementView(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TSelector;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    return-void
.end method

.method public getOffsetHeight()I
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TSelector;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->heightStr:I

    invoke-static {v0}, Lcom/alipay/android/app/template/util/TemplateUnitSpec;->getValue(I)I

    move-result v0

    int-to-float v0, v0

    sget v1, Lcom/alipay/android/app/template/util/UiUtil;->DP:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getOffsetWidth()I
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TSelector;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->widthStr:I

    invoke-static {v0}, Lcom/alipay/android/app/template/util/TemplateUnitSpec;->getValue(I)I

    move-result v0

    int-to-float v0, v0

    sget v1, Lcom/alipay/android/app/template/util/UiUtil;->DP:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getOptions()Lcom/alipay/android/app/template/view/widget/TSelector$Options;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TSelector;->d:Lcom/alipay/android/app/template/view/widget/TSelector$Options;

    return-object v0
.end method

.method public getSelectIndex()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/TSelector;->p:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->onClick(Landroid/view/View;)V

    .line 127
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TSelector;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TSelector;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "\u9009\u62e9\u8bc1\u4ef6\u7c7b\u578b"

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TSelector;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v3

    if-lt v1, v0, :cond_1

    new-instance v0, Lcom/alipay/android/app/template/view/widget/TSelector$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/template/view/widget/TSelector$1;-><init>(Lcom/alipay/android/app/template/view/widget/TSelector;)V

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 128
    :cond_0
    return-void

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TSelector;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/view/widget/TElement;

    iget-object v0, v0, Lcom/alipay/android/app/template/view/widget/TElement;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->text:Ljava/lang/String;

    aput-object v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public putJsConfig(Lcom/alipay/android/app/template/TScriptConfigHelper;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 51
    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->putJsConfig(Lcom/alipay/android/app/template/TScriptConfigHelper;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "getOptions"

    new-array v2, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 53
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TSelector;->getJsObjName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "options"

    invoke-virtual {p1, v1, v2, v0, v7}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "getSelectIndex"

    new-array v2, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "setSelectIndex"

    new-array v3, v6, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 57
    const-string/jumbo v2, "selectedIndex"

    invoke-virtual {p1, p2, v2, v0, v1}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "setOninput"

    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 60
    const-string/jumbo v1, "oninput"

    invoke-virtual {p1, p2, v1, v7, v0}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 61
    return-void
.end method

.method public setOninput(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alipay/android/app/template/view/widget/TSelector;->q:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setSelectIndex(I)V
    .locals 0

    .prologue
    .line 72
    iput p1, p0, Lcom/alipay/android/app/template/view/widget/TSelector;->p:I

    .line 73
    return-void
.end method

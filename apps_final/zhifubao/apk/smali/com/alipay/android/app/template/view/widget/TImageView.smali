.class public Lcom/alipay/android/app/template/view/widget/TImageView;
.super Lcom/alipay/android/app/template/view/widget/TElement;
.source "TImageView.java"


# static fields
.field private static synthetic b:[I


# instance fields
.field private a:Lcom/alipay/android/app/template/view/widget/ClipImageView;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/template/util/TemplateLayoutParams;Lcom/alipay/android/app/template/TemplateWindow;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/template/view/widget/TElement;-><init>(Lcom/alipay/android/app/template/util/TemplateLayoutParams;Lcom/alipay/android/app/template/TemplateWindow;)V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TImageView;->a:Lcom/alipay/android/app/template/view/widget/ClipImageView;

    .line 21
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 88
    const-string/jumbo v0, "indicatior"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TImageView;->a:Lcom/alipay/android/app/template/view/widget/ClipImageView;

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TImageView;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/TemplateWindow;->getContext()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "indicatior_loading"

    invoke-static {v1, v2}, Lcom/alipay/android/app/template/ResUtils;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/view/widget/ClipImageView;->setImageResource(I)V

    .line 95
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TImageView;->a:Lcom/alipay/android/app/template/view/widget/ClipImageView;

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TImageView;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->src:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/alipay/android/app/template/view/widget/TImageView;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TImageView;->getWidth()I

    move-result v2

    .line 92
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TImageView;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alipay/android/app/template/view/widget/TImageView;->a:Lcom/alipay/android/app/template/view/widget/ClipImageView;

    invoke-virtual {v5}, Lcom/alipay/android/app/template/view/widget/ClipImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    .line 93
    iget-object v7, p0, Lcom/alipay/android/app/template/view/widget/TImageView;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v7, v7, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->defaultValue:Ljava/lang/String;

    iget-object v8, p0, Lcom/alipay/android/app/template/view/widget/TImageView;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v8, v8, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->failureValue:Ljava/lang/String;

    iget-object v9, p0, Lcom/alipay/android/app/template/view/widget/TImageView;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v9, v9, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->blurRadius:I

    .line 91
    invoke-static/range {v0 .. v9}, Lcom/alipay/android/app/template/util/UiUtil;->loadImage(Landroid/view/View;Ljava/lang/String;IILjava/lang/String;Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private static synthetic c()[I
    .locals 3

    .prologue
    .line 16
    sget-object v0, Lcom/alipay/android/app/template/view/widget/TImageView;->b:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/android/app/template/view/TScaleType;->values()[Lcom/alipay/android/app/template/view/TScaleType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/alipay/android/app/template/view/TScaleType;->Center:Lcom/alipay/android/app/template/view/TScaleType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/TScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/alipay/android/app/template/view/TScaleType;->ScaleAspectAuto:Lcom/alipay/android/app/template/view/TScaleType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/TScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/alipay/android/app/template/view/TScaleType;->ScaleAspectFill:Lcom/alipay/android/app/template/view/TScaleType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/TScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/alipay/android/app/template/view/TScaleType;->ScaleAspectFit:Lcom/alipay/android/app/template/view/TScaleType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/TScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/alipay/android/app/template/view/TScaleType;->ScaleToFill:Lcom/alipay/android/app/template/view/TScaleType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/TScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/alipay/android/app/template/view/widget/TImageView;->b:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method final a(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcom/alipay/android/app/template/view/widget/ClipImageView;

    invoke-direct {v0, p1}, Lcom/alipay/android/app/template/view/widget/ClipImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TImageView;->a:Lcom/alipay/android/app/template/view/widget/ClipImageView;

    .line 27
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TImageView;->a:Lcom/alipay/android/app/template/view/widget/ClipImageView;

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TImageView;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v1, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->borderRadius:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/view/widget/ClipImageView;->setBorderRadius(F)V

    .line 28
    invoke-static {}, Lcom/alipay/android/app/template/view/widget/TImageView;->c()[I

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TImageView;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->scaleType:Lcom/alipay/android/app/template/view/TScaleType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/TScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 43
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TImageView;->a:Lcom/alipay/android/app/template/view/widget/ClipImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/view/widget/ClipImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 46
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TImageView;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TImageView;->a:Lcom/alipay/android/app/template/view/widget/ClipImageView;

    iput-object v1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    .line 47
    return-void

    .line 30
    :pswitch_0
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TImageView;->a:Lcom/alipay/android/app/template/view/widget/ClipImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/view/widget/ClipImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 33
    :pswitch_1
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TImageView;->a:Lcom/alipay/android/app/template/view/widget/ClipImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/view/widget/ClipImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 36
    :pswitch_2
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TImageView;->a:Lcom/alipay/android/app/template/view/widget/ClipImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/view/widget/ClipImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 39
    :pswitch_3
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TImageView;->a:Lcom/alipay/android/app/template/view/widget/ClipImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/view/widget/ClipImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 28
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method final a(Landroid/app/Activity;Z)V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/template/view/widget/TElement;->a(Landroid/app/Activity;Z)V

    .line 53
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TImageView;->a:Lcom/alipay/android/app/template/view/widget/ClipImageView;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/ClipImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TImageView;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->src:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/view/widget/TImageView;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TImageView;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->src:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/view/widget/TImageView;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-direct {p0, v0}, Lcom/alipay/android/app/template/view/widget/TImageView;->c(Ljava/lang/String;)V

    .line 57
    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 114
    invoke-super {p0}, Lcom/alipay/android/app/template/view/widget/TElement;->destroy()V

    .line 115
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TImageView;->a:Lcom/alipay/android/app/template/view/widget/ClipImageView;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/view/widget/ClipImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 116
    iput-object v1, p0, Lcom/alipay/android/app/template/view/widget/TImageView;->a:Lcom/alipay/android/app/template/view/widget/ClipImageView;

    .line 117
    return-void
.end method

.method public getDefaultValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TImageView;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->defaultValue:Ljava/lang/String;

    return-object v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TImageView;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->src:Ljava/lang/String;

    return-object v0
.end method

.method public putJsConfig(Lcom/alipay/android/app/template/TScriptConfigHelper;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 62
    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/template/view/widget/TElement;->putJsConfig(Lcom/alipay/android/app/template/TScriptConfigHelper;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "setSrc"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "getSrc"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 65
    const-string/jumbo v2, "src"

    invoke-virtual {p1, p2, v2, v1, v0}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "setDefaultValue"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "getDefaultValue"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 69
    const-string/jumbo v2, "defaultvalue"

    invoke-virtual {p1, p2, v2, v1, v0}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 70
    return-void
.end method

.method public setDefaultValue(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TImageView;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iput-object p1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->defaultValue:Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TImageView;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->failureValue:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TImageView;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iput-object p1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->failureValue:Ljava/lang/String;

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TImageView;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->isExecutedOnload()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TImageView;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->src:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/view/widget/TImageView;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-direct {p0, v0}, Lcom/alipay/android/app/template/view/widget/TImageView;->c(Ljava/lang/String;)V

    .line 81
    :cond_1
    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TImageView;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iput-object p1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->src:Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TImageView;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->isExecutedOnload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    invoke-direct {p0, p1}, Lcom/alipay/android/app/template/view/widget/TImageView;->c(Ljava/lang/String;)V

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TImageView;->a:Lcom/alipay/android/app/template/view/widget/ClipImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/view/widget/ClipImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

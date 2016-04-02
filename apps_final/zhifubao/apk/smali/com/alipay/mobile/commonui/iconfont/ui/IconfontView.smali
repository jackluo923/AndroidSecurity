.class public Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;
.super Lcom/alipay/mobile/commonui/widget/APFrameLayout;

# interfaces
.implements Lcom/alipay/mobile/commonui/iconfont/IconfontInterface;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z

.field private f:Ljava/util/List;

.field private g:F

.field private h:Z

.field private i:I

.field private j:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->a:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->b:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->c:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->d:Z

    iput-boolean v2, p0, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->e:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->f:Ljava/util/List;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->g:F

    iput-boolean v2, p0, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->h:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->i:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->j:Landroid/content/res/ColorStateList;

    sget-object v0, Lcom/alipay/mobile/ui/R$styleable;->iconfontView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->setAutoSize(Z)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->setAutoColor(Z)V

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->setIconfontBundle(Ljava/lang/String;)Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;

    :cond_0
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->setIconfontFamily(Ljava/lang/String;)Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;

    :cond_1
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->setIconfontFonts(Lorg/json/JSONArray;)Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->setIconfontUnicode(Ljava/lang/String;)Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;

    :cond_3
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->setIconfontId(Ljava/lang/String;)Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;

    :cond_4
    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->getAutoSize()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_5

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->setIconfontSize(F)Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;

    :cond_5
    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->getAutoColor()Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->setIconfontColorStates(Landroid/content/res/ColorStateList;)Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;

    :cond_6
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, ""

    :cond_0
    return-object v0

    :cond_1
    const-string/jumbo v1, ""

    const-string/jumbo v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v7, v0

    move-object v0, v1

    move v1, v7

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    :try_start_0
    const-string/jumbo v5, "0x"

    const-string/jumbo v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "#"

    const-string/jumbo v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-char v4, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private a()V
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/commonui/iconfont/manager/IconfontManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/commonui/iconfont/manager/IconfontManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/iconfont/manager/IconfontManager;->setupTypeface(Lcom/alipay/mobile/commonui/iconfont/IconfontInterface;)V

    return-void
.end method

.method private a(Landroid/widget/TextView;)V
    .locals 2

    iget v0, p0, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->h:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->i:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    :goto_0
    iget v0, p0, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->g:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->g:F

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->j:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->j:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/commonui/iconfont/manager/IconfontManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/commonui/iconfont/manager/IconfontManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/iconfont/manager/IconfontManager;->registerIconfontView(Lcom/alipay/mobile/commonui/iconfont/IconfontInterface;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/commonui/iconfont/manager/IconfontManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/commonui/iconfont/manager/IconfontManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/iconfont/manager/IconfontManager;->unRegisterIconfontView(Lcom/alipay/mobile/commonui/iconfont/IconfontInterface;)V

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/commonui/iconfont/manager/IconfontManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/commonui/iconfont/manager/IconfontManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/iconfont/manager/IconfontManager;->unRegisterIconfontView(Lcom/alipay/mobile/commonui/iconfont/IconfontInterface;)V

    return-void
.end method

.method public getAutoColor()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->e:Z

    return v0
.end method

.method public getAutoSize()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->d:Z

    return v0
.end method

.method public getIconfontBundle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getIconfontContext()Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getIconfontFamily()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getIconfontId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->c:Ljava/lang/String;

    return-object v0
.end method

.method public setAutoColor(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->e:Z

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->getAutoColor()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->b()V

    :cond_0
    return-void
.end method

.method public setAutoSize(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->d:Z

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->getAutoSize()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->b()V

    :cond_0
    return-void
.end method

.method public setIconfontBundle(Ljava/lang/String;)Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;
    .locals 1

    iput-object p1, p0, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->a()V

    :cond_0
    return-object p0
.end method

.method public bridge synthetic setIconfontColor(Ljava/lang/String;)Lcom/alipay/mobile/commonui/iconfont/IconfontInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->setIconfontColor(Ljava/lang/String;)Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;

    move-result-object v0

    return-object v0
.end method

.method public setIconfontColor(I)Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->h:Z

    iput p1, p0, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->i:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setIconfontColor(Ljava/lang/String;)Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;
    .locals 3

    const/4 v2, 0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    const-string/jumbo v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    if-ne v1, v2, :cond_1

    invoke-static {p1}, Lcom/alipay/mobile/commonui/iconfont/util/UIPropUtil;->getColorByValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->setIconfontColor(I)Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-eqz v0, :cond_0

    array-length v1, v0

    if-le v1, v2, :cond_0

    invoke-static {}, Lcom/alipay/mobile/commonui/iconfont/util/IconfontConfig;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/mobile/commonui/iconfont/util/UIPropUtil;->genTextSelector(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->setIconfontColorStates(Landroid/content/res/ColorStateList;)Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setIconfontColorStates(Landroid/content/res/ColorStateList;)Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->h:Z

    iput-object p1, p0, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->j:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setIconfontFamily(Ljava/lang/String;)Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;
    .locals 1

    iput-object p1, p0, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->a()V

    :cond_0
    return-object p0
.end method

.method public bridge synthetic setIconfontFonts(Lorg/json/JSONArray;)Lcom/alipay/mobile/commonui/iconfont/IconfontInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->setIconfontFonts(Lorg/json/JSONArray;)Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;

    move-result-object v0

    return-object v0
.end method

.method public setIconfontFonts(Lorg/json/JSONArray;)Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;
    .locals 6

    const/4 v5, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->removeView(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_6

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string/jumbo v2, "unicode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "color"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;-><init>(Landroid/content/Context;)V

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setGravity(I)V

    invoke-static {v2}, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v3}, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->a(Landroid/widget/TextView;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    :try_start_0
    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    array-length v4, v2

    if-ne v4, v5, :cond_5

    invoke-static {v1}, Lcom/alipay/mobile/commonui/iconfont/util/UIPropUtil;->getColorByValue(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    invoke-virtual {v3, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_3
    iget-object v1, p0, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->f:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->addView(Landroid/view/View;)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_3

    :try_start_1
    array-length v1, v2

    if-le v1, v5, :cond_3

    invoke-static {}, Lcom/alipay/mobile/commonui/iconfont/util/IconfontConfig;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/alipay/mobile/commonui/iconfont/util/UIPropUtil;->genTextSelector(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v3, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(Landroid/content/res/ColorStateList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_3

    :cond_6
    invoke-direct {p0}, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->a()V

    goto/16 :goto_0
.end method

.method public setIconfontId(Ljava/lang/String;)Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->b()V

    return-object p0
.end method

.method public bridge synthetic setIconfontSize(Ljava/lang/String;)Lcom/alipay/mobile/commonui/iconfont/IconfontInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->setIconfontSize(Ljava/lang/String;)Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;

    move-result-object v0

    return-object v0
.end method

.method public setIconfontSize(F)Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;
    .locals 3

    iput p1, p0, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->g:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextSize(IF)V

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setIconfontSize(Ljava/lang/String;)Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;
    .locals 3

    const/high16 v0, -0x40800000    # -1.0f

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/commonui/iconfont/util/IconfontConfig;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/alipay/mobile/commonui/iconfont/util/UIPropUtil;->getPx(Ljava/lang/String;Landroid/content/Context;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    cmpl-float v2, v1, v0

    if-nez v2, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->setIconfontSize(F)Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;

    return-object p0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic setIconfontTypeface(Landroid/graphics/Typeface;)Lcom/alipay/mobile/commonui/iconfont/IconfontInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->setIconfontTypeface(Landroid/graphics/Typeface;)Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;

    move-result-object v0

    return-object v0
.end method

.method public setIconfontTypeface(Landroid/graphics/Typeface;)Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic setIconfontUnicode(Ljava/lang/String;)Lcom/alipay/mobile/commonui/iconfont/IconfontInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->setIconfontUnicode(Ljava/lang/String;)Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;

    move-result-object v0

    return-object v0
.end method

.method public setIconfontUnicode(Ljava/lang/String;)Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->removeView(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setGravity(I)V

    invoke-static {p1}, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v0}, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->a(Landroid/widget/TextView;)V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/alipay/mobile/commonui/iconfont/ui/IconfontView;->a()V

    goto :goto_0
.end method

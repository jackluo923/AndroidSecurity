.class public Lcom/alipay/android/app/ui/quickpay/uielement/UICheckBox;
.super Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement",
        "<",
        "Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;",
        ">;"
    }
.end annotation


# instance fields
.field protected H:Z

.field private I:Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;

.field private J:Z

.field private K:[Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UICheckBox;->J:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UICheckBox;->B:Z

    return-void
.end method


# virtual methods
.method protected final synthetic a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 7

    const/4 v1, 0x1

    const/4 v6, 0x0

    check-cast p2, Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;

    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->a(Landroid/app/Activity;Landroid/view/View;)V

    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UICheckBox;->I:Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UICheckBox;->I:Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UICheckBox;->k()F

    move-result v0

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    invoke-static {p1}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->c(Landroid/app/Activity;)F

    move-result v4

    sub-float v5, v0, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    :goto_0
    mul-float/2addr v0, v4

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float v0, v3, v0

    float-to-int v0, v0

    invoke-virtual {p2}, Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;->getPaddingRight()I

    move-result v3

    const/16 v4, 0x64

    if-le v3, v4, :cond_3

    invoke-virtual {p2}, Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;->getPaddingRight()I

    move-result v3

    add-int/2addr v3, v0

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UICheckBox;->K:[Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UICheckBox;->K:[Ljava/lang/String;

    array-length v0, v0

    if-le v0, v1, :cond_4

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UICheckBox;->K:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Landroid/content/Context;[Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    if-eqz v2, :cond_4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UICheckBox;->I:Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UICheckBox;->I:Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "mini_ui_check_mark"

    invoke-static {v3}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UICheckBox;->I:Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;

    iget-boolean v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UICheckBox;->H:Z

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;->setChecked(Z)V

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UICheckBox;->B:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UICheckBox;->I:Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "mini_checkbox_disable"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UICheckBox;->I:Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/uielement/m;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/ui/quickpay/uielement/m;-><init>(Lcom/alipay/android/app/ui/quickpay/uielement/UICheckBox;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;->setOnCheckedChangeListener(Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox$OnCheckedChangeListener;)V

    return-void

    :cond_2
    const/high16 v0, 0x41400000    # 12.0f

    goto :goto_0

    :cond_3
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public final a(Lcom/alipay/android/app/json/JSONObject;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->a(Lcom/alipay/android/app/json/JSONObject;)V

    const-string/jumbo v0, "must"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "must"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UICheckBox;->J:Z

    :cond_0
    const-string/jumbo v0, "image"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UICheckBox;->K:[Ljava/lang/String;

    const-string/jumbo v0, "image"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UICheckBox;->K:[Ljava/lang/String;

    :cond_1
    const-string/jumbo v0, "checked"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "checked"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UICheckBox;->H:Z

    :cond_2
    return-void
.end method

.method public final a()Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UICheckBox;->J:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UICheckBox;->I:Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UICheckBox;->H()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UICheckBox;->J:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UICheckBox;->I:Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public attr(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-super {p0, p1}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v1, "checked"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UICheckBox;->I:Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "true"

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "false"

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "value"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UICheckBox;->a:Ljava/lang/Object;

    if-nez v0, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UICheckBox;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public attr(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->attr(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v1, "checked"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "true"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UICheckBox;->H:Z

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UICheckBox;->I:Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;

    iget-boolean v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UICheckBox;->H:Z

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;->setChecked(Z)V

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "value"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UICheckBox;->a:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UICheckBox;->a()Z

    move-result v0

    return v0
.end method

.method public final c()Lcom/alipay/android/app/json/JSONObject;
    .locals 3

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UICheckBox;->o()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UICheckBox;->I:Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UICheckBox;->I:Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UICheckBox;->K()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UICheckBox;->a:Ljava/lang/Object;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UICheckBox;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public dispose()V
    .locals 1

    invoke-super {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UICheckBox;->I:Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;

    return-void
.end method

.method protected final p()I
    .locals 1

    const-string/jumbo v0, "mini_ui_checkbox"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

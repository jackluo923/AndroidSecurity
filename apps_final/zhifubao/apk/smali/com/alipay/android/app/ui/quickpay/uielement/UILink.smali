.class public Lcom/alipay/android/app/ui/quickpay/uielement/UILink;
.super Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement",
        "<",
        "Landroid/widget/TextView;",
        ">;"
    }
.end annotation


# instance fields
.field private H:Landroid/widget/TextView;

.field private I:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UILink;->H:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method protected final L()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UILink;->H:Landroid/widget/TextView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UILink;->H:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UILink;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UILink;->H:Landroid/widget/TextView;

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/uielement/ai;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/ui/quickpay/uielement/ai;-><init>(Lcom/alipay/android/app/ui/quickpay/uielement/UILink;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected final synthetic a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x1

    check-cast p2, Landroid/widget/TextView;

    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->a(Landroid/app/Activity;Landroid/view/View;)V

    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UILink;->H:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UILink;->H:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UILink;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UILink;->s()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "<u>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UILink;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "</u>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UILink;->I:[Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UILink;->I:[Ljava/lang/String;

    array-length v0, v0

    if-le v0, v2, :cond_4

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UILink;->I:[Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a([Ljava/lang/String;)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UILink;->H:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UILink;->k()F

    move-result v0

    invoke-virtual {p2, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UILink;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UILink;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UILink;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final a(Lcom/alipay/android/app/json/JSONObject;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->a(Lcom/alipay/android/app/json/JSONObject;)V

    const-string/jumbo v0, "color"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "color"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UILink;->I:[Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final c()Lcom/alipay/android/app/json/JSONObject;
    .locals 3

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UILink;->o()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UILink;->K()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->a:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public dispose()V
    .locals 1

    invoke-super {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UILink;->H:Landroid/widget/TextView;

    return-void
.end method

.method protected final p()I
    .locals 1

    const-string/jumbo v0, "mini_ui_link"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

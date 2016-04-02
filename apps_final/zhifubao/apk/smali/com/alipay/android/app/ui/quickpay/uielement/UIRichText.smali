.class public Lcom/alipay/android/app/ui/quickpay/uielement/UIRichText;
.super Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/ui/quickpay/uielement/UIRichText$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement",
        "<",
        "Landroid/widget/TextView;",
        ">;"
    }
.end annotation


# instance fields
.field private H:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/ui/quickpay/uielement/UIRichText$a;",
            ">;"
        }
    .end annotation
.end field

.field private I:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIRichText;->I:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final synthetic a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 8

    check-cast p2, Landroid/widget/TextView;

    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->a(Landroid/app/Activity;Landroid/view/View;)V

    new-instance v2, Landroid/text/SpannableString;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIRichText;->I:Ljava/lang/String;

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/high16 v0, -0x40800000    # -1.0f

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIRichText;->H:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/uielement/UIRichText$a;

    new-instance v4, Lcom/alipay/android/app/ui/quickpay/widget/RichTextSpan;

    iget v5, v0, Lcom/alipay/android/app/ui/quickpay/uielement/UIRichText$a;->d:I

    iget v6, v0, Lcom/alipay/android/app/ui/quickpay/uielement/UIRichText$a;->e:F

    invoke-static {p1}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->c(Landroid/app/Activity;)F

    move-result v7

    mul-float/2addr v6, v7

    iget-object v7, v0, Lcom/alipay/android/app/ui/quickpay/uielement/UIRichText$a;->f:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/app/ui/quickpay/widget/RichTextSpan;-><init>(IFLjava/lang/String;)V

    iget v5, v0, Lcom/alipay/android/app/ui/quickpay/uielement/UIRichText$a;->a:I

    iget v6, v0, Lcom/alipay/android/app/ui/quickpay/uielement/UIRichText$a;->b:I

    const/16 v7, 0x21

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget v4, v0, Lcom/alipay/android/app/ui/quickpay/uielement/UIRichText$a;->e:F

    cmpg-float v4, v1, v4

    if-gez v4, :cond_2

    iget v0, v0, Lcom/alipay/android/app/ui/quickpay/uielement/UIRichText$a;->e:F

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Landroid/widget/TextView;->requestLayout()V

    return-void

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public final a(Lcom/alipay/android/app/json/JSONObject;)V
    .locals 11

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->a(Lcom/alipay/android/app/json/JSONObject;)V

    const-string/jumbo v0, "value"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "value"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONArray;

    move-result-object v5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIRichText;->H:Ljava/util/List;

    invoke-virtual {v5}, Lcom/alipay/android/app/json/JSONArray;->length()I

    move-result v6

    const/4 v0, 0x0

    move v1, v2

    move-object v3, v0

    :goto_0
    if-ge v1, v6, :cond_3

    new-instance v4, Lcom/alipay/android/app/ui/quickpay/uielement/UIRichText$a;

    invoke-direct {v4, p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIRichText$a;-><init>(Lcom/alipay/android/app/ui/quickpay/uielement/UIRichText;)V

    invoke-virtual {v5, v1}, Lcom/alipay/android/app/json/JSONArray;->optJSONObject(I)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    const-string/jumbo v7, "css"

    invoke-virtual {v0, v7}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/JsonUtil;->a(Lcom/alipay/android/app/json/JSONObject;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    const-string/jumbo v7, "css"

    invoke-virtual {v0, v7}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/alipay/android/app/ui/quickpay/uielement/UIRichText;->a(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/alipay/android/app/util/JsonUtils;->a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    :cond_0
    const-string/jumbo v7, "text"

    invoke-virtual {v0, v7}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "color"

    invoke-virtual {v0, v8}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "text-decoration"

    invoke-virtual {v0, v9}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "size"

    invoke-virtual {v0, v10}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v3, :cond_2

    iput v2, v4, Lcom/alipay/android/app/ui/quickpay/uielement/UIRichText$a;->a:I

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    iput v3, v4, Lcom/alipay/android/app/ui/quickpay/uielement/UIRichText$a;->b:I

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->c(Ljava/lang/String;)F

    move-result v0

    iput v0, v4, Lcom/alipay/android/app/ui/quickpay/uielement/UIRichText$a;->e:F

    :cond_1
    iput-object v9, v4, Lcom/alipay/android/app/ui/quickpay/uielement/UIRichText$a;->f:Ljava/lang/String;

    iput-object v7, v4, Lcom/alipay/android/app/ui/quickpay/uielement/UIRichText$a;->c:Ljava/lang/String;

    invoke-static {v8}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, v4, Lcom/alipay/android/app/ui/quickpay/uielement/UIRichText$a;->d:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIRichText;->I:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIRichText;->I:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIRichText;->H:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v3, v4

    goto/16 :goto_0

    :cond_2
    iget v3, v3, Lcom/alipay/android/app/ui/quickpay/uielement/UIRichText$a;->b:I

    iput v3, v4, Lcom/alipay/android/app/ui/quickpay/uielement/UIRichText$a;->a:I

    iget v3, v4, Lcom/alipay/android/app/ui/quickpay/uielement/UIRichText$a;->a:I

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v3, v10

    iput v3, v4, Lcom/alipay/android/app/ui/quickpay/uielement/UIRichText$a;->b:I

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final c()Lcom/alipay/android/app/json/JSONObject;
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIRichText;->o()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->dispose()V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIRichText;->H:Ljava/util/List;

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIRichText;->I:Ljava/lang/String;

    return-void
.end method

.method protected final p()I
    .locals 1

    const-string/jumbo v0, "mini_ui_richtext"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

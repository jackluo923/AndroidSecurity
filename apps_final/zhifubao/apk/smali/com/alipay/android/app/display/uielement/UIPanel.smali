.class public Lcom/alipay/android/app/display/uielement/UIPanel;
.super Lcom/alipay/android/app/display/uielement/r;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/display/uielement/r;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/display/uielement/r;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/alipay/android/app/display/uielement/ElementType;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/display/uielement/ElementType;->Panel:Lcom/alipay/android/app/display/uielement/ElementType;

    return-object v0
.end method

.method public final bridge synthetic a(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/app/display/uielement/r;->a(I)V

    return-void
.end method

.method protected a(Landroid/view/ViewGroup$LayoutParams;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/alipay/android/app/display/uielement/ElementDimension;->STAR:Lcom/alipay/android/app/display/uielement/ElementDimension;

    iget-object v0, v0, Lcom/alipay/android/app/display/uielement/ElementDimension;->a:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/alipay/android/app/display/uielement/ElementDimension;->STAR:Lcom/alipay/android/app/display/uielement/ElementDimension;

    iget-object v3, v3, Lcom/alipay/android/app/display/uielement/ElementDimension;->a:Ljava/lang/String;

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    :cond_0
    if-eqz p1, :cond_1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public final bridge synthetic a(Lcom/alipay/android/app/display/event/OnElementEventListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/app/display/uielement/r;->a(Lcom/alipay/android/app/display/event/OnElementEventListener;)V

    return-void
.end method

.method public final bridge synthetic a(Lcom/alipay/android/app/display/uielement/IUIElement;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/app/display/uielement/r;->a(Lcom/alipay/android/app/display/uielement/IUIElement;)V

    return-void
.end method

.method public final bridge synthetic a(Lcom/alipay/android/app/json/JSONObject;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/app/display/uielement/r;->a(Lcom/alipay/android/app/json/JSONObject;)V

    return-void
.end method

.method public final a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/display/uielement/r;->a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic dispose()V
    .locals 0

    invoke-super {p0}, Lcom/alipay/android/app/display/uielement/r;->dispose()V

    return-void
.end method

.method protected l()I
    .locals 1

    const-string/jumbo v0, "msp_panel_vertical"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final bridge synthetic m()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/alipay/android/app/display/uielement/r;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic n()Lcom/alipay/android/app/display/uielement/ElementStyle;
    .locals 1

    invoke-super {p0}, Lcom/alipay/android/app/display/uielement/r;->n()Lcom/alipay/android/app/display/uielement/ElementStyle;

    move-result-object v0

    return-object v0
.end method

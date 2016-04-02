.class public Lcom/alipay/android/app/ui/quickpay/uielement/UIComponent;
.super Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;Landroid/app/Activity;Z)V
    .locals 8

    invoke-super {p0, p1, p2, p3}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->a(Landroid/view/ViewGroup;Landroid/app/Activity;Z)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIComponent;->w:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIComponent;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIComponent;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIComponent;->d:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIComponent;->z()I

    move-result v2

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIComponent;->r()I

    move-result v3

    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIComponent;->c:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIComponent;->l:Z

    iget-boolean v7, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIComponent;->s:Z

    move-object v0, p1

    move-object v5, p2

    invoke-static/range {v0 .. v7}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Landroid/view/View;Ljava/lang/String;IILjava/lang/String;Landroid/content/Context;ZZ)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/alipay/android/app/json/JSONObject;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->a(Lcom/alipay/android/app/json/JSONObject;)V

    const-string/jumbo v0, "image"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "image"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIComponent;->d:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method protected final d()I
    .locals 1

    const-string/jumbo v0, "mini_ui_component"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 0

    invoke-super {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->dispose()V

    return-void
.end method

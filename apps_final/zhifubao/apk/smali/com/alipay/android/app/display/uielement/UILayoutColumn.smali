.class public Lcom/alipay/android/app/display/uielement/UILayoutColumn;
.super Lcom/alipay/android/app/display/uielement/r;

# interfaces
.implements Lcom/alipay/android/app/display/uielement/ISubmitable;


# instance fields
.field private a:Lcom/alipay/android/app/display/uielement/IUIElement;

.field private b:I

.field private c:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/app/display/uielement/r;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Lcom/alipay/android/app/display/uielement/UILayoutColumn;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/display/uielement/UILayoutColumn;->c:I

    return-void
.end method

.method private o()Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UILayoutColumn;->a:Lcom/alipay/android/app/display/uielement/IUIElement;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UILayoutColumn;->a:Lcom/alipay/android/app/display/uielement/IUIElement;

    instance-of v0, v0, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UILayoutColumn;->a:Lcom/alipay/android/app/display/uielement/IUIElement;

    check-cast v0, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/display/uielement/r;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a()Lcom/alipay/android/app/display/uielement/ElementType;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UILayoutColumn;->a:Lcom/alipay/android/app/display/uielement/IUIElement;

    if-nez v0, :cond_0

    sget-object v0, Lcom/alipay/android/app/display/uielement/ElementType;->LayoutColumn:Lcom/alipay/android/app/display/uielement/ElementType;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UILayoutColumn;->a:Lcom/alipay/android/app/display/uielement/IUIElement;

    invoke-interface {v0}, Lcom/alipay/android/app/display/uielement/IUIElement;->a()Lcom/alipay/android/app/display/uielement/ElementType;

    move-result-object v0

    goto :goto_0
.end method

.method protected final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/app/display/uielement/UILayoutColumn;->o()Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UILayoutColumn;->a:Lcom/alipay/android/app/display/uielement/IUIElement;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UILayoutColumn;->a:Lcom/alipay/android/app/display/uielement/IUIElement;

    invoke-interface {v0, p1}, Lcom/alipay/android/app/display/uielement/IUIElement;->a(I)V

    :cond_0
    return-void
.end method

.method protected final a(Landroid/os/Handler;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/android/app/display/uielement/r;->a(Landroid/os/Handler;)V

    invoke-direct {p0}, Lcom/alipay/android/app/display/uielement/UILayoutColumn;->o()Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->a(Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method protected final a(Landroid/os/Handler;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/display/uielement/r;->a(Landroid/os/Handler;I)V

    invoke-direct {p0}, Lcom/alipay/android/app/display/uielement/UILayoutColumn;->o()Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->a(Landroid/os/Handler;I)V

    :cond_0
    return-void
.end method

.method protected final a(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/app/display/uielement/UILayoutColumn;->o()Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->a(Landroid/os/Handler;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected final a(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/app/display/uielement/UILayoutColumn;->o()Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->a(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected final a(Landroid/os/Handler;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/app/display/uielement/UILayoutColumn;->o()Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->a(Landroid/os/Handler;Z)V

    :cond_0
    return-void
.end method

.method protected final a(Landroid/view/ViewGroup$LayoutParams;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, -0x2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput v2, p0, Lcom/alipay/android/app/display/uielement/UILayoutColumn;->b:I

    sget-object v0, Lcom/alipay/android/app/display/uielement/ElementDimension;->STAR:Lcom/alipay/android/app/display/uielement/ElementDimension;

    iget-object v0, v0, Lcom/alipay/android/app/display/uielement/ElementDimension;->a:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/android/app/display/uielement/UILayoutColumn;->c:I

    :cond_2
    :goto_1
    iget v0, p0, Lcom/alipay/android/app/display/uielement/UILayoutColumn;->b:I

    if-lez v0, :cond_4

    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/UILayoutColumn;->k()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/widget/LayoutColumn;

    iget v1, p0, Lcom/alipay/android/app/display/uielement/UILayoutColumn;->b:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/widget/LayoutColumn;->setWidthFixValue(F)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "%"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    const-string/jumbo v0, "%"

    const-string/jumbo v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/display/uielement/UILayoutColumn;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iput v2, p0, Lcom/alipay/android/app/display/uielement/UILayoutColumn;->b:I

    goto :goto_1

    :cond_4
    const/4 v0, -0x1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v0, p0, Lcom/alipay/android/app/display/uielement/UILayoutColumn;->b:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v0, p0, Lcom/alipay/android/app/display/uielement/UILayoutColumn;->c:I

    if-lez v0, :cond_0

    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, p0, Lcom/alipay/android/app/display/uielement/UILayoutColumn;->c:I

    int-to-float v0, v0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0
.end method

.method protected final a(Lcom/alipay/android/app/display/event/EventType;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/app/display/uielement/UILayoutColumn;->o()Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->a(Lcom/alipay/android/app/display/event/EventType;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final bridge synthetic a(Lcom/alipay/android/app/display/event/OnElementEventListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/app/display/uielement/r;->a(Lcom/alipay/android/app/display/event/OnElementEventListener;)V

    return-void
.end method

.method public final a(Lcom/alipay/android/app/display/uielement/IUIElement;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/app/display/uielement/r;->a(Lcom/alipay/android/app/display/uielement/IUIElement;)V

    iput-object p1, p0, Lcom/alipay/android/app/display/uielement/UILayoutColumn;->a:Lcom/alipay/android/app/display/uielement/IUIElement;

    return-void
.end method

.method public final bridge synthetic a(Lcom/alipay/android/app/json/JSONObject;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/app/display/uielement/r;->a(Lcom/alipay/android/app/json/JSONObject;)V

    return-void
.end method

.method public final a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UILayoutColumn;->a:Lcom/alipay/android/app/display/uielement/IUIElement;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UILayoutColumn;->a:Lcom/alipay/android/app/display/uielement/IUIElement;

    invoke-interface {v0, p1, p2}, Lcom/alipay/android/app/display/uielement/IUIElement;->a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/app/display/uielement/UILayoutColumn;->o()Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected final b()I
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/app/display/uielement/UILayoutColumn;->o()Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->b()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected final b(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/app/display/uielement/UILayoutColumn;->o()Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->b(Landroid/os/Handler;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected final b(Landroid/os/Handler;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/app/display/uielement/UILayoutColumn;->o()Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->b(Landroid/os/Handler;Z)V

    :cond_0
    return-void
.end method

.method protected final c(Landroid/os/Handler;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/app/display/uielement/UILayoutColumn;->o()Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->c(Landroid/os/Handler;Z)V

    :cond_0
    return-void
.end method

.method protected final c()Z
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/app/display/uielement/UILayoutColumn;->o()Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->c()Z

    move-result v0

    goto :goto_0
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/app/display/uielement/UILayoutColumn;->o()Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public dispose()V
    .locals 1

    invoke-super {p0}, Lcom/alipay/android/app/display/uielement/r;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/UILayoutColumn;->a:Lcom/alipay/android/app/display/uielement/IUIElement;

    return-void
.end method

.method protected final e()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/app/display/uielement/UILayoutColumn;->o()Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected final f()Z
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/app/display/uielement/UILayoutColumn;->o()Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->f()Z

    move-result v0

    goto :goto_0
.end method

.method protected final g()Z
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/app/display/uielement/UILayoutColumn;->o()Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->g()Z

    move-result v0

    goto :goto_0
.end method

.method protected final h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final i()Lcom/alipay/android/app/display/uielement/ISubmitable$SubmitValue;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UILayoutColumn;->a:Lcom/alipay/android/app/display/uielement/IUIElement;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UILayoutColumn;->a:Lcom/alipay/android/app/display/uielement/IUIElement;

    instance-of v0, v0, Lcom/alipay/android/app/display/uielement/ISubmitable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UILayoutColumn;->a:Lcom/alipay/android/app/display/uielement/IUIElement;

    check-cast v0, Lcom/alipay/android/app/display/uielement/ISubmitable;

    invoke-interface {v0}, Lcom/alipay/android/app/display/uielement/ISubmitable;->i()Lcom/alipay/android/app/display/uielement/ISubmitable$SubmitValue;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UILayoutColumn;->a:Lcom/alipay/android/app/display/uielement/IUIElement;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string/jumbo v3, "false"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/UILayoutColumn;->b()I

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/android/app/display/uielement/UILayoutColumn;->o()Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string/jumbo v3, "false"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->b()I

    move-result v0

    if-nez v0, :cond_2

    move v2, v1

    :cond_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UILayoutColumn;->a:Lcom/alipay/android/app/display/uielement/IUIElement;

    instance-of v0, v0, Lcom/alipay/android/app/display/uielement/ISubmitable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UILayoutColumn;->a:Lcom/alipay/android/app/display/uielement/IUIElement;

    check-cast v0, Lcom/alipay/android/app/display/uielement/ISubmitable;

    invoke-interface {v0}, Lcom/alipay/android/app/display/uielement/ISubmitable;->j()Z

    move-result v1

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method protected final l()I
    .locals 1

    const-string/jumbo v0, "msp_layout_column"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UILayoutColumn;->a:Lcom/alipay/android/app/display/uielement/IUIElement;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/alipay/android/app/display/uielement/r;->m()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UILayoutColumn;->a:Lcom/alipay/android/app/display/uielement/IUIElement;

    invoke-interface {v0}, Lcom/alipay/android/app/display/uielement/IUIElement;->m()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final bridge synthetic n()Lcom/alipay/android/app/display/uielement/ElementStyle;
    .locals 1

    invoke-super {p0}, Lcom/alipay/android/app/display/uielement/r;->n()Lcom/alipay/android/app/display/uielement/ElementStyle;

    move-result-object v0

    return-object v0
.end method

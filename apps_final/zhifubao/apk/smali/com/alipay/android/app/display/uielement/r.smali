.class abstract Lcom/alipay/android/app/display/uielement/r;
.super Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;

# interfaces
.implements Lcom/alipay/android/app/display/uielement/IUIElementContainer;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/display/uielement/IUIElement;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/widget/LinearLayout;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/alipay/android/app/display/uielement/ElementStyle;

.field private i:Lcom/alipay/android/app/display/event/OnElementEventListener;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/r;->b:Ljava/util/List;

    new-instance v0, Lcom/alipay/android/app/display/uielement/ElementStyle;

    invoke-direct {v0}, Lcom/alipay/android/app/display/uielement/ElementStyle;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/r;->h:Lcom/alipay/android/app/display/uielement/ElementStyle;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/display/uielement/r;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/r;->c:Landroid/widget/LinearLayout;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/r;->c:Landroid/widget/LinearLayout;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/r;->l()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/r;->l()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/r;->c:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/r;->c:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/alipay/android/app/display/uielement/ElementFactory;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/r;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/display/uielement/IUIElement;

    iget-object v2, p0, Lcom/alipay/android/app/display/uielement/r;->c:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/alipay/android/app/display/uielement/r;->c:Landroid/widget/LinearLayout;

    invoke-interface {v0, p1, v3}, Lcom/alipay/android/app/display/uielement/IUIElement;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/r;->h:Lcom/alipay/android/app/display/uielement/ElementStyle;

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/r;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/display/uielement/ElementStyle;->b(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/r;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/r;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/app/display/uielement/r;->e:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/android/app/display/uielement/r;->a(Landroid/view/ViewGroup$LayoutParams;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/r;->c:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/alipay/android/app/display/uielement/r;->f:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/android/app/util/UIUtils;->a(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/alipay/android/app/display/uielement/r;->g:Ljava/lang/String;

    invoke-static {v3}, Lcom/alipay/android/app/util/UIUtils;->b(Ljava/lang/String;)I

    move-result v3

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/r;->h:Lcom/alipay/android/app/display/uielement/ElementStyle;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/display/uielement/ElementStyle;->a(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/r;->h:Lcom/alipay/android/app/display/uielement/ElementStyle;

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/r;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/display/uielement/ElementStyle;->c(Landroid/view/View;)V

    :cond_2
    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/r;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/r;->a_()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/r;->b()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/app/display/uielement/r;->a(Landroid/os/Handler;I)V

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/r;->c:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method protected a(Landroid/os/Handler;I)V
    .locals 2

    const-string/jumbo v0, "visible"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/app/display/uielement/r;->a(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/alipay/android/app/display/uielement/s;

    invoke-direct {v0, p0, p2}, Lcom/alipay/android/app/display/uielement/s;-><init>(Lcom/alipay/android/app/display/uielement/r;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v0, Lcom/alipay/android/app/display/event/MspEventArgs;

    sget-object v1, Lcom/alipay/android/app/display/event/EventType;->Change:Lcom/alipay/android/app/display/event/EventType;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/display/event/MspEventArgs;-><init>(Lcom/alipay/android/app/display/event/EventType;)V

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/r;->i:Lcom/alipay/android/app/display/event/OnElementEventListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/r;->i:Lcom/alipay/android/app/display/event/OnElementEventListener;

    invoke-interface {v1, p0, v0}, Lcom/alipay/android/app/display/event/OnElementEventListener;->a(Lcom/alipay/android/app/display/uielement/IUIElement;Lcom/alipay/android/app/display/event/MspEventArgs;)Z

    :cond_0
    return-void
.end method

.method protected abstract a(Landroid/view/ViewGroup$LayoutParams;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public a(Lcom/alipay/android/app/display/event/OnElementEventListener;)V
    .locals 2

    iput-object p1, p0, Lcom/alipay/android/app/display/uielement/r;->i:Lcom/alipay/android/app/display/event/OnElementEventListener;

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/r;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/display/uielement/IUIElement;

    invoke-interface {v0, p1}, Lcom/alipay/android/app/display/uielement/IUIElement;->a(Lcom/alipay/android/app/display/event/OnElementEventListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/alipay/android/app/display/uielement/IUIElement;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/r;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/alipay/android/app/json/JSONObject;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "align"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/r;->f:Ljava/lang/String;

    const-string/jumbo v0, "valign"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/r;->g:Ljava/lang/String;

    const-string/jumbo v0, "width"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/r;->d:Ljava/lang/String;

    const-string/jumbo v0, "height"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/r;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;)V
    .locals 2

    const-string/jumbo v0, "id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/r;->a:Ljava/lang/String;

    const-string/jumbo v0, "styles"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/r;->h:Lcom/alipay/android/app/display/uielement/ElementStyle;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/display/uielement/ElementStyle;->a(Lcom/alipay/android/app/json/JSONObject;)V

    const-string/jumbo v0, "false"

    const-string/jumbo v1, "visible"

    invoke-virtual {p1, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "visible"

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/app/display/uielement/r;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "visible"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/app/display/uielement/r;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public dispose()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->dispose()V

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/r;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/r;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/r;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/display/uielement/IUIElement;

    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/alipay/android/app/sys/IDispose;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/alipay/android/app/sys/IDispose;

    invoke-interface {v0}, Lcom/alipay/android/app/sys/IDispose;->dispose()V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/r;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_2
    iput-object v3, p0, Lcom/alipay/android/app/display/uielement/r;->b:Ljava/util/List;

    iput-object v3, p0, Lcom/alipay/android/app/display/uielement/r;->c:Landroid/widget/LinearLayout;

    return-void
.end method

.method protected h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final k()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/r;->c:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method protected abstract l()I
.end method

.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/r;->a:Ljava/lang/String;

    return-object v0
.end method

.method public n()Lcom/alipay/android/app/display/uielement/ElementStyle;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/r;->h:Lcom/alipay/android/app/display/uielement/ElementStyle;

    return-object v0
.end method

.class public Lcom/alipay/android/app/display/uielement/UILayoutPopup;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/display/uielement/IUIElement;
.implements Lcom/alipay/android/app/sys/IDispose;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alipay/android/app/display/windows/WindowElements;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alipay/android/app/display/event/OnElementEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/display/windows/UIWindow;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/PopupWindow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/UILayoutPopup;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/UILayoutPopup;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v2, 0x1

    aget v4, v1, v2

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    sub-int v5, v1, v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    sub-int v6, v0, v1

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UILayoutPopup;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/display/windows/UIWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/display/windows/UIWindow;->a()Lcom/alipay/android/app/display/uielement/IUIElement;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/alipay/android/app/display/uielement/IUIElement;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    new-instance v9, Landroid/widget/PopupWindow;

    invoke-direct {v9, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    invoke-interface {v0}, Lcom/alipay/android/app/display/uielement/IUIElement;->n()Lcom/alipay/android/app/display/uielement/ElementStyle;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alipay/android/app/display/uielement/ElementStyle;->b()I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {v10}, Lcom/alipay/android/app/display/uielement/ElementStyle;->d()I

    move-result v1

    add-int/2addr v1, v5

    invoke-virtual {v10}, Lcom/alipay/android/app/display/uielement/ElementStyle;->f()I

    move-result v2

    const/4 v11, 0x3

    if-ne v2, v11, :cond_0

    :goto_1
    invoke-virtual {v10}, Lcom/alipay/android/app/display/uielement/ElementStyle;->c()I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual {v10}, Lcom/alipay/android/app/display/uielement/ElementStyle;->e()I

    move-result v2

    add-int/2addr v2, v6

    invoke-virtual {v10}, Lcom/alipay/android/app/display/uielement/ElementStyle;->f()I

    move-result v11

    const/16 v12, 0x30

    if-ne v11, v12, :cond_1

    :goto_2
    invoke-virtual {v10}, Lcom/alipay/android/app/display/uielement/ElementStyle;->a()I

    move-result v2

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v10, -0x2

    invoke-virtual {v9, v10}, Landroid/widget/PopupWindow;->setWidth(I)V

    const/4 v10, -0x2

    invoke-virtual {v9, v10}, Landroid/widget/PopupWindow;->setHeight(I)V

    invoke-virtual {v9, v8}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    invoke-virtual {v9, p2, v2, v0, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UILayoutPopup;->d:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a()Lcom/alipay/android/app/display/uielement/ElementType;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/display/uielement/ElementType;->Popup:Lcom/alipay/android/app/display/uielement/ElementType;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/alipay/android/app/display/event/OnElementEventListener;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/alipay/android/app/display/windows/WindowElements;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/UILayoutPopup;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;)V
    .locals 9

    const/4 v3, 0x0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v0, "list"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/alipay/android/app/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v4}, Lcom/alipay/android/app/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_0

    invoke-virtual {v4, v2}, Lcom/alipay/android/app/json/JSONArray;->optJSONObject(I)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_3

    new-instance v6, Lcom/alipay/android/app/display/windows/UIWindow;

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UILayoutPopup;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/display/windows/WindowElements;

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/UILayoutPopup;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/app/display/event/OnElementEventListener;

    invoke-direct {v6, v0, v1}, Lcom/alipay/android/app/display/windows/UIWindow;-><init>(Lcom/alipay/android/app/display/windows/WindowElements;Lcom/alipay/android/app/display/event/OnElementEventListener;)V

    invoke-virtual {v6, v5, p2}, Lcom/alipay/android/app/display/windows/UIWindow;->c(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;)Lcom/alipay/android/app/display/uielement/IUIElement;

    const-string/jumbo v0, "styles"

    invoke-virtual {v5, v0}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v1, "margin_left"

    invoke-virtual {v0, v1, v3}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v5, "margin_top"

    invoke-virtual {v0, v5, v3}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    const-string/jumbo v7, "margin_right"

    invoke-virtual {v0, v7, v3}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    const-string/jumbo v8, "margin_bottom"

    invoke-virtual {v0, v8, v3}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v6}, Lcom/alipay/android/app/display/windows/UIWindow;->a()Lcom/alipay/android/app/display/uielement/IUIElement;

    move-result-object v8

    invoke-interface {v8}, Lcom/alipay/android/app/display/uielement/IUIElement;->n()Lcom/alipay/android/app/display/uielement/ElementStyle;

    move-result-object v8

    invoke-virtual {v8, v1, v5, v7, v0}, Lcom/alipay/android/app/display/uielement/ElementStyle;->a(IIII)V

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UILayoutPopup;->c:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method public final b(Lcom/alipay/android/app/display/event/OnElementEventListener;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/UILayoutPopup;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public dispose()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UILayoutPopup;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/display/windows/UIWindow;

    instance-of v2, v0, Lcom/alipay/android/app/sys/IDispose;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/alipay/android/app/sys/IDispose;

    invoke-interface {v0}, Lcom/alipay/android/app/sys/IDispose;->dispose()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UILayoutPopup;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final n()Lcom/alipay/android/app/display/uielement/ElementStyle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

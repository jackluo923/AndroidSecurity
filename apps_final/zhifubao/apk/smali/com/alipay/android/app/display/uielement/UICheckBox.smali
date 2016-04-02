.class public Lcom/alipay/android/app/display/uielement/UICheckBox;
.super Lcom/alipay/android/app/display/uielement/BaseElement;

# interfaces
.implements Lcom/alipay/android/app/display/uielement/ISubmitable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ClickableViewAccessibility"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/android/app/display/uielement/BaseElement",
        "<",
        "Landroid/view/View;",
        ">;",
        "Lcom/alipay/android/app/display/uielement/ISubmitable;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/widget/CheckBox;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/view/View;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/app/display/uielement/BaseElement;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/display/uielement/UICheckBox;->h:Z

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/display/uielement/UICheckBox;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UICheckBox;->d:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/app/display/uielement/UICheckBox;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/app/display/uielement/UICheckBox;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/alipay/android/app/display/uielement/UICheckBox;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/display/uielement/UICheckBox;->h:Z

    return v0
.end method

.method static synthetic c(Lcom/alipay/android/app/display/uielement/UICheckBox;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UICheckBox;->b:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/android/app/display/uielement/UICheckBox;)V
    .locals 2

    new-instance v0, Lcom/alipay/android/app/display/uielement/ad;

    sget-object v1, Lcom/alipay/android/app/display/event/EventType;->Change:Lcom/alipay/android/app/display/event/EventType;

    invoke-direct {v0, p0, v1}, Lcom/alipay/android/app/display/uielement/ad;-><init>(Lcom/alipay/android/app/display/uielement/UICheckBox;Lcom/alipay/android/app/display/event/EventType;)V

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/display/uielement/UICheckBox;->a(Lcom/alipay/android/app/display/event/MspEventArgs;)V

    return-void
.end method

.method static synthetic e(Lcom/alipay/android/app/display/uielement/UICheckBox;)V
    .locals 2

    new-instance v0, Lcom/alipay/android/app/display/uielement/ae;

    sget-object v1, Lcom/alipay/android/app/display/event/EventType;->Click:Lcom/alipay/android/app/display/event/EventType;

    invoke-direct {v0, p0, v1}, Lcom/alipay/android/app/display/uielement/ae;-><init>(Lcom/alipay/android/app/display/uielement/UICheckBox;Lcom/alipay/android/app/display/event/EventType;)V

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/display/uielement/UICheckBox;->a(Lcom/alipay/android/app/display/event/MspEventArgs;)V

    return-void
.end method

.method static synthetic f(Lcom/alipay/android/app/display/uielement/UICheckBox;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UICheckBox;->c:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/alipay/android/app/display/uielement/ElementType;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/display/uielement/ElementType;->CheckBox:Lcom/alipay/android/app/display/uielement/ElementType;

    return-object v0
.end method

.method protected final a(Landroid/content/Context;Landroid/view/View;Lcom/alipay/android/app/display/uielement/ElementStyle;)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {p2}, Lcom/alipay/android/app/display/uielement/ElementFactory;->a(Landroid/view/View;)V

    const-string/jumbo v0, "check_box"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/UICheckBox;->d:Landroid/view/View;

    const-string/jumbo v0, "check_mark_left"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/UICheckBox;->b:Landroid/widget/CheckBox;

    iget-boolean v0, p0, Lcom/alipay/android/app/display/uielement/UICheckBox;->g:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "check_mark_right"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/UICheckBox;->c:Landroid/widget/TextView;

    :goto_0
    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/UICheckBox;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UICheckBox;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UICheckBox;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/UICheckBox;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/app/display/uielement/UICheckBox;->b(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UICheckBox;->b:Landroid/widget/CheckBox;

    new-instance v1, Lcom/alipay/android/app/display/uielement/y;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/display/uielement/y;-><init>(Lcom/alipay/android/app/display/uielement/UICheckBox;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UICheckBox;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UICheckBox;->b:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/UICheckBox;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UICheckBox;->b:Landroid/widget/CheckBox;

    new-instance v1, Lcom/alipay/android/app/display/uielement/aa;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/display/uielement/aa;-><init>(Lcom/alipay/android/app/display/uielement/UICheckBox;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UICheckBox;->d:Landroid/view/View;

    new-instance v1, Lcom/alipay/android/app/display/uielement/ab;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/display/uielement/ab;-><init>(Lcom/alipay/android/app/display/uielement/UICheckBox;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UICheckBox;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/UICheckBox;->d:Landroid/view/View;

    const-string/jumbo v2, "msp_margin_left"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->d(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    const-string/jumbo v3, "msp_margin_right"

    invoke-static {v3}, Lcom/alipay/android/app/util/ResUtils;->d(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v1, v2, v4, v0, v4}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UICheckBox;->f:Ljava/lang/String;

    new-instance v1, Lcom/alipay/android/app/display/uielement/ac;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/display/uielement/ac;-><init>(Lcom/alipay/android/app/display/uielement/UICheckBox;)V

    invoke-static {v0, v1}, Lcom/alipay/android/app/util/UIUtils;->a(Ljava/lang/String;Lcom/alipay/android/app/widget/BaseTarget;)V

    :goto_1
    invoke-virtual {p3, p2}, Lcom/alipay/android/app/display/uielement/ElementStyle;->c(Landroid/view/View;)V

    return-void

    :cond_1
    const-string/jumbo v0, "text"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/UICheckBox;->c:Landroid/widget/TextView;

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UICheckBox;->d:Landroid/view/View;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1
.end method

.method protected final a(Landroid/os/Handler;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/android/app/display/uielement/BaseElement;->a(Landroid/os/Handler;)V

    new-instance v0, Lcom/alipay/android/app/display/uielement/z;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/display/uielement/z;-><init>(Lcom/alipay/android/app/display/uielement/UICheckBox;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected final a(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "text"

    invoke-virtual {p0, v0, p2}, Lcom/alipay/android/app/display/uielement/UICheckBox;->a(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/alipay/android/app/display/uielement/ah;

    invoke-direct {v0, p0, p2}, Lcom/alipay/android/app/display/uielement/ah;-><init>(Lcom/alipay/android/app/display/uielement/UICheckBox;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected final a(Landroid/os/Handler;Z)V
    .locals 2

    const-string/jumbo v0, "checked"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/app/display/uielement/UICheckBox;->a(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/alipay/android/app/display/uielement/af;

    invoke-direct {v0, p0, p2}, Lcom/alipay/android/app/display/uielement/af;-><init>(Lcom/alipay/android/app/display/uielement/UICheckBox;Z)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/display/uielement/BaseElement;->a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;)V

    const-string/jumbo v0, "name"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/UICheckBox;->a:Ljava/lang/String;

    const-string/jumbo v0, "styles"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "styles"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "align"

    invoke-virtual {v0, v1, v3}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/app/display/uielement/UICheckBox;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/UICheckBox;->e:Ljava/lang/String;

    const-string/jumbo v2, "right"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/android/app/display/uielement/UICheckBox;->g:Z

    const-string/jumbo v1, "background-image"

    invoke-virtual {v0, v1, v3}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/UICheckBox;->f:Ljava/lang/String;

    :cond_0
    const-string/jumbo v0, "show_toast"

    const-string/jumbo v1, "show_toast"

    const-string/jumbo v2, "false"

    invoke-virtual {p1, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/app/display/uielement/UICheckBox;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected final b(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-virtual {p0, v0, p2}, Lcom/alipay/android/app/display/uielement/UICheckBox;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected final c(Landroid/os/Handler;Z)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/display/uielement/BaseElement;->c(Landroid/os/Handler;Z)V

    new-instance v0, Lcom/alipay/android/app/display/uielement/ag;

    invoke-direct {v0, p0, p2}, Lcom/alipay/android/app/display/uielement/ag;-><init>(Lcom/alipay/android/app/display/uielement/UICheckBox;Z)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/alipay/android/app/display/uielement/BaseElement;->dispose()V

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/UICheckBox;->b:Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/UICheckBox;->d:Landroid/view/View;

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/UICheckBox;->c:Landroid/widget/TextView;

    return-void
.end method

.method public final i()Lcom/alipay/android/app/display/uielement/ISubmitable$SubmitValue;
    .locals 3

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/alipay/android/app/display/uielement/BaseElement;->r()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/UICheckBox;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/alipay/android/app/display/uielement/ISubmitable$SubmitValue;

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/UICheckBox;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/UICheckBox;->e()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/display/uielement/ISubmitable$SubmitValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final j()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final o()I
    .locals 1

    const-string/jumbo v0, "msp_ui_checkbox"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

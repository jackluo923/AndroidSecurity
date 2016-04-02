.class public Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;
.super Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement",
        "<",
        "Landroid/widget/Button;",
        ">;"
    }
.end annotation


# instance fields
.field private H:I

.field private I:I

.field private J:Landroid/os/CountDownTimer;

.field private K:Landroid/widget/Button;

.field private L:Z

.field private M:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;-><init>()V

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;->L:Z

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;->M:Z

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;->K:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method protected final L()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;->K:Landroid/widget/Button;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;->K:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;->u:Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;->F()Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    move-result-object v0

    if-eqz v0, :cond_0

    :cond_2
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/uielement/j;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alipay/android/app/ui/quickpay/uielement/j;-><init>(Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;Landroid/os/Looper;)V

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/uielement/k;

    invoke-direct {v1, p0, v0}, Lcom/alipay/android/app/ui/quickpay/uielement/k;-><init>(Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;Landroid/os/Handler;)V

    invoke-virtual {p0, v1}, Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;->a(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;->K:Landroid/widget/Button;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;->C:Lcom/alipay/android/app/ui/quickpay/event/UIElementOnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public final M()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;->L:Z

    return v0
.end method

.method public final N()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;->K:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;->H:I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;->K:Landroid/widget/Button;

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/uielement/i;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/ui/quickpay/uielement/i;-><init>(Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final O()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;->K:Landroid/widget/Button;

    return-object v0
.end method

.method protected final synthetic a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 3

    check-cast p2, Landroid/widget/Button;

    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->a(Landroid/app/Activity;Landroid/view/View;)V

    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;->K:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;->h()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;->K:Landroid/widget/Button;

    invoke-virtual {p0, v1, p1}, Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;->a(Landroid/widget/TextView;Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;->k()F

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/widget/Button;->setTextSize(IF)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final a(Lcom/alipay/android/app/json/JSONObject;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->a(Lcom/alipay/android/app/json/JSONObject;)V

    const-string/jumbo v0, "time"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "time"

    const/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;->I:I

    :cond_0
    const-string/jumbo v0, "submit"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "submit"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;->L:Z

    :cond_1
    const-string/jumbo v0, "sms"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "sms"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;->M:Z

    :cond_2
    return-void
.end method

.method public attr(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;->K:Landroid/widget/Button;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0, p1}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "text"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;->K:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public attr(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;->K:Landroid/widget/Button;

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->attr(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    const-string/jumbo v2, "text"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;->K:Landroid/widget/Button;

    invoke-virtual {v1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public final c()Lcom/alipay/android/app/json/JSONObject;
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;->o()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->dispose()V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;->J:Landroid/os/CountDownTimer;

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;->K:Landroid/widget/Button;

    return-void
.end method

.method protected final p()I
    .locals 1

    const-string/jumbo v0, "mini_ui_button"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected final q()V
    .locals 6

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;->M:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;->d()Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;

    instance-of v2, v0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->v()Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Landroid/widget/EditText;)V

    :cond_1
    const v0, 0xea60

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;->H:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;->I:I

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;->K:Landroid/widget/Button;

    if-nez v0, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;->K:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/uielement/h;

    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;->H:I

    int-to-long v2, v1

    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;->I:I

    int-to-long v4, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/app/ui/quickpay/uielement/h;-><init>(Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;JJ)V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;->J:Landroid/os/CountDownTimer;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;->J:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_0
.end method

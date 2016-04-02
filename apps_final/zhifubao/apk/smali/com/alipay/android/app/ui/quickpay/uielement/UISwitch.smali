.class public Lcom/alipay/android/app/ui/quickpay/uielement/UISwitch;
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
.field private H:Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;

.field private I:Z

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISwitch;->L:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISwitch;->I:Z

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/ui/quickpay/uielement/UISwitch;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISwitch;->L:Z

    return v0
.end method

.method static synthetic b(Lcom/alipay/android/app/ui/quickpay/uielement/UISwitch;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISwitch;->J:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/android/app/ui/quickpay/uielement/UISwitch;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISwitch;->K:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/android/app/ui/quickpay/uielement/UISwitch;)Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISwitch;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;

    return-object v0
.end method


# virtual methods
.method protected final synthetic a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 3

    check-cast p2, Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;

    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->a(Landroid/app/Activity;Landroid/view/View;)V

    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISwitch;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISwitch;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "mini_ui_switch"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "true"

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISwitch;->L:Z

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISwitch;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/uielement/an;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/ui/quickpay/uielement/an;-><init>(Lcom/alipay/android/app/ui/quickpay/uielement/UISwitch;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;->setOnCheckedChangeListener(Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISwitch;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;

    iget-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISwitch;->L:Z

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;->setChecked(Z)V

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISwitch;->L:Z

    goto :goto_0
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

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISwitch;->I:Z

    :cond_0
    const-string/jumbo v0, "action"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "action"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISwitch;->J:Ljava/lang/String;

    :cond_1
    if-eqz v0, :cond_2

    const-string/jumbo v1, "false"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "false"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISwitch;->K:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public final b()Z
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UISwitch;->a()Z

    move-result v0

    return v0
.end method

.method public final c()Lcom/alipay/android/app/json/JSONObject;
    .locals 3

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UISwitch;->o()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISwitch;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UISwitch;->K()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISwitch;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;->isChecked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

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

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UISwitch;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;

    return-void
.end method

.method protected final p()I
    .locals 1

    const-string/jumbo v0, "mini_ui_checkbox"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected final q()V
    .locals 0

    invoke-super {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->q()V

    return-void
.end method

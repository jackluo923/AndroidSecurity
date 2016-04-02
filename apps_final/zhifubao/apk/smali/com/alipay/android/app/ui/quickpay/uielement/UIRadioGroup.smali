.class public Lcom/alipay/android/app/ui/quickpay/uielement/UIRadioGroup;
.super Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private H:Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:[Ljava/lang/String;

.field private L:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/ui/quickpay/uielement/UIRadioGroup;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIRadioGroup;->J:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/app/ui/quickpay/uielement/UIRadioGroup;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIRadioGroup;->J:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/alipay/android/app/ui/quickpay/uielement/UIRadioGroup;)Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIRadioGroup;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/android/app/ui/quickpay/uielement/UIRadioGroup;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIRadioGroup;->I:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected final a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->a(Landroid/app/Activity;Landroid/view/View;)V

    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIRadioGroup;->L:Landroid/view/View;

    const-string/jumbo v0, "setting_no_pwd_progress"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIRadioGroup;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIRadioGroup;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/uielement/aj;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/ui/quickpay/uielement/aj;-><init>(Lcom/alipay/android/app/ui/quickpay/uielement/UIRadioGroup;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->setOnSelectionChangeListener(Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar$SelectionChangeListener;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIRadioGroup;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIRadioGroup;->K:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->setProgressTexts([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIRadioGroup;->I:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIRadioGroup;->H:Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIRadioGroup;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/widget/CustomProgressBar;->setSelection(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/alipay/android/app/json/JSONObject;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->a(Lcom/alipay/android/app/json/JSONObject;)V

    const-string/jumbo v0, "items"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "items"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/alipay/android/app/json/JSONArray;->length()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIRadioGroup;->K:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIRadioGroup;->K:[Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0
    :try_end_0
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIRadioGroup;->K:[Ljava/lang/String;

    goto :goto_1
.end method

.method public final c()Lcom/alipay/android/app/json/JSONObject;
    .locals 3

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIRadioGroup;->o()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIRadioGroup;->I:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIRadioGroup;->J:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIRadioGroup;->K()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIRadioGroup;->J:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected final p()I
    .locals 1

    const-string/jumbo v0, "mini_ui_radiogroup"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final w()Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIRadioGroup;->L:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->w()Z

    move-result v0

    goto :goto_0
.end method

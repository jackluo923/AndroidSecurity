.class final Lcom/alipay/android/app/display/uielement/bm;
.super Lcom/alipay/android/app/display/uielement/BaseElement;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/android/app/display/uielement/BaseElement",
        "<",
        "Landroid/widget/RadioButton;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field private c:Landroid/widget/RadioButton;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/display/uielement/BaseElement;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/display/uielement/bm;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/bm;->c:Landroid/widget/RadioButton;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/alipay/android/app/display/uielement/ElementType;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/display/uielement/ElementType;->Radio:Lcom/alipay/android/app/display/uielement/ElementType;

    return-object v0
.end method

.method protected final synthetic a(Landroid/content/Context;Landroid/view/View;Lcom/alipay/android/app/display/uielement/ElementStyle;)V
    .locals 1

    check-cast p2, Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/bm;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/alipay/android/app/display/uielement/bm;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/alipay/android/app/display/uielement/bm;->a:Z

    invoke-virtual {p2, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    iput-object p2, p0, Lcom/alipay/android/app/display/uielement/bm;->c:Landroid/widget/RadioButton;

    return-void
.end method

.method public final a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/display/uielement/BaseElement;->a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;)V

    const-string/jumbo v0, "true"

    const-string/jumbo v1, "checked"

    invoke-virtual {p1, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/app/display/uielement/bm;->a:Z

    return-void
.end method

.method protected final c(Landroid/os/Handler;Z)V
    .locals 1

    new-instance v0, Lcom/alipay/android/app/display/uielement/bn;

    invoke-direct {v0, p0, p2}, Lcom/alipay/android/app/display/uielement/bn;-><init>(Lcom/alipay/android/app/display/uielement/bm;Z)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/display/uielement/bm;->b:I

    return v0
.end method

.method protected final o()I
    .locals 1

    const-string/jumbo v0, "msp_ui_radio"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

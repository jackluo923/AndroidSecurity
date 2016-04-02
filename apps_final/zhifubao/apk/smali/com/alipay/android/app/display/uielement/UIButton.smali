.class public Lcom/alipay/android/app/display/uielement/UIButton;
.super Lcom/alipay/android/app/display/uielement/UILabel;

# interfaces
.implements Lcom/alipay/android/app/display/uielement/ISubmitable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/display/uielement/UILabel;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/display/uielement/UIButton;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UIButton;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/android/app/display/uielement/UIButton;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UIButton;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/alipay/android/app/display/uielement/ElementType;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/display/uielement/ElementType;->Button:Lcom/alipay/android/app/display/uielement/ElementType;

    return-object v0
.end method

.method protected final bridge synthetic a(Landroid/content/Context;Landroid/view/View;Lcom/alipay/android/app/display/uielement/ElementStyle;)V
    .locals 0

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/android/app/display/uielement/UIButton;->a(Landroid/content/Context;Landroid/widget/TextView;Lcom/alipay/android/app/display/uielement/ElementStyle;)V

    return-void
.end method

.method protected final a(Landroid/content/Context;Landroid/widget/TextView;Lcom/alipay/android/app/display/uielement/ElementStyle;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/alipay/android/app/display/uielement/UILabel;->a(Landroid/content/Context;Landroid/widget/TextView;Lcom/alipay/android/app/display/uielement/ElementStyle;)V

    iput-object p2, p0, Lcom/alipay/android/app/display/uielement/UIButton;->c:Landroid/widget/TextView;

    new-instance v0, Lcom/alipay/android/app/display/uielement/u;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/display/uielement/u;-><init>(Lcom/alipay/android/app/display/uielement/UIButton;)V

    new-instance v1, Lcom/alipay/android/app/display/uielement/v;

    invoke-direct {v1, p0, v0}, Lcom/alipay/android/app/display/uielement/v;-><init>(Lcom/alipay/android/app/display/uielement/UIButton;Landroid/os/Handler;)V

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/display/uielement/UILabel;->a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;)V

    const-string/jumbo v0, "name"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/UIButton;->a:Ljava/lang/String;

    const-string/jumbo v0, "value"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/UIButton;->b:Ljava/lang/String;

    return-void
.end method

.method protected final c(Landroid/os/Handler;Z)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/display/uielement/UILabel;->c(Landroid/os/Handler;Z)V

    new-instance v0, Lcom/alipay/android/app/display/uielement/x;

    invoke-direct {v0, p0, p2}, Lcom/alipay/android/app/display/uielement/x;-><init>(Lcom/alipay/android/app/display/uielement/UIButton;Z)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/alipay/android/app/display/uielement/UILabel;->dispose()V

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/UIButton;->c:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/UIButton;->a:Ljava/lang/String;

    return-void
.end method

.method public final i()Lcom/alipay/android/app/display/uielement/ISubmitable$SubmitValue;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/UIButton;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0}, Lcom/alipay/android/app/display/uielement/UILabel;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/alipay/android/app/display/uielement/ISubmitable$SubmitValue;

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/UIButton;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/app/display/uielement/UIButton;->b:Ljava/lang/String;

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

    const-string/jumbo v0, "msp_ui_button"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

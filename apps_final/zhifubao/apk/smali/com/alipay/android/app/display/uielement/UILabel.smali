.class public Lcom/alipay/android/app/display/uielement/UILabel;
.super Lcom/alipay/android/app/display/uielement/BaseElement;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/android/app/display/uielement/BaseElement",
        "<",
        "Landroid/widget/TextView;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:I

.field private e:I

.field private f:Landroid/os/CountDownTimer;

.field private g:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/display/uielement/BaseElement;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/display/uielement/UILabel;I)I
    .locals 0

    iput p1, p0, Lcom/alipay/android/app/display/uielement/UILabel;->d:I

    return p1
.end method

.method static synthetic a(Lcom/alipay/android/app/display/uielement/UILabel;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UILabel;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/android/app/display/uielement/UILabel;)I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/display/uielement/UILabel;->e:I

    return v0
.end method

.method static synthetic c(Lcom/alipay/android/app/display/uielement/UILabel;)I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/display/uielement/UILabel;->d:I

    return v0
.end method

.method static synthetic d(Lcom/alipay/android/app/display/uielement/UILabel;)I
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/display/uielement/UILabel;->e:I

    return v0
.end method

.method static synthetic e(Lcom/alipay/android/app/display/uielement/UILabel;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UILabel;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/android/app/display/uielement/UILabel;)V
    .locals 2

    new-instance v0, Lcom/alipay/android/app/display/event/MspEventArgs;

    sget-object v1, Lcom/alipay/android/app/display/event/EventType;->Change:Lcom/alipay/android/app/display/event/EventType;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/display/event/MspEventArgs;-><init>(Lcom/alipay/android/app/display/event/EventType;)V

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/display/uielement/UILabel;->a(Lcom/alipay/android/app/display/event/MspEventArgs;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/alipay/android/app/display/uielement/ElementType;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/display/uielement/ElementType;->Label:Lcom/alipay/android/app/display/uielement/ElementType;

    return-object v0
.end method

.method protected final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    const-string/jumbo v0, "countdown"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/alipay/android/app/display/uielement/UILabel;->d:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v2, "countdown_interval"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v0, p0, Lcom/alipay/android/app/display/uielement/UILabel;->e:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    return-object v1

    :cond_1
    move-object v1, v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method protected bridge synthetic a(Landroid/content/Context;Landroid/view/View;Lcom/alipay/android/app/display/uielement/ElementStyle;)V
    .locals 0

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/android/app/display/uielement/UILabel;->a(Landroid/content/Context;Landroid/widget/TextView;Lcom/alipay/android/app/display/uielement/ElementStyle;)V

    return-void
.end method

.method protected a(Landroid/content/Context;Landroid/widget/TextView;Lcom/alipay/android/app/display/uielement/ElementStyle;)V
    .locals 2

    invoke-static {p2}, Lcom/alipay/android/app/display/uielement/ElementFactory;->a(Landroid/view/View;)V

    iput-object p2, p0, Lcom/alipay/android/app/display/uielement/UILabel;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UILabel;->g:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/alipay/android/app/display/uielement/UILabel;->c:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UILabel;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/UILabel;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/app/display/uielement/UILabel;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UILabel;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Lcom/alipay/android/app/util/UIUtils;->a(Ljava/lang/String;Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UILabel;->a:Ljava/lang/String;

    new-instance v1, Lcom/alipay/android/app/display/uielement/bb;

    invoke-direct {v1, p0, p2}, Lcom/alipay/android/app/display/uielement/bb;-><init>(Lcom/alipay/android/app/display/uielement/UILabel;Landroid/widget/TextView;)V

    invoke-static {v0, v1}, Lcom/alipay/android/app/util/UIUtils;->a(Ljava/lang/String;Lcom/alipay/android/app/widget/BaseTarget;)V

    invoke-virtual {p0, p2}, Lcom/alipay/android/app/display/uielement/UILabel;->a(Landroid/view/View;)V

    return-void
.end method

.method protected final a(Landroid/os/Handler;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/android/app/display/uielement/BaseElement;->a(Landroid/os/Handler;)V

    new-instance v0, Lcom/alipay/android/app/display/uielement/bh;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/display/uielement/bh;-><init>(Lcom/alipay/android/app/display/uielement/UILabel;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected final a(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "text"

    invoke-virtual {p0, v0, p2}, Lcom/alipay/android/app/display/uielement/UILabel;->a(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/alipay/android/app/display/uielement/bf;

    invoke-direct {v0, p0, p2}, Lcom/alipay/android/app/display/uielement/bf;-><init>(Lcom/alipay/android/app/display/uielement/UILabel;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected final a(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "countdown"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/display/uielement/UILabel;->d:I

    :cond_0
    const-string/jumbo v0, "countdown_interval"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/display/uielement/UILabel;->e:I

    :cond_1
    iget v0, p0, Lcom/alipay/android/app/display/uielement/UILabel;->d:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/alipay/android/app/display/uielement/UILabel;->e:I

    if-lez v0, :cond_2

    new-instance v0, Lcom/alipay/android/app/display/uielement/bg;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/display/uielement/bg;-><init>(Lcom/alipay/android/app/display/uielement/UILabel;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/display/uielement/BaseElement;->a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;)V

    const-string/jumbo v0, "icon"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/alipay/android/app/util/UIUtils;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/UILabel;->a:Ljava/lang/String;

    const-string/jumbo v0, "icon_align"

    const-string/jumbo v1, "left"

    invoke-virtual {p1, v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/UILabel;->b:Ljava/lang/String;

    :cond_0
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "single_line"

    invoke-virtual {p1, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/app/display/uielement/UILabel;->c:Z

    const-string/jumbo v0, "countdown"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/display/uielement/UILabel;->d:I

    const-string/jumbo v0, "countdown_interval"

    const/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/display/uielement/UILabel;->e:I

    iget v0, p0, Lcom/alipay/android/app/display/uielement/UILabel;->d:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/alipay/android/app/display/uielement/UILabel;->e:I

    if-lez v0, :cond_1

    invoke-super {p0}, Lcom/alipay/android/app/display/uielement/BaseElement;->p()V

    :cond_1
    const-string/jumbo v0, "countdown"

    iget v1, p0, Lcom/alipay/android/app/display/uielement/UILabel;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/app/display/uielement/UILabel;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "countdown_interval"

    iget v1, p0, Lcom/alipay/android/app/display/uielement/UILabel;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/app/display/uielement/UILabel;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public dispose()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/alipay/android/app/display/uielement/BaseElement;->dispose()V

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UILabel;->f:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UILabel;->f:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iput-object v1, p0, Lcom/alipay/android/app/display/uielement/UILabel;->f:Landroid/os/CountDownTimer;

    :cond_0
    iput-object v1, p0, Lcom/alipay/android/app/display/uielement/UILabel;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/android/app/display/uielement/UILabel;->b:Ljava/lang/String;

    return-void
.end method

.method protected o()I
    .locals 1

    const-string/jumbo v0, "msp_ui_label"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected final q()V
    .locals 6

    invoke-super {p0}, Lcom/alipay/android/app/display/uielement/BaseElement;->q()V

    new-instance v0, Lcom/alipay/android/app/display/uielement/bc;

    iget v1, p0, Lcom/alipay/android/app/display/uielement/UILabel;->d:I

    int-to-long v2, v1

    iget v1, p0, Lcom/alipay/android/app/display/uielement/UILabel;->e:I

    int-to-long v4, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/app/display/uielement/bc;-><init>(Lcom/alipay/android/app/display/uielement/UILabel;JJ)V

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/UILabel;->f:Landroid/os/CountDownTimer;

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UILabel;->f:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

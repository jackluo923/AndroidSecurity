.class public Lcom/alipay/android/app/display/uielement/UILink;
.super Lcom/alipay/android/app/display/uielement/BaseElement;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/android/app/display/uielement/BaseElement",
        "<",
        "Landroid/widget/LinearLayout;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/display/uielement/BaseElement;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/display/uielement/UILink;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UILink;->a:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/alipay/android/app/display/uielement/ElementType;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/display/uielement/ElementType;->Link:Lcom/alipay/android/app/display/uielement/ElementType;

    return-object v0
.end method

.method protected final synthetic a(Landroid/content/Context;Landroid/view/View;Lcom/alipay/android/app/display/uielement/ElementStyle;)V
    .locals 3

    check-cast p2, Landroid/widget/LinearLayout;

    const-string/jumbo v0, "link_title"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/UILink;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UILink;->a:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/alipay/android/app/display/uielement/ElementFactory;->a(Landroid/view/View;)V

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/UILink;->a:Landroid/widget/TextView;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/UILink;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/android/app/util/UIUtils;->a(Landroid/app/Activity;Ljava/lang/CharSequence;)Landroid/text/Spanned;

    move-result-object v0

    invoke-super {p0, v1, v0}, Lcom/alipay/android/app/display/uielement/BaseElement;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/UILink;->a:Landroid/widget/TextView;

    const-string/jumbo v2, "msp_dialog_tiltle_blue"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->c(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/UILink;->a:Landroid/widget/TextView;

    new-instance v2, Lcom/alipay/android/app/display/uielement/bj;

    invoke-direct {v2, p0}, Lcom/alipay/android/app/display/uielement/bj;-><init>(Lcom/alipay/android/app/display/uielement/UILink;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/UILink;->a:Landroid/widget/TextView;

    new-instance v2, Lcom/alipay/android/app/display/uielement/bl;

    invoke-direct {v2, p0, v0}, Lcom/alipay/android/app/display/uielement/bl;-><init>(Lcom/alipay/android/app/display/uielement/UILink;Landroid/content/res/Resources;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public dispose()V
    .locals 1

    invoke-super {p0}, Lcom/alipay/android/app/display/uielement/BaseElement;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/UILink;->a:Landroid/widget/TextView;

    return-void
.end method

.method protected final o()I
    .locals 1

    const-string/jumbo v0, "msp_ui_link"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

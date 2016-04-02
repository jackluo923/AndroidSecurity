.class final Lcom/alipay/android/app/display/uielement/bs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/android/app/display/uielement/UIRadioGroup;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/display/uielement/UIRadioGroup;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/display/uielement/bs;->b:Lcom/alipay/android/app/display/uielement/UIRadioGroup;

    iput-object p2, p0, Lcom/alipay/android/app/display/uielement/bs;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/bs;->b:Lcom/alipay/android/app/display/uielement/UIRadioGroup;

    invoke-static {v0}, Lcom/alipay/android/app/display/uielement/UIRadioGroup;->b(Lcom/alipay/android/app/display/uielement/UIRadioGroup;)Landroid/widget/RadioGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/bs;->b:Lcom/alipay/android/app/display/uielement/UIRadioGroup;

    invoke-static {v0}, Lcom/alipay/android/app/display/uielement/UIRadioGroup;->a(Lcom/alipay/android/app/display/uielement/UIRadioGroup;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/bs;->b:Lcom/alipay/android/app/display/uielement/UIRadioGroup;

    invoke-static {v0}, Lcom/alipay/android/app/display/uielement/UIRadioGroup;->a(Lcom/alipay/android/app/display/uielement/UIRadioGroup;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/display/uielement/bm;

    invoke-virtual {v0}, Lcom/alipay/android/app/display/uielement/bm;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/android/app/display/uielement/bs;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/bs;->b:Lcom/alipay/android/app/display/uielement/UIRadioGroup;

    invoke-static {v0}, Lcom/alipay/android/app/display/uielement/UIRadioGroup;->b(Lcom/alipay/android/app/display/uielement/UIRadioGroup;)Landroid/widget/RadioGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

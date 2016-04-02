.class final Lcom/alipay/android/app/display/uielement/aj;
.super Lcom/alipay/android/app/widget/CustomArrayAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/android/app/widget/CustomArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/app/display/uielement/UICombobox;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/display/uielement/UICombobox;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/display/uielement/aj;->a:Lcom/alipay/android/app/display/uielement/UICombobox;

    invoke-direct {p0, p2}, Lcom/alipay/android/app/widget/CustomArrayAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(ILandroid/widget/TextView;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/aj;->a:Lcom/alipay/android/app/display/uielement/UICombobox;

    invoke-static {v0}, Lcom/alipay/android/app/display/uielement/UICombobox;->d(Lcom/alipay/android/app/display/uielement/UICombobox;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/aj;->a:Lcom/alipay/android/app/display/uielement/UICombobox;

    invoke-static {v0}, Lcom/alipay/android/app/display/uielement/UICombobox;->d(Lcom/alipay/android/app/display/uielement/UICombobox;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/display/uielement/UICombobox$Option;

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/aj;->a:Lcom/alipay/android/app/display/uielement/UICombobox;

    invoke-static {v1, p2, v0}, Lcom/alipay/android/app/display/uielement/UICombobox;->a(Lcom/alipay/android/app/display/uielement/UICombobox;Landroid/widget/TextView;Lcom/alipay/android/app/display/uielement/UICombobox$Option;)V

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/aj;->a:Lcom/alipay/android/app/display/uielement/UICombobox;

    iget-object v0, v0, Lcom/alipay/android/app/display/uielement/UICombobox$Option;->a:Ljava/lang/String;

    invoke-virtual {v1, p2, v0}, Lcom/alipay/android/app/display/uielement/UICombobox;->b(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/aj;->a:Lcom/alipay/android/app/display/uielement/UICombobox;

    invoke-virtual {v0}, Lcom/alipay/android/app/display/uielement/UICombobox;->n()Lcom/alipay/android/app/display/uielement/ElementStyle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/aj;->a:Lcom/alipay/android/app/display/uielement/UICombobox;

    invoke-virtual {v0}, Lcom/alipay/android/app/display/uielement/UICombobox;->n()Lcom/alipay/android/app/display/uielement/ElementStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/display/uielement/ElementStyle;->a()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setGravity(I)V

    :cond_0
    return-void
.end method

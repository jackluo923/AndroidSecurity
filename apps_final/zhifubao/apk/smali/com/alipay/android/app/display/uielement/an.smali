.class final Lcom/alipay/android/app/display/uielement/an;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/display/uielement/UICombobox;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/display/uielement/UICombobox;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/display/uielement/an;->a:Lcom/alipay/android/app/display/uielement/UICombobox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/an;->a:Lcom/alipay/android/app/display/uielement/UICombobox;

    invoke-static {v0}, Lcom/alipay/android/app/display/uielement/UICombobox;->f(Lcom/alipay/android/app/display/uielement/UICombobox;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/an;->a:Lcom/alipay/android/app/display/uielement/UICombobox;

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/an;->a:Lcom/alipay/android/app/display/uielement/UICombobox;

    invoke-static {v0}, Lcom/alipay/android/app/display/uielement/UICombobox;->d(Lcom/alipay/android/app/display/uielement/UICombobox;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/android/app/display/uielement/an;->a:Lcom/alipay/android/app/display/uielement/UICombobox;

    invoke-static {v2}, Lcom/alipay/android/app/display/uielement/UICombobox;->e(Lcom/alipay/android/app/display/uielement/UICombobox;)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/display/uielement/UICombobox$Option;

    invoke-static {v1, v0}, Lcom/alipay/android/app/display/uielement/UICombobox;->a(Lcom/alipay/android/app/display/uielement/UICombobox;Lcom/alipay/android/app/display/uielement/UICombobox$Option;)V

    :cond_0
    return-void
.end method

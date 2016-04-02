.class final Lcom/alipay/android/app/ui/quickpay/uielement/an;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/uielement/UISwitch;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/uielement/UISwitch;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/an;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UISwitch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/an;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UISwitch;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UISwitch;->a(Lcom/alipay/android/app/ui/quickpay/uielement/UISwitch;)Z

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/an;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UISwitch;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/ui/quickpay/uielement/UISwitch;->a(Z)V

    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/an;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UISwitch;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UISwitch;->b(Lcom/alipay/android/app/ui/quickpay/uielement/UISwitch;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/an;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UISwitch;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UISwitch;->c(Lcom/alipay/android/app/ui/quickpay/uielement/UISwitch;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/an;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UISwitch;

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/uielement/UISwitch;->b(Lcom/alipay/android/app/ui/quickpay/uielement/UISwitch;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->a(Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;)[Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    move-result-object v0

    :goto_1
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/an;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UISwitch;

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/uielement/UISwitch;->d(Lcom/alipay/android/app/ui/quickpay/uielement/UISwitch;)Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;

    move-result-object v2

    if-eqz v2, :cond_2

    array-length v2, v0

    :goto_2
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/uielement/an;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UISwitch;

    invoke-static {v4}, Lcom/alipay/android/app/ui/quickpay/uielement/UISwitch;->d(Lcom/alipay/android/app/ui/quickpay/uielement/UISwitch;)Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;

    move-result-object v4

    new-instance v5, Lcom/alipay/android/app/ui/quickpay/uielement/ao;

    invoke-direct {v5, p0, p0, v3}, Lcom/alipay/android/app/ui/quickpay/uielement/ao;-><init>(Lcom/alipay/android/app/ui/quickpay/uielement/an;Ljava/lang/Object;Lcom/alipay/android/app/ui/quickpay/event/ActionType;)V

    const-wide/16 v6, 0x1e

    invoke-virtual {v4, v5, v6, v7}, Lcom/alipay/android/app/ui/quickpay/widget/CustomCheckbox;->postDelayed(Ljava/lang/Runnable;J)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/an;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UISwitch;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/uielement/UISwitch;->a(Z)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/an;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UISwitch;

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/uielement/UISwitch;->c(Lcom/alipay/android/app/ui/quickpay/uielement/UISwitch;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->a(Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;)[Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    move-result-object v0

    goto :goto_1

    :cond_2
    return-void
.end method

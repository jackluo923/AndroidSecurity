.class final Lcom/alipay/android/app/ui/quickpay/uielement/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/uielement/UIIcon;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/uielement/UIIcon;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/q;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/q;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIIcon;

    iget-object v0, v0, Lcom/alipay/android/app/ui/quickpay/uielement/UIIcon;->u:Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/q;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIIcon;

    iget-object v0, v0, Lcom/alipay/android/app/ui/quickpay/uielement/UIIcon;->u:Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->a(Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;)[Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    move-result-object v0

    :goto_0
    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    iget-object v4, v3, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->a:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    sget-object v5, Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;->Flush:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    if-ne v4, v5, :cond_1

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/uielement/q;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIIcon;

    invoke-static {v3}, Lcom/alipay/android/app/ui/quickpay/uielement/UIIcon;->a(Lcom/alipay/android/app/ui/quickpay/uielement/UIIcon;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/q;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIIcon;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIIcon;->F()Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->a(Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;)[Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/uielement/q;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIIcon;

    invoke-virtual {v4, p0, v3}, Lcom/alipay/android/app/ui/quickpay/uielement/UIIcon;->a(Ljava/lang/Object;Lcom/alipay/android/app/ui/quickpay/event/ActionType;)V

    goto :goto_2

    :cond_2
    return-void
.end method

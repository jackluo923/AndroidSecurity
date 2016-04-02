.class final Lcom/alipay/android/app/ui/quickpay/util/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:[Ljava/lang/String;

.field final synthetic f:Lcom/alipay/android/app/ui/quickpay/window/IUIForm;


# direct methods
.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/alipay/android/app/ui/quickpay/window/IUIForm;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/util/h;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/util/h;->b:[Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/android/app/ui/quickpay/util/h;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/android/app/ui/quickpay/util/h;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/android/app/ui/quickpay/util/h;->e:[Ljava/lang/String;

    iput-object p6, p0, Lcom/alipay/android/app/ui/quickpay/util/h;->f:Lcom/alipay/android/app/ui/quickpay/window/IUIForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/h;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/util/h;->b:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "js://changeSubmitValue(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/util/h;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\',\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/util/h;->b:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "js://changeHint(\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/util/h;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\',\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/util/h;->e:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u53f7\u7801\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/util/h;->f:Lcom/alipay/android/app/ui/quickpay/window/IUIForm;

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/util/h;->f:Lcom/alipay/android/app/ui/quickpay/window/IUIForm;

    new-instance v4, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    invoke-direct {v4, v0}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->a(Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;)[Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->a(Ljava/lang/Object;[Lcom/alipay/android/app/ui/quickpay/event/ActionType;)Z

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/h;->f:Lcom/alipay/android/app/ui/quickpay/window/IUIForm;

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/util/h;->f:Lcom/alipay/android/app/ui/quickpay/window/IUIForm;

    new-instance v3, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    invoke-direct {v3, v1}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->a(Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;)[Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->a(Ljava/lang/Object;[Lcom/alipay/android/app/ui/quickpay/event/ActionType;)Z

    :cond_0
    return-void
.end method

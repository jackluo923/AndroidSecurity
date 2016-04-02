.class final Lcom/alipay/android/app/display/uielement/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/display/uielement/BaseEditElement;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/display/uielement/BaseEditElement;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/display/uielement/g;->a:Lcom/alipay/android/app/display/uielement/BaseEditElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/g;->a:Lcom/alipay/android/app/display/uielement/BaseEditElement;

    invoke-static {v0}, Lcom/alipay/android/app/display/uielement/BaseEditElement;->a(Lcom/alipay/android/app/display/uielement/BaseEditElement;)V

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/g;->a:Lcom/alipay/android/app/display/uielement/BaseEditElement;

    invoke-static {v0}, Lcom/alipay/android/app/display/uielement/BaseEditElement;->b(Lcom/alipay/android/app/display/uielement/BaseEditElement;)Z

    :cond_0
    new-instance v0, Lcom/alipay/android/app/display/uielement/h;

    sget-object v1, Lcom/alipay/android/app/display/event/EventType;->Focus:Lcom/alipay/android/app/display/event/EventType;

    invoke-direct {v0, p0, v1, p2}, Lcom/alipay/android/app/display/uielement/h;-><init>(Lcom/alipay/android/app/display/uielement/g;Lcom/alipay/android/app/display/event/EventType;Z)V

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/g;->a:Lcom/alipay/android/app/display/uielement/BaseEditElement;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/display/uielement/BaseEditElement;->a(Lcom/alipay/android/app/display/event/MspEventArgs;)V

    return-void
.end method

.class final Lcom/alipay/android/app/display/uielement/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/widget/CustomEditText$OnDoneListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/display/uielement/BaseEditElement;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/display/uielement/BaseEditElement;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/display/uielement/e;->a:Lcom/alipay/android/app/display/uielement/BaseEditElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/e;->a:Lcom/alipay/android/app/display/uielement/BaseEditElement;

    invoke-virtual {v0}, Lcom/alipay/android/app/display/uielement/BaseEditElement;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/alipay/android/app/display/event/MspEventArgs;

    sget-object v1, Lcom/alipay/android/app/display/event/EventType;->Done:Lcom/alipay/android/app/display/event/EventType;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/display/event/MspEventArgs;-><init>(Lcom/alipay/android/app/display/event/EventType;)V

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/e;->a:Lcom/alipay/android/app/display/uielement/BaseEditElement;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/display/uielement/BaseEditElement;->a(Lcom/alipay/android/app/display/event/MspEventArgs;)V

    goto :goto_0
.end method

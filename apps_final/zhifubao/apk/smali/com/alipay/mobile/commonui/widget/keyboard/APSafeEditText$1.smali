.class Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText$1;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText$1;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    # getter for: Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->g:Z
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->access$000(Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText$1;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->showSafeKeyboard()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText$1;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText$1;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->requestFocus()Z

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText$1;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    # getter for: Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->b:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->access$100(Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText$1;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    # getter for: Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->b:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->access$100(Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText$1;->this$0:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    # getter for: Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->b:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->access$100(Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

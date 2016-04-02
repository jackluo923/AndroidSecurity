.class final Lcom/alipay/android/app/alikeyboard/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;

.field private final synthetic b:Lcom/alipay/android/app/alikeyboard/AliKeyboardType;

.field private final synthetic c:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;Lcom/alipay/android/app/alikeyboard/AliKeyboardType;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/alikeyboard/a;->a:Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;

    iput-object p2, p0, Lcom/alipay/android/app/alikeyboard/a;->b:Lcom/alipay/android/app/alikeyboard/AliKeyboardType;

    iput-object p3, p0, Lcom/alipay/android/app/alikeyboard/a;->c:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/app/alikeyboard/a;->a:Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;

    # getter for: Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->f:Lcom/alipay/android/app/alikeyboard/AlipayKeyboard$a;
    invoke-static {v0}, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->access$1(Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;)Lcom/alipay/android/app/alikeyboard/AlipayKeyboard$a;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard$a;->Show:Lcom/alipay/android/app/alikeyboard/AlipayKeyboard$a;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/alikeyboard/a;->a:Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;

    iget-object v1, p0, Lcom/alipay/android/app/alikeyboard/a;->b:Lcom/alipay/android/app/alikeyboard/AliKeyboardType;

    iget-object v2, p0, Lcom/alipay/android/app/alikeyboard/a;->c:Landroid/widget/EditText;

    # invokes: Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->a(Lcom/alipay/android/app/alikeyboard/AliKeyboardType;Landroid/widget/EditText;)V
    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->access$2(Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;Lcom/alipay/android/app/alikeyboard/AliKeyboardType;Landroid/widget/EditText;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/alikeyboard/a;->a:Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;

    # getter for: Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->f:Lcom/alipay/android/app/alikeyboard/AlipayKeyboard$a;
    invoke-static {v0}, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->access$1(Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;)Lcom/alipay/android/app/alikeyboard/AlipayKeyboard$a;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard$a;->Hide:Lcom/alipay/android/app/alikeyboard/AlipayKeyboard$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/alikeyboard/a;->a:Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;

    invoke-virtual {v0}, Lcom/alipay/android/app/alikeyboard/AlipayKeyboard;->hideKeyboard()V

    goto :goto_0
.end method

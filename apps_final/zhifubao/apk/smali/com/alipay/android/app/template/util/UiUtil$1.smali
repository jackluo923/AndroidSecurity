.class Lcom/alipay/android/app/template/util/UiUtil$1;
.super Ljava/lang/Object;
.source "UiUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/template/util/UiUtil$1;->a:Landroid/widget/EditText;

    .line 959
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 963
    iget-object v0, p0, Lcom/alipay/android/app/template/util/UiUtil$1;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 964
    iget-object v0, p0, Lcom/alipay/android/app/template/util/UiUtil$1;->a:Landroid/widget/EditText;

    .line 965
    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 966
    const-string/jumbo v1, "input_method"

    .line 965
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 964
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 967
    iget-object v1, p0, Lcom/alipay/android/app/template/util/UiUtil$1;->a:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 969
    :cond_0
    return-void
.end method

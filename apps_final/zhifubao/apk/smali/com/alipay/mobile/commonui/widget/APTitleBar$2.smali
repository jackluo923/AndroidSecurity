.class Lcom/alipay/mobile/commonui/widget/APTitleBar$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/APTitleBar;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/APTitleBar;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar$2;->this$0:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APTitleBar$2;->this$0:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v1, "input_method"

    invoke-virtual {v2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    if-eqz v2, :cond_0

    instance-of v1, v2, Landroid/app/Activity;

    if-eqz v1, :cond_0

    move-object v0, v2

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.class Lcom/alipay/mobile/framework/app/ui/DialogHelper$4;
.super Ljava/lang/Object;
.source "DialogHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/app/ui/DialogHelper;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$4;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 218
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$4;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    # getter for: Lcom/alipay/mobile/framework/app/ui/DialogHelper;->b:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->access$100(Lcom/alipay/mobile/framework/app/ui/DialogHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$4;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    # getter for: Lcom/alipay/mobile/framework/app/ui/DialogHelper;->b:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->access$100(Lcom/alipay/mobile/framework/app/ui/DialogHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$4;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    # getter for: Lcom/alipay/mobile/framework/app/ui/DialogHelper;->a:Landroid/app/Activity;
    invoke-static {v0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->access$000(Lcom/alipay/mobile/framework/app/ui/DialogHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$4;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    # getter for: Lcom/alipay/mobile/framework/app/ui/DialogHelper;->b:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->access$100(Lcom/alipay/mobile/framework/app/ui/DialogHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$4;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    # setter for: Lcom/alipay/mobile/framework/app/ui/DialogHelper;->b:Landroid/app/AlertDialog;
    invoke-static {v0, v4}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->access$102(Lcom/alipay/mobile/framework/app/ui/DialogHelper;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 221
    :catch_0
    move-exception v0

    .line 222
    :try_start_1
    const-string/jumbo v1, "DialogHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "DialogHelper.dismissProgressDialog(): exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$4;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    # setter for: Lcom/alipay/mobile/framework/app/ui/DialogHelper;->b:Landroid/app/AlertDialog;
    invoke-static {v0, v4}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->access$102(Lcom/alipay/mobile/framework/app/ui/DialogHelper;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$4;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    # setter for: Lcom/alipay/mobile/framework/app/ui/DialogHelper;->b:Landroid/app/AlertDialog;
    invoke-static {v1, v4}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->access$102(Lcom/alipay/mobile/framework/app/ui/DialogHelper;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    throw v0
.end method

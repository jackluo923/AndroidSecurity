.class Lcom/alipay/mobile/framework/app/ui/DialogHelper$3;
.super Ljava/lang/Object;
.source "DialogHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

.field final synthetic val$cancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field final synthetic val$cancelable:Z

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$showProgressBar:Z


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/app/ui/DialogHelper;Ljava/lang/String;ZZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$3;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    iput-object p2, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$3;->val$msg:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$3;->val$showProgressBar:Z

    iput-boolean p4, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$3;->val$cancelable:Z

    iput-object p5, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$3;->val$cancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 195
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$3;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    # getter for: Lcom/alipay/mobile/framework/app/ui/DialogHelper;->a:Landroid/app/Activity;
    invoke-static {v0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->access$000(Lcom/alipay/mobile/framework/app/ui/DialogHelper;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$3;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    # getter for: Lcom/alipay/mobile/framework/app/ui/DialogHelper;->a:Landroid/app/Activity;
    invoke-static {v0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->access$000(Lcom/alipay/mobile/framework/app/ui/DialogHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$3;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    new-instance v1, Lcom/alipay/mobile/framework/app/ui/DialogHelper$APGenericProgressDialog;

    iget-object v2, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$3;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    iget-object v3, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$3;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    # getter for: Lcom/alipay/mobile/framework/app/ui/DialogHelper;->a:Landroid/app/Activity;
    invoke-static {v3}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->access$000(Lcom/alipay/mobile/framework/app/ui/DialogHelper;)Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alipay/mobile/framework/app/ui/DialogHelper$APGenericProgressDialog;-><init>(Lcom/alipay/mobile/framework/app/ui/DialogHelper;Landroid/content/Context;)V

    # setter for: Lcom/alipay/mobile/framework/app/ui/DialogHelper;->b:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->access$102(Lcom/alipay/mobile/framework/app/ui/DialogHelper;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 197
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$3;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    # getter for: Lcom/alipay/mobile/framework/app/ui/DialogHelper;->b:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->access$100(Lcom/alipay/mobile/framework/app/ui/DialogHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$3;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$3;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    # getter for: Lcom/alipay/mobile/framework/app/ui/DialogHelper;->b:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->access$100(Lcom/alipay/mobile/framework/app/ui/DialogHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$APGenericProgressDialog;

    iget-boolean v1, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$3;->val$showProgressBar:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ui/DialogHelper$APGenericProgressDialog;->setProgressVisiable(Z)V

    .line 199
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$3;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    # getter for: Lcom/alipay/mobile/framework/app/ui/DialogHelper;->b:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->access$100(Lcom/alipay/mobile/framework/app/ui/DialogHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$3;->val$cancelable:Z

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 200
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$3;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    # getter for: Lcom/alipay/mobile/framework/app/ui/DialogHelper;->b:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->access$100(Lcom/alipay/mobile/framework/app/ui/DialogHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$3;->val$cancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 201
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$3;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    # getter for: Lcom/alipay/mobile/framework/app/ui/DialogHelper;->b:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->access$100(Lcom/alipay/mobile/framework/app/ui/DialogHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$3;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    # getter for: Lcom/alipay/mobile/framework/app/ui/DialogHelper;->b:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->access$100(Lcom/alipay/mobile/framework/app/ui/DialogHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 205
    :catch_0
    move-exception v0

    .line 206
    const-string/jumbo v1, "DialogHelper"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 207
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$3;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    const/4 v1, 0x0

    # setter for: Lcom/alipay/mobile/framework/app/ui/DialogHelper;->b:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->access$102(Lcom/alipay/mobile/framework/app/ui/DialogHelper;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto :goto_0
.end method

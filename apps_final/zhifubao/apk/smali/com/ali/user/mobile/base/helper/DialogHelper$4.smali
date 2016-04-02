.class Lcom/ali/user/mobile/base/helper/DialogHelper$4;
.super Ljava/lang/Object;
.source "DialogHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Z

.field private final synthetic c:Z

.field private final synthetic d:Landroid/content/DialogInterface$OnCancelListener;

.field final synthetic this$0:Lcom/ali/user/mobile/base/helper/DialogHelper;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/base/helper/DialogHelper;Ljava/lang/String;ZZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$4;->this$0:Lcom/ali/user/mobile/base/helper/DialogHelper;

    iput-object p2, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$4;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$4;->b:Z

    iput-boolean p4, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$4;->c:Z

    iput-object p5, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$4;->d:Landroid/content/DialogInterface$OnCancelListener;

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 205
    iget-object v0, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$4;->this$0:Lcom/ali/user/mobile/base/helper/DialogHelper;

    # getter for: Lcom/ali/user/mobile/base/helper/DialogHelper;->a:Landroid/app/Activity;
    invoke-static {v0}, Lcom/ali/user/mobile/base/helper/DialogHelper;->access$0(Lcom/ali/user/mobile/base/helper/DialogHelper;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$4;->this$0:Lcom/ali/user/mobile/base/helper/DialogHelper;

    # getter for: Lcom/ali/user/mobile/base/helper/DialogHelper;->a:Landroid/app/Activity;
    invoke-static {v0}, Lcom/ali/user/mobile/base/helper/DialogHelper;->access$0(Lcom/ali/user/mobile/base/helper/DialogHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$4;->this$0:Lcom/ali/user/mobile/base/helper/DialogHelper;

    new-instance v1, Lcom/alipay/mobile/commonui/widget/APGenericProgressDialog;

    iget-object v2, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$4;->this$0:Lcom/ali/user/mobile/base/helper/DialogHelper;

    # getter for: Lcom/ali/user/mobile/base/helper/DialogHelper;->a:Landroid/app/Activity;
    invoke-static {v2}, Lcom/ali/user/mobile/base/helper/DialogHelper;->access$0(Lcom/ali/user/mobile/base/helper/DialogHelper;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alipay/mobile/commonui/widget/APGenericProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/ali/user/mobile/base/helper/DialogHelper;->access$1(Lcom/ali/user/mobile/base/helper/DialogHelper;Landroid/app/AlertDialog;)V

    .line 210
    iget-object v0, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$4;->this$0:Lcom/ali/user/mobile/base/helper/DialogHelper;

    # getter for: Lcom/ali/user/mobile/base/helper/DialogHelper;->b:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/ali/user/mobile/base/helper/DialogHelper;->access$2(Lcom/ali/user/mobile/base/helper/DialogHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$4;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v0, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$4;->this$0:Lcom/ali/user/mobile/base/helper/DialogHelper;

    # getter for: Lcom/ali/user/mobile/base/helper/DialogHelper;->b:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/ali/user/mobile/base/helper/DialogHelper;->access$2(Lcom/ali/user/mobile/base/helper/DialogHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APGenericProgressDialog;

    iget-boolean v1, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$4;->b:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APGenericProgressDialog;->setProgressVisiable(Z)V

    .line 212
    iget-object v0, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$4;->this$0:Lcom/ali/user/mobile/base/helper/DialogHelper;

    # getter for: Lcom/ali/user/mobile/base/helper/DialogHelper;->b:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/ali/user/mobile/base/helper/DialogHelper;->access$2(Lcom/ali/user/mobile/base/helper/DialogHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$4;->c:Z

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 213
    iget-object v0, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$4;->this$0:Lcom/ali/user/mobile/base/helper/DialogHelper;

    # getter for: Lcom/ali/user/mobile/base/helper/DialogHelper;->b:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/ali/user/mobile/base/helper/DialogHelper;->access$2(Lcom/ali/user/mobile/base/helper/DialogHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$4;->d:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 214
    iget-object v0, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$4;->this$0:Lcom/ali/user/mobile/base/helper/DialogHelper;

    # getter for: Lcom/ali/user/mobile/base/helper/DialogHelper;->b:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/ali/user/mobile/base/helper/DialogHelper;->access$2(Lcom/ali/user/mobile/base/helper/DialogHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$4;->this$0:Lcom/ali/user/mobile/base/helper/DialogHelper;

    # getter for: Lcom/ali/user/mobile/base/helper/DialogHelper;->b:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/ali/user/mobile/base/helper/DialogHelper;->access$2(Lcom/ali/user/mobile/base/helper/DialogHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 217
    :catch_0
    move-exception v0

    .line 218
    const-string/jumbo v1, "DialogHelper"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 219
    iget-object v0, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$4;->this$0:Lcom/ali/user/mobile/base/helper/DialogHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ali/user/mobile/base/helper/DialogHelper;->access$1(Lcom/ali/user/mobile/base/helper/DialogHelper;Landroid/app/AlertDialog;)V

    goto :goto_0
.end method

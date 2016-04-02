.class Lcom/ali/user/mobile/base/helper/DialogHelper$5;
.super Ljava/lang/Object;
.source "DialogHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/base/helper/DialogHelper;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/base/helper/DialogHelper;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$5;->this$0:Lcom/ali/user/mobile/base/helper/DialogHelper;

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 229
    iget-object v0, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$5;->this$0:Lcom/ali/user/mobile/base/helper/DialogHelper;

    # getter for: Lcom/ali/user/mobile/base/helper/DialogHelper;->b:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/ali/user/mobile/base/helper/DialogHelper;->access$2(Lcom/ali/user/mobile/base/helper/DialogHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$5;->this$0:Lcom/ali/user/mobile/base/helper/DialogHelper;

    # getter for: Lcom/ali/user/mobile/base/helper/DialogHelper;->b:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/ali/user/mobile/base/helper/DialogHelper;->access$2(Lcom/ali/user/mobile/base/helper/DialogHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$5;->this$0:Lcom/ali/user/mobile/base/helper/DialogHelper;

    # getter for: Lcom/ali/user/mobile/base/helper/DialogHelper;->a:Landroid/app/Activity;
    invoke-static {v0}, Lcom/ali/user/mobile/base/helper/DialogHelper;->access$0(Lcom/ali/user/mobile/base/helper/DialogHelper;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$5;->this$0:Lcom/ali/user/mobile/base/helper/DialogHelper;

    # getter for: Lcom/ali/user/mobile/base/helper/DialogHelper;->a:Landroid/app/Activity;
    invoke-static {v0}, Lcom/ali/user/mobile/base/helper/DialogHelper;->access$0(Lcom/ali/user/mobile/base/helper/DialogHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$5;->this$0:Lcom/ali/user/mobile/base/helper/DialogHelper;

    # getter for: Lcom/ali/user/mobile/base/helper/DialogHelper;->b:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/ali/user/mobile/base/helper/DialogHelper;->access$2(Lcom/ali/user/mobile/base/helper/DialogHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    iget-object v0, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$5;->this$0:Lcom/ali/user/mobile/base/helper/DialogHelper;

    invoke-static {v0, v4}, Lcom/ali/user/mobile/base/helper/DialogHelper;->access$1(Lcom/ali/user/mobile/base/helper/DialogHelper;Landroid/app/AlertDialog;)V

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 232
    :catch_0
    move-exception v0

    .line 233
    :try_start_1
    const-string/jumbo v1, "DialogHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "DialogHelper.dismissProgressDialog(): Throwable="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/AliUserLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    iget-object v0, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$5;->this$0:Lcom/ali/user/mobile/base/helper/DialogHelper;

    invoke-static {v0, v4}, Lcom/ali/user/mobile/base/helper/DialogHelper;->access$1(Lcom/ali/user/mobile/base/helper/DialogHelper;Landroid/app/AlertDialog;)V

    goto :goto_0

    .line 234
    :catchall_0
    move-exception v0

    .line 235
    iget-object v1, p0, Lcom/ali/user/mobile/base/helper/DialogHelper$5;->this$0:Lcom/ali/user/mobile/base/helper/DialogHelper;

    invoke-static {v1, v4}, Lcom/ali/user/mobile/base/helper/DialogHelper;->access$1(Lcom/ali/user/mobile/base/helper/DialogHelper;Landroid/app/AlertDialog;)V

    .line 236
    throw v0
.end method

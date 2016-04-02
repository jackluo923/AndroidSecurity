.class Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler$1;
.super Ljava/lang/Object;
.source "FrameworkExceptionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$microContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field final synthetic val$topRunningApp:Lcom/alipay/mobile/framework/app/MicroApplication;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;Landroid/app/Activity;Lcom/alipay/mobile/framework/app/MicroApplication;Lcom/alipay/mobile/framework/MicroApplicationContext;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler$1;->this$0:Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;

    iput-object p2, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler$1;->val$topRunningApp:Lcom/alipay/mobile/framework/app/MicroApplication;

    iput-object p4, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler$1;->val$microContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 253
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler$1;->val$activity:Landroid/app/Activity;

    sget v1, Lcom/alipay/mobile/framework/R$string;->businessStop:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 254
    iget-object v0, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler$1;->this$0:Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;

    # getter for: Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->d:Z
    invoke-static {v0}, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;->access$000(Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " AppID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler$1;->val$topRunningApp:Lcom/alipay/mobile/framework/app/MicroApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler$1;->val$activity:Landroid/app/Activity;

    sget v1, Lcom/alipay/mobile/framework/R$string;->confirm:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 258
    iget-object v0, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler$1;->val$microContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const/4 v1, 0x0

    new-instance v4, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler$1$1;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler$1$1;-><init>(Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler$1;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :goto_0
    return-void

    .line 266
    :catch_0
    move-exception v0

    .line 267
    const-string/jumbo v1, "FwkExceptionHandler"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 268
    iget-object v0, p0, Lcom/alipay/mobile/core/exception/FrameworkExceptionHandler$1;->val$topRunningApp:Lcom/alipay/mobile/framework/app/MicroApplication;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/framework/app/MicroApplication;->destroy(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.class Lcom/alipay/mobile/core/debug/DebuggingService$1;
.super Ljava/lang/Object;
.source "DebuggingService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/core/debug/DebuggingService;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/core/debug/DebuggingService;Landroid/content/Context;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/alipay/mobile/core/debug/DebuggingService$1;->this$0:Lcom/alipay/mobile/core/debug/DebuggingService;

    iput-object p2, p0, Lcom/alipay/mobile/core/debug/DebuggingService$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/alipay/mobile/core/debug/DebuggingService$1;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/core/debug/DebuggingService$1;->val$context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/core/debug/DebuggingService$1;->val$file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u5df2\u7ecf\u5b89\u88c5 ok\u3002"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 83
    return-void
.end method

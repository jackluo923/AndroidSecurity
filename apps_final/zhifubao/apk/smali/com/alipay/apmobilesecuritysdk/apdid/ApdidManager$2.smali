.class Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;


# direct methods
.method constructor <init>(Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager$2;->this$0:Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/alipay/apmobilesecuritysdk/log/LOG;->uploadLogFile()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager$2;->this$0:Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;

    # getter for: Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->a:Landroid/content/Context;
    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->access$100(Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/apmobilesecuritysdk/log/LOG;->logException(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

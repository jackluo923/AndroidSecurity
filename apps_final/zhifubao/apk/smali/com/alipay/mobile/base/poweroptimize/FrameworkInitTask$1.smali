.class Lcom/alipay/mobile/base/poweroptimize/FrameworkInitTask$1;
.super Ljava/lang/Object;
.source "FrameworkInitTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/base/poweroptimize/FrameworkInitTask;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/base/poweroptimize/FrameworkInitTask;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/base/poweroptimize/FrameworkInitTask$1;->this$0:Lcom/alipay/mobile/base/poweroptimize/FrameworkInitTask;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/base/poweroptimize/FrameworkInitTask$1;->this$0:Lcom/alipay/mobile/base/poweroptimize/FrameworkInitTask;

    # invokes: Lcom/alipay/mobile/base/poweroptimize/FrameworkInitTask;->checkAnomalousStartup()V
    invoke-static {v0}, Lcom/alipay/mobile/base/poweroptimize/FrameworkInitTask;->access$0(Lcom/alipay/mobile/base/poweroptimize/FrameworkInitTask;)V

    .line 45
    return-void
.end method

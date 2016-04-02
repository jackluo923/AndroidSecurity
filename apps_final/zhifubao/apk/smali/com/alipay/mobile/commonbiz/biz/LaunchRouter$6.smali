.class Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$6;
.super Ljava/lang/Object;
.source "LaunchRouter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$6;->this$0:Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;

    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$6;)Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$6;->this$0:Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 482
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$6$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$6$1;-><init>(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$6;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 496
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 497
    return-void
.end method

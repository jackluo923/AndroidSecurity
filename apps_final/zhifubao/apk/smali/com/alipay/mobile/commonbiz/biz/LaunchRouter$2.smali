.class Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$2;
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
    iput-object p1, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$2;->this$0:Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$2;->this$0:Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->startMain()V

    .line 155
    return-void
.end method

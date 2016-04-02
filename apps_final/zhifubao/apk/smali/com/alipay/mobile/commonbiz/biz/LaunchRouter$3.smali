.class Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$3;
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
    iput-object p1, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$3;->this$0:Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$3;->this$0:Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;

    # getter for: Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->access$2(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 249
    return-void
.end method

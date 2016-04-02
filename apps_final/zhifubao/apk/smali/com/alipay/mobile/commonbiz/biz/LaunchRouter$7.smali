.class Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$7;
.super Ljava/lang/Object;
.source "LaunchRouter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;

.field private final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$7;->this$0:Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;

    iput-object p2, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$7;->val$uri:Landroid/net/Uri;

    .line 514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 517
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$7;->this$0:Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;

    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$7;->val$uri:Landroid/net/Uri;

    # invokes: Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->processScheme(Landroid/net/Uri;)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->access$6(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;Landroid/net/Uri;)V

    .line 518
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$7;->this$0:Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;

    # getter for: Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->access$2(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 519
    return-void
.end method

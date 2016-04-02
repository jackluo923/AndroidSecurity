.class Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$5;
.super Ljava/lang/Object;
.source "LaunchRouter.java"

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;

.field private final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$5;->this$0:Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;

    iput-object p2, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$5;->val$uri:Landroid/net/Uri;

    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGestureResult(Z)V
    .locals 2

    .prologue
    .line 439
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$5;->this$0:Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;

    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$5;->val$uri:Landroid/net/Uri;

    # invokes: Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->processGestureCallBack(Landroid/net/Uri;)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->access$4(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;Landroid/net/Uri;)V

    .line 440
    return-void
.end method

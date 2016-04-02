.class Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$4;
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
    iput-object p1, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$4;->this$0:Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;

    iput-object p2, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$4;->val$uri:Landroid/net/Uri;

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGestureResult(Z)V
    .locals 3

    .prologue
    .line 294
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    # getter for: Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->access$3()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "LaunchRouter\u4e2d\u624b\u52bf\u670d\u52a1\u56de\u8c03entryToDefaultBundle()"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$4;->this$0:Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;

    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$4;->val$uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->entryToDefaultBundle(Landroid/net/Uri;)V

    .line 296
    return-void
.end method

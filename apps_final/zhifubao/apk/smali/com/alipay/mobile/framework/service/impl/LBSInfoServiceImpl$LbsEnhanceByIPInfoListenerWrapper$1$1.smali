.class Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$2:Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper$1;

.field private final synthetic val$locationupdate:Lcom/alipay/mobilelbs/common/service/facade/vo/Location;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper$1;Lcom/alipay/mobilelbs/common/service/facade/vo/Location;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper$1$1;->this$2:Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper$1;

    iput-object p2, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper$1$1;->val$locationupdate:Lcom/alipay/mobilelbs/common/service/facade/vo/Location;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper$1$1;->this$2:Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper$1;

    # getter for: Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper$1;->this$1:Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper;
    invoke-static {v0}, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper$1;->access$0(Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper$1;)Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper;->mInfoListener:Lcom/alipay/mobile/framework/service/LBSInfoService$LBSInfoListener;

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper$1$1;->val$locationupdate:Lcom/alipay/mobilelbs/common/service/facade/vo/Location;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/service/LBSInfoService$LBSInfoListener;->onLBSInfoChanged(Lcom/alipay/mobilelbs/common/service/facade/vo/Location;)V

    return-void
.end method

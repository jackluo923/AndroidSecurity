.class Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsInfoListenerWrapper;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/common/lbs/LBSLocationListener;


# instance fields
.field mInfoListener:Lcom/alipay/mobile/framework/service/LBSInfoService$LBSInfoListener;

.field final synthetic this$0:Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;Lcom/alipay/mobile/framework/service/LBSInfoService$LBSInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsInfoListenerWrapper;->this$0:Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsInfoListenerWrapper;->mInfoListener:Lcom/alipay/mobile/framework/service/LBSInfoService$LBSInfoListener;

    return-void
.end method


# virtual methods
.method public onLocationFailed(I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsInfoListenerWrapper;->mInfoListener:Lcom/alipay/mobile/framework/service/LBSInfoService$LBSInfoListener;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/framework/service/LBSInfoService$LBSInfoListener;->onGetLBSInfoFailed(I)V

    return-void
.end method

.method public onLocationUpdate(Lcom/alipay/mobile/common/lbs/LBSLocation;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsInfoListenerWrapper;->this$0:Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;

    # invokes: Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->buildLocation(Lcom/alipay/mobile/common/lbs/LBSLocation;)Lcom/alipay/mobilelbs/common/service/facade/vo/Location;
    invoke-static {v0, p1}, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->access$0(Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;Lcom/alipay/mobile/common/lbs/LBSLocation;)Lcom/alipay/mobilelbs/common/service/facade/vo/Location;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsInfoListenerWrapper;->mInfoListener:Lcom/alipay/mobile/framework/service/LBSInfoService$LBSInfoListener;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/service/LBSInfoService$LBSInfoListener;->onLBSInfoChanged(Lcom/alipay/mobilelbs/common/service/facade/vo/Location;)V

    return-void
.end method

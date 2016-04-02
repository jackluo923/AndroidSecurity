.class Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/common/lbs/LBSLocationListener;


# instance fields
.field appKeyString:Ljava/lang/String;

.field handler:Landroid/os/Handler;

.field mInfoListener:Lcom/alipay/mobile/framework/service/LBSInfoService$LBSInfoListener;

.field final synthetic this$0:Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;Lcom/alipay/mobile/framework/service/LBSInfoService$LBSInfoListener;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper;->this$0:Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper;->handler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper;->mInfoListener:Lcom/alipay/mobile/framework/service/LBSInfoService$LBSInfoListener;

    iput-object p3, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper;->appKeyString:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper;)Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper;->this$0:Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;

    return-object v0
.end method


# virtual methods
.method public onLocationFailed(I)V
    .locals 0

    return-void
.end method

.method public onLocationUpdate(Lcom/alipay/mobile/common/lbs/LBSLocation;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper$1;-><init>(Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

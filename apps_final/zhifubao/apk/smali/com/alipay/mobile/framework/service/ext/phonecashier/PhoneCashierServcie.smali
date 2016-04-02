.class public abstract Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierServcie;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract boot(Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;)V
.end method

.method public abstract boot(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;)V
.end method

.method public abstract bootToCertification(Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;)V
.end method

.method public abstract checkAndUpdate(Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;)V
.end method

.method public abstract createLiveConnection()V
.end method

.method public abstract handleError(Landroid/app/Activity;Ljava/lang/String;)V
.end method

.method public abstract loadLocalTid()Lcom/alipay/android/app/helper/Tid;
.end method

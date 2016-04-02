.class public abstract Lcom/alipay/android/app/helper/PayHelperServcie;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createLiveConnection()V
.end method

.method public abstract getIMEI()Ljava/lang/String;
.end method

.method public abstract getIMSI()Ljava/lang/String;
.end method

.method public abstract getPaySysInfo()Ljava/lang/String;
.end method

.method public abstract getTIDValue()Ljava/lang/String;
.end method

.method public abstract getVirtualImei()Ljava/lang/String;
.end method

.method public abstract getVirtualImsi()Ljava/lang/String;
.end method

.method public abstract hardwarePayExecute(Landroid/content/Context;ILjava/lang/String;Lcom/alipay/mobile/framework/service/ext/phonecashier/HardwarePayCallback;)V
.end method

.method public abstract isExistMsp()Z
.end method

.method public abstract loadLocalTid()Lcom/alipay/android/app/helper/Tid;
.end method

.method public abstract loadOrCreateTID()Lcom/alipay/android/app/helper/Tid;
.end method

.method public abstract resetTID()Z
.end method

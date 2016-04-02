.class public abstract Lcom/alipay/android/app/hardwarepay/PhoneCashierHardwarePayService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract checkUserStatus(Ljava/lang/String;)I
.end method

.method public abstract getAuthInfo()[Ljava/lang/String;
.end method

.method public abstract init(Landroid/content/Context;ILjava/util/Properties;)I
.end method

.method public abstract process(ILjava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract process(IILjava/lang/String;Lcom/alipay/mobile/framework/service/ext/phonecashier/HardwarePayCallback;)V
.end method

.method public abstract registedFingerPrintNumber()I
.end method

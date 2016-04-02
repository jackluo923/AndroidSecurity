.class public abstract Lcom/alipay/android/app/hardwarepay/BraceletPayService;
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

.method public abstract initHardwarePay(Landroid/content/Context;ILjava/util/Properties;)I
.end method

.method public abstract process(ILjava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract process(IILjava/lang/String;ILjava/lang/Object;Landroid/content/Context;)V
.end method

.method public abstract scanBluetoothDevice(Landroid/content/Context;Ljava/lang/Object;)V
.end method

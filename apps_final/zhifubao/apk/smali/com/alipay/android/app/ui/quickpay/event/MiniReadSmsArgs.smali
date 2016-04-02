.class public abstract Lcom/alipay/android/app/ui/quickpay/event/MiniReadSmsArgs;
.super Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    sget-object v1, Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;->ReadSms:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;-><init>(Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;)V

    invoke-direct {p0, v0}, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;-><init>(Lcom/alipay/android/app/ui/quickpay/event/ActionType;)V

    return-void
.end method


# virtual methods
.method public abstract reSendSuccess()V
.end method

.method public abstract readSuccess(Ljava/lang/String;)V
.end method

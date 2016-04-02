.class final Lcom/alipay/android/widgets/asset/q;
.super Ljava/lang/Object;
.source "WealthHomeBroadcastReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/q;->a:Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 407
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/q;->a:Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->g(Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;)Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;

    move-result-object v0

    .line 408
    const-string/jumbo v1, "LOGON"

    .line 409
    const-string/jumbo v2, "login"

    .line 407
    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    return-void
.end method

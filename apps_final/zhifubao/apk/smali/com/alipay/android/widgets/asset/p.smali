.class final Lcom/alipay/android/widgets/asset/p;
.super Lcom/alipay/mobile/framework/service/common/TaskScheduleService$Transaction;
.source "WealthHomeBroadcastReceiver.java"


# instance fields
.field final synthetic a:Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;

.field private final synthetic b:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;


# direct methods
.method constructor <init>(Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/p;->a:Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;

    iput-object p2, p0, Lcom/alipay/android/widgets/asset/p;->b:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    .line 316
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$Transaction;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 320
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/p;->a:Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/p;->b:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    invoke-virtual {p0}, Lcom/alipay/android/widgets/asset/p;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;->a(Lcom/alipay/android/widgets/asset/WealthHomeBroadcastReceiver;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;Ljava/lang/String;)V

    .line 321
    return-void
.end method

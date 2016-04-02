.class Lcom/ali/user/mobile/report/ReportLocationService$1;
.super Ljava/lang/Object;
.source "ReportLocationService.java"

# interfaces
.implements Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationListener;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field final synthetic this$0:Lcom/ali/user/mobile/report/ReportLocationService;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/report/ReportLocationService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/report/ReportLocationService$1;->this$0:Lcom/ali/user/mobile/report/ReportLocationService;

    iput-object p2, p0, Lcom/ali/user/mobile/report/ReportLocationService$1;->a:Ljava/lang/String;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationUpdate(Lcom/ali/user/alipay/mobile/common/lbs/LBSLocation;)V
    .locals 3

    .prologue
    .line 73
    if-eqz p1, :cond_0

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/report/ReportLocationService$1;->this$0:Lcom/ali/user/mobile/report/ReportLocationService;

    iget-object v1, p0, Lcom/ali/user/mobile/report/ReportLocationService$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ali/user/mobile/report/ReportLocationService;->access$0(Lcom/ali/user/mobile/report/ReportLocationService;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :cond_0
    invoke-static {}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getInstance()Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/report/ReportLocationService$1;->this$0:Lcom/ali/user/mobile/report/ReportLocationService;

    iget-object v1, v1, Lcom/ali/user/mobile/report/ReportLocationService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->removeUpdates(Landroid/content/Context;Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationListener;)V

    .line 81
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    :try_start_1
    const-string/jumbo v1, "ReportLocationService"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    invoke-static {}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getInstance()Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/report/ReportLocationService$1;->this$0:Lcom/ali/user/mobile/report/ReportLocationService;

    iget-object v1, v1, Lcom/ali/user/mobile/report/ReportLocationService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->removeUpdates(Landroid/content/Context;Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationListener;)V

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    .line 79
    invoke-static {}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getInstance()Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/ali/user/mobile/report/ReportLocationService$1;->this$0:Lcom/ali/user/mobile/report/ReportLocationService;

    iget-object v2, v2, Lcom/ali/user/mobile/report/ReportLocationService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p0}, Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationManagerProxy;->removeUpdates(Landroid/content/Context;Lcom/ali/user/alipay/mobile/common/lbs/LBSLocationListener;)V

    .line 80
    throw v0
.end method

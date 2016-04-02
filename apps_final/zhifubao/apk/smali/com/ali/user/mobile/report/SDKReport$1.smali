.class Lcom/ali/user/mobile/report/SDKReport$1;
.super Ljava/lang/Object;
.source "SDKReport.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 29
    :try_start_0
    new-instance v0, Lcom/ali/user/mobile/report/ReportDeviceService;

    # getter for: Lcom/ali/user/mobile/report/SDKReport;->a:Landroid/content/Context;
    invoke-static {}, Lcom/ali/user/mobile/report/SDKReport;->access$0()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ali/user/mobile/report/ReportDeviceService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/ali/user/mobile/report/ReportDeviceService;->reportDeviceInfo()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    const-string/jumbo v1, "SDKReport"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

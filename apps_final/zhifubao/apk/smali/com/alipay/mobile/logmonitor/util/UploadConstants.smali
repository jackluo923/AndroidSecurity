.class public Lcom/alipay/mobile/logmonitor/util/UploadConstants;
.super Ljava/lang/Object;
.source "UploadConstants.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;

.field public static l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string/jumbo v0, "http://mdap.alipay.com/loggw/extLog.do"

    sput-object v0, Lcom/alipay/mobile/logmonitor/util/UploadConstants;->a:Ljava/lang/String;

    .line 13
    const-string/jumbo v0, "http://mdap-1-64.test.alipay.net/loggw/extLog.do"

    sput-object v0, Lcom/alipay/mobile/logmonitor/util/UploadConstants;->b:Ljava/lang/String;

    .line 15
    const-string/jumbo v0, "http://mdap.alipay.com/loggw/report_diangosis_upload_status.htm"

    sput-object v0, Lcom/alipay/mobile/logmonitor/util/UploadConstants;->c:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, "http://mdap-1-64.test.alipay.net/report_diangosis_upload_status.htm"

    sput-object v0, Lcom/alipay/mobile/logmonitor/util/UploadConstants;->d:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, "logcat"

    sput-object v0, Lcom/alipay/mobile/logmonitor/util/UploadConstants;->e:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, "applog"

    sput-object v0, Lcom/alipay/mobile/logmonitor/util/UploadConstants;->f:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, "trafficLog"

    sput-object v0, Lcom/alipay/mobile/logmonitor/util/UploadConstants;->g:Ljava/lang/String;

    .line 22
    const-string/jumbo v0, "anrLog"

    sput-object v0, Lcom/alipay/mobile/logmonitor/util/UploadConstants;->h:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, "traceviewWallet"

    sput-object v0, Lcom/alipay/mobile/logmonitor/util/UploadConstants;->i:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, "traceviewPush"

    sput-object v0, Lcom/alipay/mobile/logmonitor/util/UploadConstants;->j:Ljava/lang/String;

    .line 25
    const-string/jumbo v0, "stacktracerWallet"

    sput-object v0, Lcom/alipay/mobile/logmonitor/util/UploadConstants;->k:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, "stacktracerPush"

    sput-object v0, Lcom/alipay/mobile/logmonitor/util/UploadConstants;->l:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 29
    const/4 v0, 0x0

    .line 31
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 32
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 33
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v2, "logging.gateway"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/loggw/extLog.do"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 41
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 42
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getReleaseType()Ljava/lang/String;

    .line 43
    const-string/jumbo v0, "dev"

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->getReleaseType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "test"

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->getReleaseType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 45
    :cond_1
    sget-object v0, Lcom/alipay/mobile/logmonitor/util/UploadConstants;->b:Ljava/lang/String;

    .line 51
    :cond_2
    :goto_1
    return-object v0

    .line 47
    :cond_3
    sget-object v0, Lcom/alipay/mobile/logmonitor/util/UploadConstants;->a:Ljava/lang/String;

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 55
    const/4 v0, 0x0

    .line 57
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 58
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 59
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v2, "logging.gateway"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/loggw/report_diangosis_upload_status.htm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 67
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 68
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getReleaseType()Ljava/lang/String;

    .line 69
    const-string/jumbo v0, "dev"

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->getReleaseType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "test"

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->getReleaseType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 71
    :cond_1
    sget-object v0, Lcom/alipay/mobile/logmonitor/util/UploadConstants;->d:Ljava/lang/String;

    .line 77
    :cond_2
    :goto_1
    return-object v0

    .line 73
    :cond_3
    sget-object v0, Lcom/alipay/mobile/logmonitor/util/UploadConstants;->c:Ljava/lang/String;

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

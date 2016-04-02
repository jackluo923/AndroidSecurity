.class Lcom/alipay/android/app/template/TemplateSync$1;
.super Ljava/lang/Object;
.source "TemplateSync.java"

# interfaces
.implements Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/template/TemplateSync;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/TemplateSync;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/template/TemplateSync$1;->a:Lcom/alipay/android/app/template/TemplateSync;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveCommand(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;)V
    .locals 4

    .prologue
    .line 77
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "public-template"

    iget-object v2, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->commandData:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateSync$1;->a:Lcom/alipay/android/app/template/TemplateSync;

    invoke-static {v0}, Lcom/alipay/android/app/template/TemplateSync;->a(Lcom/alipay/android/app/template/TemplateSync;)Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    move-result-object v0

    iget-object v1, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->userId:Ljava/lang/String;

    const-string/jumbo v2, "public-template"

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->reportCmdReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateSync$1;->a:Lcom/alipay/android/app/template/TemplateSync;

    invoke-static {v0}, Lcom/alipay/android/app/template/TemplateSync;->a(Lcom/alipay/android/app/template/TemplateSync;)Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    move-result-object v0

    iget-object v1, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->userId:Ljava/lang/String;

    const-string/jumbo v2, "public-template"

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->reportCommandHandled(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public onReceiveMessage(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V
    .locals 4

    .prologue
    .line 65
    const-string/jumbo v0, "pfq"

    const-string/jumbo v1, "syncMessage onReceiveMessage"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    if-nez p1, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateSync$1;->a:Lcom/alipay/android/app/template/TemplateSync;

    iget-object v1, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->msgData:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/android/app/template/TemplateSync;->a(Lcom/alipay/android/app/template/TemplateSync;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateSync$1;->a:Lcom/alipay/android/app/template/TemplateSync;

    invoke-static {v0}, Lcom/alipay/android/app/template/TemplateSync;->a(Lcom/alipay/android/app/template/TemplateSync;)Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    move-result-object v0

    .line 71
    iget-object v1, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->userId:Ljava/lang/String;

    const-string/jumbo v2, "public-template"

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->reportMsgReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

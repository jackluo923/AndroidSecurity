.class final Lcom/alipay/mobile/appstoreapp/app/a;
.super Ljava/lang/Object;
.source "AppStoreApp.java"

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/appstoreapp/app/a;->a:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    iput-object p2, p0, Lcom/alipay/mobile/appstoreapp/app/a;->b:Ljava/lang/String;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAuthFailed()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 171
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/app/a;->a:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    invoke-virtual {v0}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-string/jumbo v1, "\u6388\u6743\u5931\u8d25"

    .line 172
    const/4 v2, 0x0

    .line 171
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    .line 173
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/app/a;->a:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/app/a;->a:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/app/a;->a:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    # getter for: Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->startParams:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->access$0(Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;)Landroid/os/Bundle;

    move-result-object v2

    # invokes: Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->createUrl(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2, v3, v3}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->access$1(Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->openInnerWebBrowser(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->access$2(Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/app/a;->a:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    invoke-virtual {v0}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/app/a;->a:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    invoke-virtual {v1}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getSourceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/app/a;->a:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    invoke-virtual {v2}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 177
    return-void
.end method

.method public final onAuthSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 163
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/app/a;->a:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/app/a;->a:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/app/a;->a:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    # getter for: Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->startParams:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->access$0(Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;)Landroid/os/Bundle;

    move-result-object v2

    # invokes: Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->createUrl(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2, p1, p2}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->access$1(Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->openInnerWebBrowser(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->access$2(Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/app/a;->a:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    invoke-virtual {v0}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/app/a;->a:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    invoke-virtual {v1}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getSourceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/app/a;->a:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    invoke-virtual {v2}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getAppId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 167
    return-void
.end method

.method public final onNotNeedAuth()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 154
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppStoreApp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "open url:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/appstoreapp/app/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/app/a;->a:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/app/a;->a:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/app/a;->a:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    # getter for: Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->startParams:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->access$0(Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;)Landroid/os/Bundle;

    move-result-object v2

    # invokes: Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->createUrl(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2, v4, v4}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->access$1(Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->openInnerWebBrowser(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->access$2(Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/app/a;->a:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    invoke-virtual {v0}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/app/a;->a:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    invoke-virtual {v1}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getSourceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/app/a;->a:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    invoke-virtual {v2}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 159
    return-void
.end method

.method public final onUserCancel()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 144
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/app/a;->a:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    invoke-virtual {v0}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-string/jumbo v1, "\u60a8\u53d6\u6d88\u4e86\u672c\u6b21\u6388\u6743"

    .line 145
    const/4 v2, 0x0

    .line 144
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/app/a;->a:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/app/a;->a:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/app/a;->a:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    # getter for: Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->startParams:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->access$0(Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;)Landroid/os/Bundle;

    move-result-object v2

    # invokes: Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->createUrl(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2, v3, v3}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->access$1(Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->openInnerWebBrowser(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->access$2(Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/app/a;->a:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    invoke-virtual {v0}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/app/a;->a:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    invoke-virtual {v1}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getSourceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/app/a;->a:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    invoke-virtual {v2}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 150
    return-void
.end method

.class final Lcom/alipay/mobile/personalbase/ui/d;
.super Ljava/lang/Object;
.source "SocialDialogHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/personalbase/ui/SocialDialogHelper;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/personalbase/ui/SocialDialogHelper;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/personalbase/ui/d;->a:Lcom/alipay/mobile/personalbase/ui/SocialDialogHelper;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/ui/d;->a:Lcom/alipay/mobile/personalbase/ui/SocialDialogHelper;

    invoke-static {v0}, Lcom/alipay/mobile/personalbase/ui/SocialDialogHelper;->b(Lcom/alipay/mobile/personalbase/ui/SocialDialogHelper;)Lcom/alipay/mobile/commonui/widget/APNoticePopDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/personalbase/ui/d;->a:Lcom/alipay/mobile/personalbase/ui/SocialDialogHelper;

    invoke-static {v0}, Lcom/alipay/mobile/personalbase/ui/SocialDialogHelper;->b(Lcom/alipay/mobile/personalbase/ui/SocialDialogHelper;)Lcom/alipay/mobile/commonui/widget/APNoticePopDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APNoticePopDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/personalbase/ui/d;->a:Lcom/alipay/mobile/personalbase/ui/SocialDialogHelper;

    invoke-static {v0}, Lcom/alipay/mobile/personalbase/ui/SocialDialogHelper;->a(Lcom/alipay/mobile/personalbase/ui/SocialDialogHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/ui/d;->a:Lcom/alipay/mobile/personalbase/ui/SocialDialogHelper;

    invoke-static {v0}, Lcom/alipay/mobile/personalbase/ui/SocialDialogHelper;->b(Lcom/alipay/mobile/personalbase/ui/SocialDialogHelper;)Lcom/alipay/mobile/commonui/widget/APNoticePopDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APNoticePopDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/ui/d;->a:Lcom/alipay/mobile/personalbase/ui/SocialDialogHelper;

    invoke-static {v0, v3}, Lcom/alipay/mobile/personalbase/ui/SocialDialogHelper;->a(Lcom/alipay/mobile/personalbase/ui/SocialDialogHelper;Lcom/alipay/mobile/commonui/widget/APNoticePopDialog;)V

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SocialSdk_PersonalBase"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/ui/d;->a:Lcom/alipay/mobile/personalbase/ui/SocialDialogHelper;

    invoke-static {v0, v3}, Lcom/alipay/mobile/personalbase/ui/SocialDialogHelper;->a(Lcom/alipay/mobile/personalbase/ui/SocialDialogHelper;Lcom/alipay/mobile/commonui/widget/APNoticePopDialog;)V

    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    .line 62
    iget-object v1, p0, Lcom/alipay/mobile/personalbase/ui/d;->a:Lcom/alipay/mobile/personalbase/ui/SocialDialogHelper;

    invoke-static {v1, v3}, Lcom/alipay/mobile/personalbase/ui/SocialDialogHelper;->a(Lcom/alipay/mobile/personalbase/ui/SocialDialogHelper;Lcom/alipay/mobile/commonui/widget/APNoticePopDialog;)V

    .line 63
    throw v0
.end method

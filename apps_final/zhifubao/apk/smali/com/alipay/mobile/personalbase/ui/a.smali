.class final Lcom/alipay/mobile/personalbase/ui/a;
.super Ljava/lang/Object;
.source "SocialDialogHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/personalbase/ui/SocialDialogHelper;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:Ljava/lang/Boolean;

.field private final synthetic g:Ljava/lang/Boolean;

.field private final synthetic h:Landroid/content/DialogInterface$OnClickListener;

.field private final synthetic i:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/personalbase/ui/SocialDialogHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/personalbase/ui/a;->a:Lcom/alipay/mobile/personalbase/ui/SocialDialogHelper;

    iput-object p2, p0, Lcom/alipay/mobile/personalbase/ui/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/personalbase/ui/a;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/personalbase/ui/a;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/mobile/personalbase/ui/a;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/alipay/mobile/personalbase/ui/a;->f:Ljava/lang/Boolean;

    iput-object p7, p0, Lcom/alipay/mobile/personalbase/ui/a;->g:Ljava/lang/Boolean;

    iput-object p8, p0, Lcom/alipay/mobile/personalbase/ui/a;->h:Landroid/content/DialogInterface$OnClickListener;

    iput-object p9, p0, Lcom/alipay/mobile/personalbase/ui/a;->i:Landroid/content/DialogInterface$OnClickListener;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/personalbase/ui/a;)Lcom/alipay/mobile/personalbase/ui/SocialDialogHelper;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/ui/a;->a:Lcom/alipay/mobile/personalbase/ui/SocialDialogHelper;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    .line 23
    iget-object v6, p0, Lcom/alipay/mobile/personalbase/ui/a;->a:Lcom/alipay/mobile/personalbase/ui/SocialDialogHelper;

    new-instance v0, Lcom/alipay/mobile/commonui/widget/APNoticePopDialog;

    iget-object v1, p0, Lcom/alipay/mobile/personalbase/ui/a;->a:Lcom/alipay/mobile/personalbase/ui/SocialDialogHelper;

    invoke-static {v1}, Lcom/alipay/mobile/personalbase/ui/SocialDialogHelper;->a(Lcom/alipay/mobile/personalbase/ui/SocialDialogHelper;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/personalbase/ui/a;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/personalbase/ui/a;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/personalbase/ui/a;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/personalbase/ui/a;->e:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/commonui/widget/APNoticePopDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, v0}, Lcom/alipay/mobile/personalbase/ui/SocialDialogHelper;->a(Lcom/alipay/mobile/personalbase/ui/SocialDialogHelper;Lcom/alipay/mobile/commonui/widget/APNoticePopDialog;)V

    .line 24
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/ui/a;->a:Lcom/alipay/mobile/personalbase/ui/SocialDialogHelper;

    invoke-static {v0}, Lcom/alipay/mobile/personalbase/ui/SocialDialogHelper;->b(Lcom/alipay/mobile/personalbase/ui/SocialDialogHelper;)Lcom/alipay/mobile/commonui/widget/APNoticePopDialog;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/personalbase/ui/b;

    iget-object v2, p0, Lcom/alipay/mobile/personalbase/ui/a;->h:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {v1, p0, v2}, Lcom/alipay/mobile/personalbase/ui/b;-><init>(Lcom/alipay/mobile/personalbase/ui/a;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APNoticePopDialog;->setPositiveListener(Lcom/alipay/mobile/commonui/widget/APNoticePopDialog$OnClickPositiveListener;)V

    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/ui/a;->a:Lcom/alipay/mobile/personalbase/ui/SocialDialogHelper;

    invoke-static {v0}, Lcom/alipay/mobile/personalbase/ui/SocialDialogHelper;->b(Lcom/alipay/mobile/personalbase/ui/SocialDialogHelper;)Lcom/alipay/mobile/commonui/widget/APNoticePopDialog;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/personalbase/ui/c;

    iget-object v2, p0, Lcom/alipay/mobile/personalbase/ui/a;->i:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {v1, p0, v2}, Lcom/alipay/mobile/personalbase/ui/c;-><init>(Lcom/alipay/mobile/personalbase/ui/a;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APNoticePopDialog;->setNegativeListener(Lcom/alipay/mobile/commonui/widget/APNoticePopDialog$OnClickNegativeListener;)V

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/ui/a;->a:Lcom/alipay/mobile/personalbase/ui/SocialDialogHelper;

    invoke-static {v0}, Lcom/alipay/mobile/personalbase/ui/SocialDialogHelper;->b(Lcom/alipay/mobile/personalbase/ui/SocialDialogHelper;)Lcom/alipay/mobile/commonui/widget/APNoticePopDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APNoticePopDialog;->show()V

    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/ui/a;->a:Lcom/alipay/mobile/personalbase/ui/SocialDialogHelper;

    invoke-static {v0}, Lcom/alipay/mobile/personalbase/ui/SocialDialogHelper;->b(Lcom/alipay/mobile/personalbase/ui/SocialDialogHelper;)Lcom/alipay/mobile/commonui/widget/APNoticePopDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/personalbase/ui/a;->f:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APNoticePopDialog;->setCanceledOnTouchOutside(Z)V

    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/ui/a;->a:Lcom/alipay/mobile/personalbase/ui/SocialDialogHelper;

    invoke-static {v0}, Lcom/alipay/mobile/personalbase/ui/SocialDialogHelper;->b(Lcom/alipay/mobile/personalbase/ui/SocialDialogHelper;)Lcom/alipay/mobile/commonui/widget/APNoticePopDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/personalbase/ui/a;->g:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APNoticePopDialog;->setCancelable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SocialSdk_PersonalBase"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/ui/a;->a:Lcom/alipay/mobile/personalbase/ui/SocialDialogHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/personalbase/ui/SocialDialogHelper;->a(Lcom/alipay/mobile/personalbase/ui/SocialDialogHelper;Lcom/alipay/mobile/commonui/widget/APNoticePopDialog;)V

    goto :goto_0
.end method

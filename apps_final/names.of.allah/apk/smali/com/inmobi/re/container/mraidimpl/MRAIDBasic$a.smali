.class Lcom/inmobi/re/container/mraidimpl/MRAIDBasic$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;


# direct methods
.method constructor <init>(Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic$a;->b:Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;

    iput-object p2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic$a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getFinalRedirectedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic$a;->b:Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;

    invoke-static {v0}, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;->a(Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic$a;->b:Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;

    invoke-static {v0}, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;->b(Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;)Lcom/inmobi/re/container/IMWebView;

    move-result-object v0

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mListener:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic$a;->b:Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;

    invoke-static {v0}, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;->b(Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;)Lcom/inmobi/re/container/IMWebView;

    move-result-object v0

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mListener:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    invoke-interface {v0}, Lcom/inmobi/re/container/IMWebView$IMWebViewListener;->onLeaveApplication()V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic$a;->b:Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;

    invoke-static {v0}, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;->b(Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;)Lcom/inmobi/re/container/IMWebView;

    move-result-object v0

    const-string v1, "Invalid url"

    const-string v2, "open"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

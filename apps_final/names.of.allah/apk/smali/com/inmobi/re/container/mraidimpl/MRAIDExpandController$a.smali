.class Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;


# direct methods
.method constructor <init>(Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController$a;->a:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController$a;->a:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    invoke-static {v0}, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a(Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;)Lcom/inmobi/re/container/IMWebView;

    move-result-object v0

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mListener:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController$a;->a:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    invoke-static {v0}, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a(Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;)Lcom/inmobi/re/container/IMWebView;

    move-result-object v0

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mListener:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    invoke-interface {v0}, Lcom/inmobi/re/container/IMWebView$IMWebViewListener;->onExpand()V

    :cond_0
    return-void
.end method

.class Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;


# direct methods
.method constructor <init>(Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController$c;->a:Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController$c;->a:Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;

    invoke-static {v0}, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a(Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;)Lcom/inmobi/re/container/IMWebView;

    move-result-object v0

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mListener:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController$c;->a:Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;

    invoke-static {v0}, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a(Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;)Lcom/inmobi/re/container/IMWebView;

    move-result-object v0

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mListener:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController$c;->a:Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;

    invoke-static {v1}, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->b(Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;)Lcom/inmobi/re/container/mraidimpl/ResizeDimensions;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/inmobi/re/container/IMWebView$IMWebViewListener;->onResize(Lcom/inmobi/re/container/mraidimpl/ResizeDimensions;)V

    :cond_0
    return-void
.end method

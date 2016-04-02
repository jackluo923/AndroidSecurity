.class Lcom/inmobi/re/container/a$h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/inmobi/re/container/a;


# direct methods
.method constructor <init>(Lcom/inmobi/re/container/a;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/re/container/a$h;->a:Lcom/inmobi/re/container/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "[InMobi]-[RE]-4.4.1"

    const-string v1, "Back Button pressed when html5 video is playing"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inmobi/re/container/a$h;->a:Lcom/inmobi/re/container/a;

    iget-object v0, v0, Lcom/inmobi/re/container/a;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/re/container/IMWebView;->j(Lcom/inmobi/re/container/IMWebView;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    iget-object v0, p0, Lcom/inmobi/re/container/a$h;->a:Lcom/inmobi/re/container/a;

    iget-object v0, v0, Lcom/inmobi/re/container/a;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/re/container/IMWebView;->l(Lcom/inmobi/re/container/IMWebView;)V

    :cond_0
    return v2
.end method

.class Lcom/inmobi/androidsdk/IMBrowserActivity$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/inmobi/androidsdk/IMBrowserActivity;


# direct methods
.method constructor <init>(Lcom/inmobi/androidsdk/IMBrowserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/androidsdk/IMBrowserActivity$a;->a:Lcom/inmobi/androidsdk/IMBrowserActivity;

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

    if-ne v0, v1, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/inmobi/androidsdk/IMBrowserActivity;->c()Lcom/inmobi/re/container/IMWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/inmobi/androidsdk/IMBrowserActivity;->c()Lcom/inmobi/re/container/IMWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->close()V

    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity$a;->a:Lcom/inmobi/androidsdk/IMBrowserActivity;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->finish()V

    invoke-static {}, Lcom/inmobi/androidsdk/IMBrowserActivity;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    return v2
.end method

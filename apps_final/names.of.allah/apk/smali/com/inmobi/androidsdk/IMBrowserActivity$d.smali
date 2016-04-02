.class Lcom/inmobi/androidsdk/IMBrowserActivity$d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/inmobi/androidsdk/IMBrowserActivity;


# direct methods
.method constructor <init>(Lcom/inmobi/androidsdk/IMBrowserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/androidsdk/IMBrowserActivity$d;->a:Lcom/inmobi/androidsdk/IMBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/inmobi/androidsdk/IMBrowserActivity;->c()Lcom/inmobi/re/container/IMWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/inmobi/androidsdk/IMBrowserActivity;->c()Lcom/inmobi/re/container/IMWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->close()V

    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity$d;->a:Lcom/inmobi/androidsdk/IMBrowserActivity;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->finish()V

    return-void
.end method

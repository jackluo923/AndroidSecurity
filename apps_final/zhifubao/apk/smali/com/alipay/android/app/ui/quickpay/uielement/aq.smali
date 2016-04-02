.class final Lcom/alipay/android/app/ui/quickpay/uielement/aq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/DownloadListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/alipay/android/app/ui/quickpay/uielement/UIWebView;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/uielement/UIWebView;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/aq;->b:Lcom/alipay/android/app/ui/quickpay/uielement/UIWebView;

    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/aq;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/aq;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

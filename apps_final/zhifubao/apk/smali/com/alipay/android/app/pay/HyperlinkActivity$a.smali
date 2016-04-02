.class final Lcom/alipay/android/app/pay/HyperlinkActivity$a;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/pay/HyperlinkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/alipay/android/app/pay/HyperlinkActivity;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/pay/HyperlinkActivity;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/android/app/pay/HyperlinkActivity$a;->b:Lcom/alipay/android/app/pay/HyperlinkActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/alipay/android/app/pay/HyperlinkActivity$a;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v1, 0x0

    const/4 v4, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/pay/HyperlinkActivity$a;->b:Lcom/alipay/android/app/pay/HyperlinkActivity;

    invoke-virtual {v0}, Lcom/alipay/android/app/pay/HyperlinkActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const-string/jumbo v2, "msp_agreement_list_item"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lcom/alipay/android/app/widget/BaseWebView;

    const-string/jumbo v0, "web_view"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/alipay/android/app/pay/HyperlinkActivity$a;->b:Lcom/alipay/android/app/pay/HyperlinkActivity;

    invoke-direct {v2, v0, v3}, Lcom/alipay/android/app/widget/BaseWebView;-><init>(Landroid/webkit/WebView;Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/alipay/android/app/widget/BaseWebView;->a()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setScrollContainer(Z)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setEnabled(Z)V

    :goto_0
    iget-object v2, p0, Lcom/alipay/android/app/pay/HyperlinkActivity$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "UTF-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    goto :goto_0
.end method

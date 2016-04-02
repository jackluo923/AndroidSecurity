.class Lcom/millennialmedia/android/MMWebView$MyWebChromeClient$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/millennialmedia/android/MMWebView$MyWebChromeClient;

.field final synthetic val$callback:Landroid/webkit/GeolocationPermissions$Callback;

.field final synthetic val$origin:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMWebView$MyWebChromeClient;Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/android/MMWebView$MyWebChromeClient$1;->this$1:Lcom/millennialmedia/android/MMWebView$MyWebChromeClient;

    iput-object p2, p0, Lcom/millennialmedia/android/MMWebView$MyWebChromeClient$1;->val$callback:Landroid/webkit/GeolocationPermissions$Callback;

    iput-object p3, p0, Lcom/millennialmedia/android/MMWebView$MyWebChromeClient$1;->val$origin:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView$MyWebChromeClient$1;->this$1:Lcom/millennialmedia/android/MMWebView$MyWebChromeClient;

    # invokes: Lcom/millennialmedia/android/MMWebView$MyWebChromeClient;->saveUseGeo(Z)V
    invoke-static {v0, v2}, Lcom/millennialmedia/android/MMWebView$MyWebChromeClient;->access$300(Lcom/millennialmedia/android/MMWebView$MyWebChromeClient;Z)V

    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView$MyWebChromeClient$1;->val$callback:Landroid/webkit/GeolocationPermissions$Callback;

    iget-object v1, p0, Lcom/millennialmedia/android/MMWebView$MyWebChromeClient$1;->val$origin:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v2}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    return-void
.end method

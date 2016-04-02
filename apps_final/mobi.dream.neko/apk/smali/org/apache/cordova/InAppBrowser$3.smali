.class Lorg/apache/cordova/InAppBrowser$3;
.super Ljava/lang/Object;
.source "InAppBrowser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/InAppBrowser;->injectDeferredObject(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/InAppBrowser;

.field final synthetic val$finalScriptToInject:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/cordova/InAppBrowser;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lorg/apache/cordova/InAppBrowser$3;->this$0:Lorg/apache/cordova/InAppBrowser;

    iput-object p2, p0, Lorg/apache/cordova/InAppBrowser$3;->val$finalScriptToInject:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 258
    iget-object v0, p0, Lorg/apache/cordova/InAppBrowser$3;->this$0:Lorg/apache/cordova/InAppBrowser;

    # getter for: Lorg/apache/cordova/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lorg/apache/cordova/InAppBrowser;->access$100(Lorg/apache/cordova/InAppBrowser;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/cordova/InAppBrowser$3;->val$finalScriptToInject:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 259
    return-void
.end method

.class Lorg/apache/cordova/InAppBrowser$4;
.super Ljava/lang/Object;
.source "InAppBrowser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/InAppBrowser;->closeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/InAppBrowser;

.field final synthetic val$childView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lorg/apache/cordova/InAppBrowser;Landroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lorg/apache/cordova/InAppBrowser$4;->this$0:Lorg/apache/cordova/InAppBrowser;

    iput-object p2, p0, Lorg/apache/cordova/InAppBrowser$4;->val$childView:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lorg/apache/cordova/InAppBrowser$4;->val$childView:Landroid/webkit/WebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lorg/apache/cordova/InAppBrowser$4;->this$0:Lorg/apache/cordova/InAppBrowser;

    # getter for: Lorg/apache/cordova/InAppBrowser;->dialog:Landroid/app/Dialog;
    invoke-static {v0}, Lorg/apache/cordova/InAppBrowser;->access$000(Lorg/apache/cordova/InAppBrowser;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lorg/apache/cordova/InAppBrowser$4;->this$0:Lorg/apache/cordova/InAppBrowser;

    # getter for: Lorg/apache/cordova/InAppBrowser;->dialog:Landroid/app/Dialog;
    invoke-static {v0}, Lorg/apache/cordova/InAppBrowser;->access$000(Lorg/apache/cordova/InAppBrowser;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 329
    :cond_0
    return-void
.end method

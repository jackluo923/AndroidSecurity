.class Lorg/apache/cordova/InAppBrowser$5$2;
.super Ljava/lang/Object;
.source "InAppBrowser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/InAppBrowser$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/cordova/InAppBrowser$5;


# direct methods
.method constructor <init>(Lorg/apache/cordova/InAppBrowser$5;)V
    .locals 0

    .prologue
    .line 474
    iput-object p1, p0, Lorg/apache/cordova/InAppBrowser$5$2;->this$1:Lorg/apache/cordova/InAppBrowser$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 476
    iget-object v0, p0, Lorg/apache/cordova/InAppBrowser$5$2;->this$1:Lorg/apache/cordova/InAppBrowser$5;

    iget-object v0, v0, Lorg/apache/cordova/InAppBrowser$5;->this$0:Lorg/apache/cordova/InAppBrowser;

    # invokes: Lorg/apache/cordova/InAppBrowser;->goBack()V
    invoke-static {v0}, Lorg/apache/cordova/InAppBrowser;->access$200(Lorg/apache/cordova/InAppBrowser;)V

    .line 477
    return-void
.end method

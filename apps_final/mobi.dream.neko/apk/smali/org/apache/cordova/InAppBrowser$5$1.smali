.class Lorg/apache/cordova/InAppBrowser$5$1;
.super Ljava/lang/Object;
.source "InAppBrowser.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 440
    iput-object p1, p0, Lorg/apache/cordova/InAppBrowser$5$1;->this$1:Lorg/apache/cordova/InAppBrowser$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 442
    iget-object v0, p0, Lorg/apache/cordova/InAppBrowser$5$1;->this$1:Lorg/apache/cordova/InAppBrowser$5;

    iget-object v0, v0, Lorg/apache/cordova/InAppBrowser$5;->this$0:Lorg/apache/cordova/InAppBrowser;

    invoke-virtual {v0}, Lorg/apache/cordova/InAppBrowser;->closeDialog()V

    .line 443
    return-void
.end method

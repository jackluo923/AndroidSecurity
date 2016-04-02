.class Lorg/apache/cordova/InAppBrowser$2;
.super Ljava/lang/Object;
.source "InAppBrowser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/InAppBrowser;->execute(Ljava/lang/String;Lorg/apache/cordova/CordovaArgs;Lorg/apache/cordova/api/CallbackContext;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/InAppBrowser;


# direct methods
.method constructor <init>(Lorg/apache/cordova/InAppBrowser;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lorg/apache/cordova/InAppBrowser$2;->this$0:Lorg/apache/cordova/InAppBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lorg/apache/cordova/InAppBrowser$2;->this$0:Lorg/apache/cordova/InAppBrowser;

    # getter for: Lorg/apache/cordova/InAppBrowser;->dialog:Landroid/app/Dialog;
    invoke-static {v0}, Lorg/apache/cordova/InAppBrowser;->access$000(Lorg/apache/cordova/InAppBrowser;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 198
    return-void
.end method

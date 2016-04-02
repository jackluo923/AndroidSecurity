.class Lorg/apache/cordova/App$3;
.super Ljava/lang/Object;
.source "App.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/App;->clearHistory()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/App;


# direct methods
.method constructor <init>(Lorg/apache/cordova/App;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lorg/apache/cordova/App$3;->this$0:Lorg/apache/cordova/App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lorg/apache/cordova/App$3;->this$0:Lorg/apache/cordova/App;

    iget-object v0, v0, Lorg/apache/cordova/App;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v0}, Lorg/apache/cordova/CordovaWebView;->clearHistory()V

    .line 174
    return-void
.end method

.class Lcom/ali/user/mobile/webview/HtmlActivity$4;
.super Ljava/lang/Object;
.source "HtmlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/webview/HtmlActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/webview/HtmlActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/webview/HtmlActivity$4;->this$0:Lcom/ali/user/mobile/webview/HtmlActivity;

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/ali/user/mobile/webview/HtmlActivity$4;->this$0:Lcom/ali/user/mobile/webview/HtmlActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/webview/HtmlActivity;->finish()V

    .line 225
    return-void
.end method

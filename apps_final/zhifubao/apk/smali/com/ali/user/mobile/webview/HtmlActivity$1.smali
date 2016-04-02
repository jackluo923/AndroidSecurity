.class Lcom/ali/user/mobile/webview/HtmlActivity$1;
.super Ljava/lang/Object;
.source "HtmlActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/webview/HtmlActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/webview/HtmlActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/webview/HtmlActivity$1;->this$0:Lcom/ali/user/mobile/webview/HtmlActivity;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ali/user/mobile/webview/HtmlActivity$1;->this$0:Lcom/ali/user/mobile/webview/HtmlActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/webview/HtmlActivity;->finish()V

    .line 50
    return-void
.end method

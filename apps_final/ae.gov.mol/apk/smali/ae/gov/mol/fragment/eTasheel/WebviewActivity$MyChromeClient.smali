.class final Lae/gov/mol/fragment/eTasheel/WebviewActivity$MyChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "WebviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/eTasheel/WebviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MyChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/WebviewActivity;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/eTasheel/WebviewActivity;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/WebviewActivity$MyChromeClient;->this$0:Lae/gov/mol/fragment/eTasheel/WebviewActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    .line 88
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/WebviewActivity$MyChromeClient;->this$0:Lae/gov/mol/fragment/eTasheel/WebviewActivity;

    invoke-virtual {v0}, Lae/gov/mol/fragment/eTasheel/WebviewActivity;->onBackPressed()V

    .line 89
    return-void
.end method

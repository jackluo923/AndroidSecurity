.class Lae/gov/mol/social/twitter/TwitterDialog$TwitterWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "TwitterDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/social/twitter/TwitterDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwitterWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/social/twitter/TwitterDialog;


# direct methods
.method private constructor <init>(Lae/gov/mol/social/twitter/TwitterDialog;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lae/gov/mol/social/twitter/TwitterDialog$TwitterWebViewClient;->this$0:Lae/gov/mol/social/twitter/TwitterDialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lae/gov/mol/social/twitter/TwitterDialog;Lae/gov/mol/social/twitter/TwitterDialog$TwitterWebViewClient;)V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lae/gov/mol/social/twitter/TwitterDialog$TwitterWebViewClient;-><init>(Lae/gov/mol/social/twitter/TwitterDialog;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 136
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lae/gov/mol/social/twitter/TwitterDialog$TwitterWebViewClient;->this$0:Lae/gov/mol/social/twitter/TwitterDialog;

    # getter for: Lae/gov/mol/social/twitter/TwitterDialog;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Lae/gov/mol/social/twitter/TwitterDialog;->access$3(Lae/gov/mol/social/twitter/TwitterDialog;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "title":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 139
    iget-object v1, p0, Lae/gov/mol/social/twitter/TwitterDialog$TwitterWebViewClient;->this$0:Lae/gov/mol/social/twitter/TwitterDialog;

    # getter for: Lae/gov/mol/social/twitter/TwitterDialog;->mTitle:Landroid/widget/TextView;
    invoke-static {v1}, Lae/gov/mol/social/twitter/TwitterDialog;->access$4(Lae/gov/mol/social/twitter/TwitterDialog;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    :cond_0
    iget-object v1, p0, Lae/gov/mol/social/twitter/TwitterDialog$TwitterWebViewClient;->this$0:Lae/gov/mol/social/twitter/TwitterDialog;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lae/gov/mol/social/twitter/TwitterDialog;->access$2(Lae/gov/mol/social/twitter/TwitterDialog;Z)V

    .line 142
    iget-object v1, p0, Lae/gov/mol/social/twitter/TwitterDialog$TwitterWebViewClient;->this$0:Lae/gov/mol/social/twitter/TwitterDialog;

    # getter for: Lae/gov/mol/social/twitter/TwitterDialog;->mSpinner:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lae/gov/mol/social/twitter/TwitterDialog;->access$1(Lae/gov/mol/social/twitter/TwitterDialog;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 143
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 129
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 130
    iget-object v0, p0, Lae/gov/mol/social/twitter/TwitterDialog$TwitterWebViewClient;->this$0:Lae/gov/mol/social/twitter/TwitterDialog;

    # getter for: Lae/gov/mol/social/twitter/TwitterDialog;->mSpinner:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lae/gov/mol/social/twitter/TwitterDialog;->access$1(Lae/gov/mol/social/twitter/TwitterDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 131
    iget-object v0, p0, Lae/gov/mol/social/twitter/TwitterDialog$TwitterWebViewClient;->this$0:Lae/gov/mol/social/twitter/TwitterDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lae/gov/mol/social/twitter/TwitterDialog;->access$2(Lae/gov/mol/social/twitter/TwitterDialog;Z)V

    .line 132
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 122
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lae/gov/mol/social/twitter/TwitterDialog$TwitterWebViewClient;->this$0:Lae/gov/mol/social/twitter/TwitterDialog;

    # getter for: Lae/gov/mol/social/twitter/TwitterDialog;->mListener:Lae/gov/mol/social/twitter/Twitter_Handler$TwDialogListener;
    invoke-static {v0}, Lae/gov/mol/social/twitter/TwitterDialog;->access$0(Lae/gov/mol/social/twitter/TwitterDialog;)Lae/gov/mol/social/twitter/Twitter_Handler$TwDialogListener;

    move-result-object v0

    invoke-interface {v0, p3}, Lae/gov/mol/social/twitter/Twitter_Handler$TwDialogListener;->onError(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lae/gov/mol/social/twitter/TwitterDialog$TwitterWebViewClient;->this$0:Lae/gov/mol/social/twitter/TwitterDialog;

    invoke-virtual {v0}, Lae/gov/mol/social/twitter/TwitterDialog;->dismiss()V

    .line 125
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 107
    const-string v1, "twitterapp://connect"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    iget-object v1, p0, Lae/gov/mol/social/twitter/TwitterDialog$TwitterWebViewClient;->this$0:Lae/gov/mol/social/twitter/TwitterDialog;

    # getter for: Lae/gov/mol/social/twitter/TwitterDialog;->mListener:Lae/gov/mol/social/twitter/Twitter_Handler$TwDialogListener;
    invoke-static {v1}, Lae/gov/mol/social/twitter/TwitterDialog;->access$0(Lae/gov/mol/social/twitter/TwitterDialog;)Lae/gov/mol/social/twitter/Twitter_Handler$TwDialogListener;

    move-result-object v1

    invoke-interface {v1, p2}, Lae/gov/mol/social/twitter/Twitter_Handler$TwDialogListener;->onComplete(Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lae/gov/mol/social/twitter/TwitterDialog$TwitterWebViewClient;->this$0:Lae/gov/mol/social/twitter/TwitterDialog;

    invoke-virtual {v1}, Lae/gov/mol/social/twitter/TwitterDialog;->dismiss()V

    .line 116
    :cond_0
    :goto_0
    return v0

    .line 113
    :cond_1
    const-string v1, "authorize"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    const/4 v0, 0x0

    goto :goto_0
.end method

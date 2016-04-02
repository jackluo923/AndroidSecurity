.class Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails$5;
.super Landroid/webkit/WebViewClient;
.source "Fragment_PublicServiceDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails$5;->this$0:Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;

    .line 312
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "dontResend"    # Landroid/os/Message;
    .param p3, "resend"    # Landroid/os/Message;

    .prologue
    .line 325
    const-string v0, "onFormResubmission"

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 326
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    .line 327
    return-void
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 330
    const-string v0, "onLoadResource"

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 331
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 332
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 341
    const-string v0, "onPageFinished"

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails$5;->this$0:Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;

    # getter for: Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->isActivityFinish:Z
    invoke-static {v0}, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->access$1(Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 346
    iget-object v0, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails$5;->this$0:Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->isCalledOnce:Z

    .line 347
    iget-object v0, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails$5;->this$0:Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;

    iget v1, v0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->i:I

    .line 348
    iget-object v0, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails$5;->this$0:Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;

    iget v0, v0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->i:I

    if-le v0, v2, :cond_0

    .line 350
    iget-object v0, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails$5;->this$0:Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;

    iput-boolean v2, v0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->isCalledOnce:Z

    .line 356
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails$5;->this$0:Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;

    # invokes: Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->dismissDialog()V
    invoke-static {v0}, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->access$2(Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;)V

    .line 358
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 361
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 365
    const-string v0, "onPageStarted"

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails$5;->this$0:Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;

    # invokes: Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->dismissDialog()V
    invoke-static {v0}, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->access$2(Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;)V

    .line 367
    iget-object v0, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails$5;->this$0:Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;

    invoke-virtual {v0}, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails$5;->this$0:Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;

    iget-object v1, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails$5;->this$0:Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;

    iget-object v1, v1, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->mCustomFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    const-string v2, ""

    iget-object v3, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails$5;->this$0:Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;

    const v4, 0x7f09007d

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 371
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 372
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 377
    const-string v0, "onReceivedError"

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 378
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 379
    return-void
.end method

.method public onScaleChanged(Landroid/webkit/WebView;FF)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "oldScale"    # F
    .param p3, "newScale"    # F

    .prologue
    .line 318
    const-string v0, "onScaleChanged"

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 319
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onScaleChanged(Landroid/webkit/WebView;FF)V

    .line 320
    return-void
.end method

.method public onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 335
    const-string v0, "onUnhandledKeyEvent"

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 336
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V

    .line 337
    return-void
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 382
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x1

    .line 389
    :try_start_0
    const-string v3, "utf-8"

    invoke-static {p2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 395
    :goto_0
    const-string v3, "message://"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 397
    const-string v1, ""

    .line 399
    .local v1, "strMessage":Ljava/lang/String;
    const-string v3, "message:///"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 401
    const-string v3, "message:///"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 407
    :goto_1
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 408
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, "mstr":[Ljava/lang/String;
    iget-object v3, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails$5;->this$0:Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;

    # invokes: Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->dismissDialog()V
    invoke-static {v3}, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->access$2(Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;)V

    .line 410
    iget-object v3, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails$5;->this$0:Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;

    iget-object v3, v3, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->mCustomFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    aget-object v4, v0, v7

    aget-object v5, v0, v2

    iget-object v6, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails$5;->this$0:Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;

    # getter for: Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->isActivityFinish:Z
    invoke-static {v6}, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->access$1(Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;)Z

    move-result v6

    invoke-static {v3, v4, v5, v6}, Lae/gov/mol/helper/CommonMethods;->ShowAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 411
    iget-object v3, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails$5;->this$0:Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;

    invoke-static {v3, v7}, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->access$3(Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;Z)V

    .line 488
    .end local v0    # "mstr":[Ljava/lang/String;
    .end local v1    # "strMessage":Ljava/lang/String;
    :goto_2
    return v2

    .line 405
    .restart local v1    # "strMessage":Ljava/lang/String;
    :cond_0
    const-string v3, "message://"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 416
    .end local v1    # "strMessage":Ljava/lang/String;
    :cond_1
    const-string v3, "messageexit://"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 417
    const-string v1, ""

    .line 419
    .restart local v1    # "strMessage":Ljava/lang/String;
    const-string v3, "messageexit:///"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 421
    const-string v3, "messageexit:///"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 427
    :goto_3
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 428
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 429
    .restart local v0    # "mstr":[Ljava/lang/String;
    iget-object v3, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails$5;->this$0:Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;

    # invokes: Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->dismissDialog()V
    invoke-static {v3}, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->access$2(Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;)V

    .line 431
    iget-object v3, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails$5;->this$0:Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;

    iget-object v3, v3, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->mCustomFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    aget-object v4, v0, v7

    aget-object v5, v0, v2

    invoke-static {v3, v4, v5, v2}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFragment(Lae/gov/mol/helper/CustomFragmentActivity;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 433
    iget-object v3, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails$5;->this$0:Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;

    invoke-static {v3, v2}, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->access$3(Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;Z)V

    goto :goto_2

    .line 425
    .end local v0    # "mstr":[Ljava/lang/String;
    :cond_2
    const-string v3, "messageexit://"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 438
    :cond_3
    iget-object v3, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails$5;->this$0:Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;

    iget-object v3, v3, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->mCustomFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    const-string v4, "No Information"

    invoke-static {v3, v4, v1, v2}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFragment(Lae/gov/mol/helper/CustomFragmentActivity;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 439
    iget-object v3, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails$5;->this$0:Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;

    invoke-static {v3, v2}, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->access$3(Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;Z)V

    goto :goto_2

    .line 443
    .end local v1    # "strMessage":Ljava/lang/String;
    :cond_4
    const-string v3, "attachfile://"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 444
    const-string v1, ""

    .line 446
    .restart local v1    # "strMessage":Ljava/lang/String;
    const-string v3, "attachfile:///"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 448
    const-string v3, "attachfile:///"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 454
    :goto_4
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 455
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 456
    .restart local v0    # "mstr":[Ljava/lang/String;
    iget-object v3, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails$5;->this$0:Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;

    aget-object v4, v0, v2

    iput-object v4, v3, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->uniqueID:Ljava/lang/String;

    .line 457
    iget-object v3, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails$5;->this$0:Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;

    # invokes: Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->openImageIntent()V
    invoke-static {v3}, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->access$4(Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;)V

    goto/16 :goto_2

    .line 452
    .end local v0    # "mstr":[Ljava/lang/String;
    :cond_5
    const-string v3, "attachfile://"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 481
    :cond_6
    iget-object v3, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails$5;->this$0:Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;

    iget-object v3, v3, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->mCustomFragmentActivity:Lae/gov/mol/MolFragmentActivity;

    const-string v4, "No Information"

    invoke-static {v3, v4, v1, v2}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFragment(Lae/gov/mol/helper/CustomFragmentActivity;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 482
    iget-object v3, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails$5;->this$0:Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;

    invoke-static {v3, v2}, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->access$3(Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;Z)V

    goto/16 :goto_2

    .line 486
    .end local v1    # "strMessage":Ljava/lang/String;
    :cond_7
    iget-object v2, p0, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails$5;->this$0:Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;

    # invokes: Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->dismissDialog()V
    invoke-static {v2}, Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;->access$2(Lae/gov/mol/fragment/publicServices/Fragment_PublicServiceDetails;)V

    .line 487
    const-string v2, "shouldOverrideUrlLoading"

    invoke-static {v2}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 488
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v2

    goto/16 :goto_2

    .line 391
    :catch_0
    move-exception v3

    goto/16 :goto_0
.end method

.class Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails$4;
.super Landroid/webkit/WebViewClient;
.source "Fragment_CustomFragment_PublicServiceDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails$4;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;

    .line 308
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
    .line 321
    const-string v0, "onFormResubmission"

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 322
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    .line 323
    return-void
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 326
    const-string v0, "onLoadResource"

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 327
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 328
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 337
    const-string v0, "onPageFinished"

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails$4;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;

    # getter for: Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->isActivityFinish:Z
    invoke-static {v0}, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->access$1(Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails$4;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->isCalledOnce:Z

    .line 343
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails$4;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;

    iget v1, v0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->i:I

    .line 344
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails$4;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;

    iget v0, v0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->i:I

    if-le v0, v2, :cond_0

    .line 346
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails$4;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;

    iput-boolean v2, v0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->isCalledOnce:Z

    .line 352
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails$4;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;

    # invokes: Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->dismissDialog()V
    invoke-static {v0}, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->access$2(Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;)V

    .line 354
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 357
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 361
    const-string v0, "onPageStarted"

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails$4;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;

    # invokes: Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->dismissDialog()V
    invoke-static {v0}, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->access$2(Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;)V

    .line 363
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails$4;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;

    invoke-virtual {v0}, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails$4;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;

    iget-object v1, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails$4;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;

    iget-object v1, v1, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const-string v2, ""

    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails$4;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;

    const v4, 0x7f09007d

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 367
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 368
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 373
    const-string v0, "onReceivedError"

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 374
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 375
    return-void
.end method

.method public onScaleChanged(Landroid/webkit/WebView;FF)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "oldScale"    # F
    .param p3, "newScale"    # F

    .prologue
    .line 314
    const-string v0, "onScaleChanged"

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 315
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onScaleChanged(Landroid/webkit/WebView;FF)V

    .line 316
    return-void
.end method

.method public onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 331
    const-string v0, "onUnhandledKeyEvent"

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 332
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V

    .line 333
    return-void
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 378
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

    .line 385
    :try_start_0
    const-string v3, "utf-8"

    invoke-static {p2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 391
    :goto_0
    const-string v3, "message://"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 393
    const-string v1, ""

    .line 395
    .local v1, "strMessage":Ljava/lang/String;
    const-string v3, "message:///"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 397
    const-string v3, "message:///"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 403
    :goto_1
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 404
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 405
    .local v0, "mstr":[Ljava/lang/String;
    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails$4;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;

    # invokes: Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->dismissDialog()V
    invoke-static {v3}, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->access$2(Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;)V

    .line 406
    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails$4;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;

    iget-object v3, v3, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    aget-object v4, v0, v7

    aget-object v5, v0, v2

    iget-object v6, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails$4;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;

    # getter for: Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->isActivityFinish:Z
    invoke-static {v6}, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->access$1(Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;)Z

    move-result v6

    invoke-static {v3, v4, v5, v6}, Lae/gov/mol/helper/CommonMethods;->ShowAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 407
    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails$4;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;

    invoke-static {v3, v7}, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->access$3(Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;Z)V

    .line 484
    .end local v0    # "mstr":[Ljava/lang/String;
    .end local v1    # "strMessage":Ljava/lang/String;
    :goto_2
    return v2

    .line 401
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

    .line 412
    .end local v1    # "strMessage":Ljava/lang/String;
    :cond_1
    const-string v3, "messageexit://"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 413
    const-string v1, ""

    .line 415
    .restart local v1    # "strMessage":Ljava/lang/String;
    const-string v3, "messageexit:///"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 417
    const-string v3, "messageexit:///"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 423
    :goto_3
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 424
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 425
    .restart local v0    # "mstr":[Ljava/lang/String;
    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails$4;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;

    # invokes: Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->dismissDialog()V
    invoke-static {v3}, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->access$2(Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;)V

    .line 427
    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails$4;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;

    iget-object v3, v3, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    aget-object v4, v0, v7

    aget-object v5, v0, v2

    invoke-static {v3, v4, v5, v2}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFragment(Lae/gov/mol/helper/CustomFragmentActivity;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 429
    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails$4;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;

    invoke-static {v3, v2}, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->access$3(Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;Z)V

    goto :goto_2

    .line 421
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

    .line 434
    :cond_3
    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails$4;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;

    iget-object v3, v3, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const-string v4, "No Information"

    invoke-static {v3, v4, v1, v2}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFragment(Lae/gov/mol/helper/CustomFragmentActivity;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 435
    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails$4;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;

    invoke-static {v3, v2}, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->access$3(Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;Z)V

    goto :goto_2

    .line 439
    .end local v1    # "strMessage":Ljava/lang/String;
    :cond_4
    const-string v3, "attachfile://"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 440
    const-string v1, ""

    .line 442
    .restart local v1    # "strMessage":Ljava/lang/String;
    const-string v3, "attachfile:///"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 444
    const-string v3, "attachfile:///"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 450
    :goto_4
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 451
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 452
    .restart local v0    # "mstr":[Ljava/lang/String;
    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails$4;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;

    aget-object v4, v0, v2

    iput-object v4, v3, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->uniqueID:Ljava/lang/String;

    .line 453
    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails$4;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;

    # invokes: Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->openImageIntent()V
    invoke-static {v3}, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->access$4(Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;)V

    goto/16 :goto_2

    .line 448
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

    .line 477
    :cond_6
    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails$4;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;

    iget-object v3, v3, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const-string v4, "No Information"

    invoke-static {v3, v4, v1, v2}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFragment(Lae/gov/mol/helper/CustomFragmentActivity;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 478
    iget-object v3, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails$4;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;

    invoke-static {v3, v2}, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->access$3(Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;Z)V

    goto/16 :goto_2

    .line 482
    .end local v1    # "strMessage":Ljava/lang/String;
    :cond_7
    iget-object v2, p0, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails$4;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;

    # invokes: Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->dismissDialog()V
    invoke-static {v2}, Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;->access$2(Lae/gov/mol/fragment/LabourServices/Fragment_CustomFragment_PublicServiceDetails;)V

    .line 483
    const-string v2, "shouldOverrideUrlLoading"

    invoke-static {v2}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 484
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v2

    goto/16 :goto_2

    .line 387
    :catch_0
    move-exception v3

    goto/16 :goto_0
.end method

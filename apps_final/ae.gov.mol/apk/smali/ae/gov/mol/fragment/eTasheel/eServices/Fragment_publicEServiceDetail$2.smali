.class Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;
.super Landroid/webkit/WebViewClient;
.source "Fragment_publicEServiceDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;

    .line 180
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;)Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;

    return-object v0
.end method


# virtual methods
.method public onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "dontResend"    # Landroid/os/Message;
    .param p3, "resend"    # Landroid/os/Message;

    .prologue
    .line 193
    const-string v0, "onFormResubmission"

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 194
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    .line 195
    return-void
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 198
    const-string v0, "onLoadResource"

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 199
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 209
    const-string v0, "onPageFinished"

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;

    # getter for: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->isActivityFinish:Z
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->access$6(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->isCalledOnce:Z

    .line 215
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;

    iget v1, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->i:I

    .line 216
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;

    iget v0, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->i:I

    if-le v0, v2, :cond_0

    .line 218
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;

    iput-boolean v2, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->isCalledOnce:Z

    .line 224
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;

    # invokes: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->dismissDialog()V
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->access$7(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;)V

    .line 226
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 233
    const-string v0, "onPageStarted"

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;

    # invokes: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->dismissDialog()V
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->access$7(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;)V

    .line 235
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;

    invoke-virtual {v0}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;

    # getter for: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mFragmentActivity_eServiceDetail:Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;
    invoke-static {v1}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->access$2(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;)Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    move-result-object v1

    const-string v2, ""

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;

    const v4, 0x7f09007d

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->access$8(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;Landroid/app/ProgressDialog;)V

    .line 238
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 239
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 244
    const-string v0, "onReceivedError"

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 245
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method public onScaleChanged(Landroid/webkit/WebView;FF)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "oldScale"    # F
    .param p3, "newScale"    # F

    .prologue
    .line 186
    const-string v0, "onScaleChanged"

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 187
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onScaleChanged(Landroid/webkit/WebView;FF)V

    .line 188
    return-void
.end method

.method public onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 203
    const-string v0, "onUnhandledKeyEvent"

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 204
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V

    .line 205
    return-void
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 249
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 16
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 258
    :try_start_0
    const-string v11, "utf-8"

    move-object/from16 v0, p2

    invoke-static {v0, v11}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 264
    :goto_0
    const-string v11, "message://"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 266
    const-string v10, ""

    .line 268
    .local v10, "strMessage":Ljava/lang/String;
    const-string v11, "message:///"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 270
    const-string v11, "message:///"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 276
    :goto_1
    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 277
    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 278
    .local v7, "mstr":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;

    # invokes: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->dismissDialog()V
    invoke-static {v11}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->access$7(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;)V

    .line 279
    move-object/from16 v0, p0

    iget-object v11, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;

    # getter for: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mFragmentActivity_eServiceDetail:Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;
    invoke-static {v11}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->access$2(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;)Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v12, v7, v12

    const/4 v13, 0x1

    aget-object v13, v7, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;

    # getter for: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->isActivityFinish:Z
    invoke-static {v14}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->access$6(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;)Z

    move-result v14

    invoke-static {v11, v12, v13, v14}, Lae/gov/mol/helper/CommonMethods;->ShowAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 280
    move-object/from16 v0, p0

    iget-object v11, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->access$9(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;Z)V

    .line 281
    const/4 v11, 0x1

    .line 453
    .end local v7    # "mstr":[Ljava/lang/String;
    .end local v10    # "strMessage":Ljava/lang/String;
    :goto_2
    return v11

    .line 274
    .restart local v10    # "strMessage":Ljava/lang/String;
    :cond_0
    const-string v11, "message://"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 285
    .end local v10    # "strMessage":Ljava/lang/String;
    :cond_1
    const-string v11, "messageexit://"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 286
    const-string v10, ""

    .line 288
    .restart local v10    # "strMessage":Ljava/lang/String;
    const-string v11, "messageexit:///"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 290
    const-string v11, "messageexit:///"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 296
    :goto_3
    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 297
    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 298
    .restart local v7    # "mstr":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;

    # invokes: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->dismissDialog()V
    invoke-static {v11}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->access$7(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;)V

    .line 299
    move-object/from16 v0, p0

    iget-object v11, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;

    # getter for: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mFragmentActivity_eServiceDetail:Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;
    invoke-static {v11}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->access$2(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;)Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v12, v7, v12

    const/4 v13, 0x1

    aget-object v13, v7, v13

    const/4 v14, 0x1

    invoke-static {v11, v12, v13, v14}, Lae/gov/mol/helper/CommonMethods;->ShowAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 300
    move-object/from16 v0, p0

    iget-object v11, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->access$9(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;Z)V

    .line 301
    const/4 v11, 0x1

    goto :goto_2

    .line 294
    .end local v7    # "mstr":[Ljava/lang/String;
    :cond_2
    const-string v11, "messageexit://"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    .line 306
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;

    # getter for: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mFragmentActivity_eServiceDetail:Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;
    invoke-static {v11}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->access$2(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;)Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    move-result-object v11

    const-string v12, "No Information"

    const/4 v13, 0x1

    invoke-static {v11, v12, v10, v13}, Lae/gov/mol/helper/CommonMethods;->ShowAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 307
    move-object/from16 v0, p0

    iget-object v11, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->access$9(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;Z)V

    .line 308
    const/4 v11, 0x1

    goto/16 :goto_2

    .line 312
    .end local v10    # "strMessage":Ljava/lang/String;
    :cond_4
    const-string v11, "nextpage://"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 315
    const-string v11, "nextpage://"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 316
    .restart local v10    # "strMessage":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;

    # getter for: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mWizardsDataVo1:Lae/gov/mol/vo/WizardsDataVo;
    invoke-static {v11}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->access$10(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;)Lae/gov/mol/vo/WizardsDataVo;

    move-result-object v11

    invoke-virtual {v11}, Lae/gov/mol/vo/WizardsDataVo;->getPageIndex()Ljava/lang/String;

    move-result-object v8

    .line 317
    .local v8, "pageindex":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    if-lez v11, :cond_5

    .line 319
    move-object/from16 v0, p0

    iget-object v11, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;

    # invokes: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->setTitle1()V
    invoke-static {v11}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->access$11(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;)V

    .line 321
    :cond_5
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_9

    .line 322
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 323
    .restart local v7    # "mstr":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;

    const-string v12, ""

    invoke-static {v11, v12}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->access$12(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;Ljava/lang/String;)V

    .line 324
    const-string v5, ""

    .line 325
    .local v5, "mMessage":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v11, v7

    if-lt v1, v11, :cond_6

    .line 336
    move-object/from16 v0, p0

    iget-object v11, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;

    # invokes: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->dismissDialog()V
    invoke-static {v11}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->access$7(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;)V

    .line 337
    move-object/from16 v0, p0

    iget-object v11, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->access$9(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;Z)V

    .line 338
    move-object/from16 v0, p0

    iget-object v11, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;

    # getter for: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mFragmentActivity_eServiceDetail:Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;
    invoke-static {v11}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->access$2(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;)Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    move-result-object v11

    const-string v12, ""

    move-object/from16 v0, p0

    iget-object v13, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;

    # getter for: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->isActivityFinish:Z
    invoke-static {v13}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->access$6(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;)Z

    move-result v13

    .line 339
    new-instance v14, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2$1;-><init>(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;)V

    .line 338
    invoke-static {v11, v12, v5, v13, v14}, Lae/gov/mol/helper/CommonMethods;->ShowAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;)V

    .line 349
    const/4 v11, 0x1

    goto/16 :goto_2

    .line 326
    :cond_6
    array-length v11, v7

    add-int/lit8 v11, v11, -0x1

    if-ne v1, v11, :cond_7

    .line 327
    aget-object v5, v7, v1

    .line 325
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 329
    :cond_7
    array-length v11, v7

    add-int/lit8 v11, v11, -0x2

    if-ne v1, v11, :cond_8

    .line 330
    move-object/from16 v0, p0

    iget-object v11, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;

    # getter for: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mBrowseUrl:Ljava/lang/String;
    invoke-static {v11}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->access$13(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v12, v7, v1

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->access$12(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;Ljava/lang/String;)V

    goto :goto_5

    .line 332
    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;

    # getter for: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mBrowseUrl:Ljava/lang/String;
    invoke-static {v11}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->access$13(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v12, v7, v1

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->access$12(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;Ljava/lang/String;)V

    goto :goto_5

    .line 351
    .end local v1    # "i":I
    .end local v5    # "mMessage":Ljava/lang/String;
    .end local v7    # "mstr":[Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;

    iget-object v11, v11, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    invoke-virtual {v11}, Lae/gov/mol/helper/CommonMethods;->isConnectingToInternet()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 352
    move-object/from16 v0, p0

    iget-object v11, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;

    move-object/from16 v0, p0

    iget-object v12, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;

    # getter for: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mCompanyNo:Ljava/lang/String;
    invoke-static {v12}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->access$14(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->NavigateNextPage(Ljava/lang/String;)V

    .line 353
    move-object/from16 v0, p0

    iget-object v11, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;

    # getter for: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mWizardsDataVo1:Lae/gov/mol/vo/WizardsDataVo;
    invoke-static {v11}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->access$10(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;)Lae/gov/mol/vo/WizardsDataVo;

    move-result-object v11

    invoke-virtual {v11}, Lae/gov/mol/vo/WizardsDataVo;->getPageIndex()Ljava/lang/String;

    move-result-object v9

    .line 354
    .local v9, "pageindex1":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    if-lez v11, :cond_a

    .line 356
    move-object/from16 v0, p0

    iget-object v11, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;

    # invokes: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->setTitle1()V
    invoke-static {v11}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->access$11(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;)V

    .line 358
    :cond_a
    const/4 v11, 0x1

    goto/16 :goto_2

    .line 360
    .end local v9    # "pageindex1":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v11, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;

    # getter for: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mFragmentActivity_eServiceDetail:Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;
    invoke-static {v11}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->access$2(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;)Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;

    const v13, 0x7f090099

    invoke-virtual {v12, v13}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 361
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 366
    .end local v8    # "pageindex":Ljava/lang/String;
    .end local v10    # "strMessage":Ljava/lang/String;
    :cond_c
    const-string v11, "datepicker://"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 368
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "DatePicker Found : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 369
    move-object/from16 v0, p0

    iget-object v11, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v11, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mDatePicker:Ljava/util/ArrayList;

    .line 370
    const-string v11, "datepicker://"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 371
    .restart local v10    # "strMessage":Ljava/lang/String;
    if-eqz v10, :cond_d

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_d

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 372
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 373
    .restart local v7    # "mstr":[Ljava/lang/String;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6
    array-length v11, v7

    if-lt v1, v11, :cond_e

    .line 400
    .end local v1    # "i":I
    .end local v7    # "mstr":[Ljava/lang/String;
    :cond_d
    const/4 v11, 0x1

    goto/16 :goto_2

    .line 374
    .restart local v1    # "i":I
    .restart local v7    # "mstr":[Ljava/lang/String;
    :cond_e
    aget-object v3, v7, v1

    .line 375
    .local v3, "mData":Ljava/lang/String;
    if-eqz v3, :cond_10

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_10

    const-string v11, "="

    invoke-virtual {v3, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 376
    const-string v11, "="

    invoke-virtual {v3, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 377
    .local v6, "mkeyValue":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;

    iget-object v11, v11, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mDatePicker:Ljava/util/ArrayList;

    if-nez v11, :cond_f

    .line 378
    move-object/from16 v0, p0

    iget-object v11, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v11, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mDatePicker:Ljava/util/ArrayList;

    .line 380
    :cond_f
    new-instance v4, Lae/gov/mol/vo/KeyValueVo;

    invoke-direct {v4}, Lae/gov/mol/vo/KeyValueVo;-><init>()V

    .line 381
    .local v4, "mKeyValueVo":Lae/gov/mol/vo/KeyValueVo;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_7
    array-length v11, v6

    if-lt v2, v11, :cond_11

    .line 388
    move-object/from16 v0, p0

    iget-object v11, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;

    iget-object v11, v11, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mDatePicker:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    invoke-virtual {v4}, Lae/gov/mol/vo/KeyValueVo;->getmKey()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_10

    invoke-virtual {v4}, Lae/gov/mol/vo/KeyValueVo;->getmValue()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_10

    .line 390
    invoke-virtual {v4}, Lae/gov/mol/vo/KeyValueVo;->getmKey()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_10

    .line 391
    invoke-virtual {v4}, Lae/gov/mol/vo/KeyValueVo;->getmKey()Ljava/lang/String;

    move-result-object v11

    const-string v12, "date"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 392
    move-object/from16 v0, p0

    iget-object v11, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;

    move-object/from16 v0, p0

    iget-object v12, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;

    # getter for: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mFragmentActivity_eServiceDetail:Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;
    invoke-static {v12}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->access$2(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;)Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;

    # getter for: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mWebView:Landroid/webkit/WebView;
    invoke-static {v13}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->access$5(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;)Landroid/webkit/WebView;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;

    iget-object v14, v14, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mDatePicker:Ljava/util/ArrayList;

    invoke-virtual {v4}, Lae/gov/mol/vo/KeyValueVo;->getmValue()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v12, v13, v14, v15}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->showDatePicker(Landroid/content/Context;Landroid/webkit/WebView;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 373
    .end local v2    # "j":I
    .end local v4    # "mKeyValueVo":Lae/gov/mol/vo/KeyValueVo;
    .end local v6    # "mkeyValue":[Ljava/lang/String;
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    .line 382
    .restart local v2    # "j":I
    .restart local v4    # "mKeyValueVo":Lae/gov/mol/vo/KeyValueVo;
    .restart local v6    # "mkeyValue":[Ljava/lang/String;
    :cond_11
    if-nez v2, :cond_12

    .line 383
    aget-object v11, v6, v2

    invoke-virtual {v4, v11}, Lae/gov/mol/vo/KeyValueVo;->setmKey(Ljava/lang/String;)V

    .line 381
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 385
    :cond_12
    aget-object v11, v6, v2

    invoke-virtual {v4, v11}, Lae/gov/mol/vo/KeyValueVo;->setmValue(Ljava/lang/String;)V

    goto :goto_8

    .line 403
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v3    # "mData":Ljava/lang/String;
    .end local v4    # "mKeyValueVo":Lae/gov/mol/vo/KeyValueVo;
    .end local v6    # "mkeyValue":[Ljava/lang/String;
    .end local v7    # "mstr":[Ljava/lang/String;
    .end local v10    # "strMessage":Ljava/lang/String;
    :cond_13
    const-string v11, "hiddenvalue://"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1b

    .line 406
    const-string v11, "hiddenvalue://"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 410
    .restart local v10    # "strMessage":Ljava/lang/String;
    if-eqz v10, :cond_14

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_14

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 411
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 412
    .restart local v7    # "mstr":[Ljava/lang/String;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_9
    array-length v11, v7

    if-lt v1, v11, :cond_15

    .line 444
    .end local v1    # "i":I
    .end local v7    # "mstr":[Ljava/lang/String;
    :cond_14
    const/4 v11, 0x1

    goto/16 :goto_2

    .line 413
    .restart local v1    # "i":I
    .restart local v7    # "mstr":[Ljava/lang/String;
    :cond_15
    aget-object v3, v7, v1

    .line 415
    .restart local v3    # "mData":Ljava/lang/String;
    if-eqz v3, :cond_18

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_18

    const-string v11, "="

    invoke-virtual {v3, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_18

    .line 416
    const-string v11, "="

    invoke-virtual {v3, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 417
    .restart local v6    # "mkeyValue":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;

    iget-object v11, v11, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mKeyValueVos:Ljava/util/ArrayList;

    if-nez v11, :cond_16

    .line 418
    move-object/from16 v0, p0

    iget-object v11, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v11, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mKeyValueVos:Ljava/util/ArrayList;

    .line 420
    :cond_16
    new-instance v4, Lae/gov/mol/vo/KeyValueVo;

    invoke-direct {v4}, Lae/gov/mol/vo/KeyValueVo;-><init>()V

    .line 421
    .restart local v4    # "mKeyValueVo":Lae/gov/mol/vo/KeyValueVo;
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_a
    array-length v11, v6

    if-lt v2, v11, :cond_19

    .line 429
    move-object/from16 v0, p0

    iget-object v11, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;

    iget-object v11, v11, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mKeyValueVos:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    move-object/from16 v0, p0

    iget-object v11, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;

    iget v11, v11, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->j:I

    const/4 v12, 0x1

    if-lt v11, v12, :cond_17

    .line 433
    move-object/from16 v0, p0

    iget-object v11, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;

    invoke-virtual {v11}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->SetUpAttachmentButtons()V

    .line 434
    move-object/from16 v0, p0

    iget-object v11, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;

    # invokes: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->SetUpSubmitButton()V
    invoke-static {v11}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->access$15(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;)V

    .line 436
    :cond_17
    move-object/from16 v0, p0

    iget-object v11, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;

    iget v12, v11, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->j:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v11, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->j:I

    .line 412
    .end local v2    # "j":I
    .end local v4    # "mKeyValueVo":Lae/gov/mol/vo/KeyValueVo;
    .end local v6    # "mkeyValue":[Ljava/lang/String;
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 423
    .restart local v2    # "j":I
    .restart local v4    # "mKeyValueVo":Lae/gov/mol/vo/KeyValueVo;
    .restart local v6    # "mkeyValue":[Ljava/lang/String;
    :cond_19
    if-nez v2, :cond_1a

    .line 424
    aget-object v11, v6, v2

    invoke-virtual {v4, v11}, Lae/gov/mol/vo/KeyValueVo;->setmKey(Ljava/lang/String;)V

    .line 421
    :goto_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 426
    :cond_1a
    aget-object v11, v6, v2

    invoke-virtual {v4, v11}, Lae/gov/mol/vo/KeyValueVo;->setmValue(Ljava/lang/String;)V

    goto :goto_b

    .line 448
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v3    # "mData":Ljava/lang/String;
    .end local v4    # "mKeyValueVo":Lae/gov/mol/vo/KeyValueVo;
    .end local v6    # "mkeyValue":[Ljava/lang/String;
    .end local v7    # "mstr":[Ljava/lang/String;
    .end local v10    # "strMessage":Ljava/lang/String;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v11, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;

    # invokes: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->dismissDialog()V
    invoke-static {v11}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->access$7(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;)V

    .line 450
    const-string v11, "shouldOverrideUrlLoading"

    invoke-static {v11}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 453
    invoke-super/range {p0 .. p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v11

    goto/16 :goto_2

    .line 260
    :catch_0
    move-exception v11

    goto/16 :goto_0
.end method

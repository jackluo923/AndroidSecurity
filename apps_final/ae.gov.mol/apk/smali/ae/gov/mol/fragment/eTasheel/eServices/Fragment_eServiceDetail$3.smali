.class Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$3;
.super Landroid/webkit/WebViewClient;
.source "Fragment_eServiceDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private otherValue:Ljava/lang/String;

.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$3;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    .line 219
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$3;)Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$3;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    return-object v0
.end method


# virtual methods
.method public onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "dontResend"    # Landroid/os/Message;
    .param p3, "resend"    # Landroid/os/Message;

    .prologue
    .line 236
    const-string v0, "onFormResubmission"

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 237
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    .line 238
    return-void
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 241
    const-string v0, "onLoadResource"

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 242
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 252
    const-string v0, "onPageFinished"

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$3;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    # getter for: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->isActivityFinish:Z
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->access$8(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$3;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->isCalledOnce:Z

    .line 258
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$3;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    iget v1, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->i:I

    .line 259
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$3;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    iget v0, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->i:I

    if-le v0, v2, :cond_0

    .line 261
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$3;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    iput-boolean v2, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->isCalledOnce:Z

    .line 267
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$3;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    # invokes: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->dismissDialog()V
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->access$7(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;)V

    .line 269
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 276
    const-string v0, "onPageStarted"

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$3;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    # invokes: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->dismissDialog()V
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->access$7(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;)V

    .line 278
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$3;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    invoke-virtual {v0}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$3;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$3;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    # getter for: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mFragmentActivity_eServiceDetail:Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;
    invoke-static {v1}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->access$2(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;)Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    move-result-object v1

    const-string v2, ""

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$3;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    const v4, 0x7f09007d

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->access$6(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;Landroid/app/ProgressDialog;)V

    .line 281
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 282
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 287
    const-string v0, "onReceivedError"

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 288
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method public onScaleChanged(Landroid/webkit/WebView;FF)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "oldScale"    # F
    .param p3, "newScale"    # F

    .prologue
    .line 229
    const-string v0, "onScaleChanged"

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 230
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onScaleChanged(Landroid/webkit/WebView;FF)V

    .line 231
    return-void
.end method

.method public onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 246
    const-string v0, "onUnhandledKeyEvent"

    invoke-static {v0}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 247
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V

    .line 248
    return-void
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 292
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 22
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 301
    :try_start_0
    const-string v17, "utf-8"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 307
    :goto_0
    const-string v17, "message://"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "message:///"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 309
    :cond_0
    const-string v16, ""

    .line 311
    .local v16, "strMessage":Ljava/lang/String;
    const-string v17, "message:///"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 313
    const-string v17, "message:///"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 320
    :goto_1
    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 321
    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 322
    .local v13, "mstr":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$3;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    move-object/from16 v17, v0

    # invokes: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->dismissDialog()V
    invoke-static/range {v17 .. v17}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->access$7(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;)V

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$3;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    move-object/from16 v17, v0

    # getter for: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mFragmentActivity_eServiceDetail:Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;
    invoke-static/range {v17 .. v17}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->access$2(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;)Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    move-result-object v17

    const/16 v18, 0x0

    aget-object v18, v13, v18

    const/16 v19, 0x1

    aget-object v19, v13, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$3;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    move-object/from16 v20, v0

    # getter for: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->isActivityFinish:Z
    invoke-static/range {v20 .. v20}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->access$8(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;)Z

    move-result v20

    invoke-static/range {v17 .. v20}, Lae/gov/mol/helper/CommonMethods;->ShowAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$3;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->access$9(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;Z)V

    .line 325
    const/16 v17, 0x1

    .line 594
    .end local v13    # "mstr":[Ljava/lang/String;
    .end local v16    # "strMessage":Ljava/lang/String;
    :goto_2
    return v17

    .line 317
    .restart local v16    # "strMessage":Ljava/lang/String;
    :cond_1
    const-string v17, "message://"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    goto :goto_1

    .line 330
    .end local v16    # "strMessage":Ljava/lang/String;
    :cond_2
    const-string v17, "messageexit://"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 331
    const-string v16, ""

    .line 333
    .restart local v16    # "strMessage":Ljava/lang/String;
    const-string v17, "messageexit:///"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 335
    const-string v17, "messageexit:///"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 341
    :goto_3
    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 342
    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 343
    .restart local v13    # "mstr":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$3;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    move-object/from16 v17, v0

    # invokes: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->dismissDialog()V
    invoke-static/range {v17 .. v17}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->access$7(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;)V

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$3;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    move-object/from16 v17, v0

    # getter for: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mFragmentActivity_eServiceDetail:Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;
    invoke-static/range {v17 .. v17}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->access$2(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;)Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    move-result-object v17

    const/16 v18, 0x0

    aget-object v18, v13, v18

    const/16 v19, 0x1

    aget-object v19, v13, v19

    const/16 v20, 0x1

    invoke-static/range {v17 .. v20}, Lae/gov/mol/helper/CommonMethods;->ShowAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$3;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-static/range {v17 .. v18}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->access$9(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;Z)V

    .line 346
    const/16 v17, 0x1

    goto :goto_2

    .line 339
    .end local v13    # "mstr":[Ljava/lang/String;
    :cond_3
    const-string v17, "messageexit://"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    goto :goto_3

    .line 351
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$3;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    move-object/from16 v17, v0

    # getter for: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mFragmentActivity_eServiceDetail:Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;
    invoke-static/range {v17 .. v17}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->access$2(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;)Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    move-result-object v17

    const-string v18, "No Information"

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$3;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-static/range {v17 .. v18}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->access$9(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;Z)V

    .line 353
    const/16 v17, 0x1

    goto/16 :goto_2

    .line 359
    .end local v16    # "strMessage":Ljava/lang/String;
    :cond_5
    const-string v17, "attachment://"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 361
    const-string v16, ""

    .line 363
    .restart local v16    # "strMessage":Ljava/lang/String;
    const-string v17, "attachment:///"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 365
    const-string v17, "attachment:///"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 371
    :goto_4
    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 372
    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 374
    .restart local v13    # "mstr":[Ljava/lang/String;
    new-instance v9, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;

    invoke-direct {v9}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;-><init>()V

    .line 376
    .local v9, "mFragment_attachment":Lae/gov/mol/fragment/Attachments/Fragment_Attachments;
    if-eqz v9, :cond_6

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$3;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    move-object/from16 v17, v0

    # invokes: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->dismissDialog()V
    invoke-static/range {v17 .. v17}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->access$7(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;)V

    .line 378
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 379
    .local v4, "attachmentData":Landroid/os/Bundle;
    const-string v17, "message"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string v17, "attachmentid"

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-string v17, "Tranmbno"

    const/16 v18, 0x0

    aget-object v18, v13, v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string v17, "servicecode"

    const/16 v18, 0x1

    aget-object v18, v13, v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-virtual {v9, v4}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->setArguments(Landroid/os/Bundle;)V

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$3;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    move-object/from16 v17, v0

    # getter for: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mFragmentActivity_eServiceDetail:Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;
    invoke-static/range {v17 .. v17}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->access$2(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;)Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    move-result-object v17

    .line 386
    const/16 v18, 0x1

    const/16 v19, 0x1001

    .line 385
    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v9, v1, v2}, Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;->replaceFragment(Landroid/support/v4/app/Fragment;ZI)V

    .line 393
    .end local v4    # "attachmentData":Landroid/os/Bundle;
    :cond_6
    const/16 v17, 0x1

    goto/16 :goto_2

    .line 369
    .end local v9    # "mFragment_attachment":Lae/gov/mol/fragment/Attachments/Fragment_Attachments;
    .end local v13    # "mstr":[Ljava/lang/String;
    :cond_7
    const-string v17, "attachment://"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_4

    .line 398
    .end local v16    # "strMessage":Ljava/lang/String;
    :cond_8
    const-string v17, "nextpage://"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 401
    const-string v17, "nextpage://"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 402
    .restart local v16    # "strMessage":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$3;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    move-object/from16 v17, v0

    # getter for: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mWizardsDataVo1:Lae/gov/mol/vo/WizardsDataVo;
    invoke-static/range {v17 .. v17}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->access$10(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;)Lae/gov/mol/vo/WizardsDataVo;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lae/gov/mol/vo/WizardsDataVo;->getPageIndex()Ljava/lang/String;

    move-result-object v14

    .line 403
    .local v14, "pageindex":Ljava/lang/String;
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    if-lez v17, :cond_9

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$3;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    move-object/from16 v17, v0

    # invokes: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->setTitle1()V
    invoke-static/range {v17 .. v17}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->access$11(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;)V

    .line 407
    :cond_9
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_d

    .line 408
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 409
    .restart local v13    # "mstr":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$3;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    move-object/from16 v17, v0

    const-string v18, ""

    invoke-static/range {v17 .. v18}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->access$12(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;Ljava/lang/String;)V

    .line 410
    const-string v11, ""

    .line 411
    .local v11, "mMessage":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_5
    array-length v0, v13

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v5, v0, :cond_a

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$3;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    move-object/from16 v17, v0

    # invokes: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->dismissDialog()V
    invoke-static/range {v17 .. v17}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->access$7(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;)V

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$3;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-static/range {v17 .. v18}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->access$9(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;Z)V

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$3;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    move-object/from16 v17, v0

    # getter for: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mFragmentActivity_eServiceDetail:Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;
    invoke-static/range {v17 .. v17}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->access$2(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;)Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    move-result-object v17

    const-string v18, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$3;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    move-object/from16 v19, v0

    # getter for: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->isActivityFinish:Z
    invoke-static/range {v19 .. v19}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->access$8(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;)Z

    move-result v19

    .line 425
    new-instance v20, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$3$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$3$1;-><init>(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$3;)V

    .line 424
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-static {v0, v1, v11, v2, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;)V

    .line 435
    const/16 v17, 0x1

    goto/16 :goto_2

    .line 412
    :cond_a
    array-length v0, v13

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ne v5, v0, :cond_b

    .line 413
    aget-object v11, v13, v5

    .line 411
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 415
    :cond_b
    array-length v0, v13

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x2

    move/from16 v0, v17

    if-ne v5, v0, :cond_c

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$3;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    move-object/from16 v17, v0

    # getter for: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mBrowseUrl:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->access$13(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;)Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v18, v13, v5

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->access$12(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;Ljava/lang/String;)V

    goto :goto_6

    .line 418
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$3;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    move-object/from16 v17, v0

    # getter for: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mBrowseUrl:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->access$13(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;)Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v18, v13, v5

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->access$12(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;Ljava/lang/String;)V

    goto :goto_6

    .line 437
    .end local v5    # "i":I
    .end local v11    # "mMessage":Ljava/lang/String;
    .end local v13    # "mstr":[Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$3;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lae/gov/mol/helper/CommonMethods;->isConnectingToInternet()Z

    move-result v17

    if-eqz v17, :cond_f

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$3;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$3;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    move-object/from16 v18, v0

    # getter for: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mCompanyNo:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->access$14(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->NavigateNextPage(Ljava/lang/String;)V

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$3;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    move-object/from16 v17, v0

    # getter for: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mWizardsDataVo1:Lae/gov/mol/vo/WizardsDataVo;
    invoke-static/range {v17 .. v17}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->access$10(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;)Lae/gov/mol/vo/WizardsDataVo;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lae/gov/mol/vo/WizardsDataVo;->getPageIndex()Ljava/lang/String;

    move-result-object v15

    .line 440
    .local v15, "pageindex1":Ljava/lang/String;
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    if-lez v17, :cond_e

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$3;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    move-object/from16 v17, v0

    # invokes: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->setTitle1()V
    invoke-static/range {v17 .. v17}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->access$11(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;)V

    .line 444
    :cond_e
    const/16 v17, 0x1

    goto/16 :goto_2

    .line 446
    .end local v15    # "pageindex1":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$3;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    move-object/from16 v17, v0

    # getter for: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mFragmentActivity_eServiceDetail:Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;
    invoke-static/range {v17 .. v17}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->access$2(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;)Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$3;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    move-object/from16 v18, v0

    const v19, 0x7f090099

    invoke-virtual/range {v18 .. v19}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    .line 447
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 452
    .end local v14    # "pageindex":Ljava/lang/String;
    .end local v16    # "strMessage":Ljava/lang/String;
    :cond_10
    const-string v17, "datepicker://"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_17

    .line 454
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "DatePicker Found : "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$3;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    move-object/from16 v17, v0

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mDatePicker:Ljava/util/ArrayList;

    .line 456
    const-string v17, "datepicker://"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 457
    .restart local v16    # "strMessage":Ljava/lang/String;
    if-eqz v16, :cond_11

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_11

    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 458
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 459
    .restart local v13    # "mstr":[Ljava/lang/String;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_7
    array-length v0, v13

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v5, v0, :cond_12

    .line 489
    .end local v5    # "i":I
    .end local v13    # "mstr":[Ljava/lang/String;
    :cond_11
    const/16 v17, 0x1

    goto/16 :goto_2

    .line 460
    .restart local v5    # "i":I
    .restart local v13    # "mstr":[Ljava/lang/String;
    :cond_12
    aget-object v8, v13, v5

    .line 461
    .local v8, "mData":Ljava/lang/String;
    if-eqz v8, :cond_14

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_14

    const-string v17, "="

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_14

    .line 462
    const-string v17, "="

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 463
    .local v12, "mkeyValue":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$3;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mDatePicker:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    if-nez v17, :cond_13

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$3;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    move-object/from16 v17, v0

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mDatePicker:Ljava/util/ArrayList;

    .line 466
    :cond_13
    new-instance v10, Lae/gov/mol/vo/KeyValueVo;

    invoke-direct {v10}, Lae/gov/mol/vo/KeyValueVo;-><init>()V

    .line 467
    .local v10, "mKeyValueVo":Lae/gov/mol/vo/KeyValueVo;
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_8
    array-length v0, v12

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v6, v0, :cond_15

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$3;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mDatePicker:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    invoke-virtual {v10}, Lae/gov/mol/vo/KeyValueVo;->getmKey()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_14

    invoke-virtual {v10}, Lae/gov/mol/vo/KeyValueVo;->getmValue()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_14

    .line 476
    invoke-virtual {v10}, Lae/gov/mol/vo/KeyValueVo;->getmKey()Ljava/lang/String;

    move-result-object v17

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_14

    .line 477
    invoke-virtual {v10}, Lae/gov/mol/vo/KeyValueVo;->getmKey()Ljava/lang/String;

    move-result-object v17

    const-string v18, "date"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_14

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$3;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$3;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    move-object/from16 v18, v0

    # getter for: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mFragmentActivity_eServiceDetail:Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;
    invoke-static/range {v18 .. v18}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->access$2(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;)Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$3;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    move-object/from16 v19, v0

    # getter for: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mWebView:Landroid/webkit/WebView;
    invoke-static/range {v19 .. v19}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->access$5(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;)Landroid/webkit/WebView;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$3;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mDatePicker:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual {v10}, Lae/gov/mol/vo/KeyValueVo;->getmValue()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v17 .. v21}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->showDatePicker(Landroid/content/Context;Landroid/webkit/WebView;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 459
    .end local v6    # "j":I
    .end local v10    # "mKeyValueVo":Lae/gov/mol/vo/KeyValueVo;
    .end local v12    # "mkeyValue":[Ljava/lang/String;
    :cond_14
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_7

    .line 468
    .restart local v6    # "j":I
    .restart local v10    # "mKeyValueVo":Lae/gov/mol/vo/KeyValueVo;
    .restart local v12    # "mkeyValue":[Ljava/lang/String;
    :cond_15
    if-nez v6, :cond_16

    .line 469
    aget-object v17, v12, v6

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lae/gov/mol/vo/KeyValueVo;->setmKey(Ljava/lang/String;)V

    .line 467
    :goto_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 471
    :cond_16
    aget-object v17, v12, v6

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lae/gov/mol/vo/KeyValueVo;->setmValue(Ljava/lang/String;)V

    goto :goto_9

    .line 493
    .end local v5    # "i":I
    .end local v6    # "j":I
    .end local v8    # "mData":Ljava/lang/String;
    .end local v10    # "mKeyValueVo":Lae/gov/mol/vo/KeyValueVo;
    .end local v12    # "mkeyValue":[Ljava/lang/String;
    .end local v13    # "mstr":[Ljava/lang/String;
    .end local v16    # "strMessage":Ljava/lang/String;
    :cond_17
    const-string v17, "getajaxlist:///"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1e

    .line 495
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Get Ajax List Found : "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 496
    const-string v7, ""

    .line 498
    .local v7, "listType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$3;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    move-object/from16 v17, v0

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {v17 .. v18}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->access$15(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;Ljava/util/ArrayList;)V

    .line 499
    const-string v17, "getajaxlist:///"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 500
    .restart local v16    # "strMessage":Ljava/lang/String;
    if-eqz v16, :cond_18

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_18

    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_18

    .line 501
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 502
    .restart local v13    # "mstr":[Ljava/lang/String;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_a
    array-length v0, v13

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v5, v0, :cond_19

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$3;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$3;->otherValue:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v7, v1}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->showDropdownList(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    .end local v5    # "i":I
    .end local v13    # "mstr":[Ljava/lang/String;
    :cond_18
    const/16 v17, 0x1

    goto/16 :goto_2

    .line 504
    .restart local v5    # "i":I
    .restart local v13    # "mstr":[Ljava/lang/String;
    :cond_19
    aget-object v8, v13, v5

    .line 505
    .restart local v8    # "mData":Ljava/lang/String;
    if-eqz v8, :cond_1b

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_1b

    const-string v17, "="

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_1b

    .line 506
    const-string v17, "="

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 507
    .restart local v12    # "mkeyValue":[Ljava/lang/String;
    new-instance v10, Lae/gov/mol/vo/KeyValueVo;

    invoke-direct {v10}, Lae/gov/mol/vo/KeyValueVo;-><init>()V

    .line 508
    .restart local v10    # "mKeyValueVo":Lae/gov/mol/vo/KeyValueVo;
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_b
    array-length v0, v12

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v6, v0, :cond_1c

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$3;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    move-object/from16 v17, v0

    # getter for: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mAjaxList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->access$16(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    invoke-virtual {v10}, Lae/gov/mol/vo/KeyValueVo;->getmKey()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_1b

    invoke-virtual {v10}, Lae/gov/mol/vo/KeyValueVo;->getmValue()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_1b

    .line 517
    invoke-virtual {v10}, Lae/gov/mol/vo/KeyValueVo;->getmKey()Ljava/lang/String;

    move-result-object v17

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_1b

    .line 518
    invoke-virtual {v10}, Lae/gov/mol/vo/KeyValueVo;->getmKey()Ljava/lang/String;

    move-result-object v17

    const-string v18, "listtype"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1a

    .line 519
    invoke-virtual {v10}, Lae/gov/mol/vo/KeyValueVo;->getmValue()Ljava/lang/String;

    move-result-object v7

    .line 521
    :cond_1a
    invoke-virtual {v10}, Lae/gov/mol/vo/KeyValueVo;->getmKey()Ljava/lang/String;

    move-result-object v17

    const-string v18, "otherValue"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1b

    .line 522
    invoke-virtual {v10}, Lae/gov/mol/vo/KeyValueVo;->getmValue()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$3;->otherValue:Ljava/lang/String;

    .line 502
    .end local v6    # "j":I
    .end local v10    # "mKeyValueVo":Lae/gov/mol/vo/KeyValueVo;
    .end local v12    # "mkeyValue":[Ljava/lang/String;
    :cond_1b
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_a

    .line 509
    .restart local v6    # "j":I
    .restart local v10    # "mKeyValueVo":Lae/gov/mol/vo/KeyValueVo;
    .restart local v12    # "mkeyValue":[Ljava/lang/String;
    :cond_1c
    if-nez v6, :cond_1d

    .line 510
    aget-object v17, v12, v6

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lae/gov/mol/vo/KeyValueVo;->setmKey(Ljava/lang/String;)V

    .line 508
    :goto_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 512
    :cond_1d
    aget-object v17, v12, v6

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lae/gov/mol/vo/KeyValueVo;->setmValue(Ljava/lang/String;)V

    goto :goto_c

    .line 544
    .end local v5    # "i":I
    .end local v6    # "j":I
    .end local v7    # "listType":Ljava/lang/String;
    .end local v8    # "mData":Ljava/lang/String;
    .end local v10    # "mKeyValueVo":Lae/gov/mol/vo/KeyValueVo;
    .end local v12    # "mkeyValue":[Ljava/lang/String;
    .end local v13    # "mstr":[Ljava/lang/String;
    .end local v16    # "strMessage":Ljava/lang/String;
    :cond_1e
    const-string v17, "hiddenvalue://"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_26

    .line 547
    const-string v17, "hiddenvalue://"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 551
    .restart local v16    # "strMessage":Ljava/lang/String;
    if-eqz v16, :cond_1f

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_1f

    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_1f

    .line 552
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 553
    .restart local v13    # "mstr":[Ljava/lang/String;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_d
    array-length v0, v13

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v5, v0, :cond_20

    .line 585
    .end local v5    # "i":I
    .end local v13    # "mstr":[Ljava/lang/String;
    :cond_1f
    const/16 v17, 0x1

    goto/16 :goto_2

    .line 554
    .restart local v5    # "i":I
    .restart local v13    # "mstr":[Ljava/lang/String;
    :cond_20
    aget-object v8, v13, v5

    .line 556
    .restart local v8    # "mData":Ljava/lang/String;
    if-eqz v8, :cond_23

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_23

    const-string v17, "="

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_23

    .line 557
    const-string v17, "="

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 558
    .restart local v12    # "mkeyValue":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$3;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mKeyValueVos:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    if-nez v17, :cond_21

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$3;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    move-object/from16 v17, v0

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mKeyValueVos:Ljava/util/ArrayList;

    .line 561
    :cond_21
    new-instance v10, Lae/gov/mol/vo/KeyValueVo;

    invoke-direct {v10}, Lae/gov/mol/vo/KeyValueVo;-><init>()V

    .line 562
    .restart local v10    # "mKeyValueVo":Lae/gov/mol/vo/KeyValueVo;
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_e
    array-length v0, v12

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v6, v0, :cond_24

    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$3;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->mKeyValueVos:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$3;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->j:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_22

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$3;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->SetUpAttachmentButtons()V

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$3;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    move-object/from16 v17, v0

    # invokes: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->SetUpSubmitButton()V
    invoke-static/range {v17 .. v17}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->access$17(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;)V

    .line 577
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$3;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->j:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->j:I

    .line 553
    .end local v6    # "j":I
    .end local v10    # "mKeyValueVo":Lae/gov/mol/vo/KeyValueVo;
    .end local v12    # "mkeyValue":[Ljava/lang/String;
    :cond_23
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_d

    .line 564
    .restart local v6    # "j":I
    .restart local v10    # "mKeyValueVo":Lae/gov/mol/vo/KeyValueVo;
    .restart local v12    # "mkeyValue":[Ljava/lang/String;
    :cond_24
    if-nez v6, :cond_25

    .line 565
    aget-object v17, v12, v6

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lae/gov/mol/vo/KeyValueVo;->setmKey(Ljava/lang/String;)V

    .line 562
    :goto_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    .line 567
    :cond_25
    aget-object v17, v12, v6

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lae/gov/mol/vo/KeyValueVo;->setmValue(Ljava/lang/String;)V

    goto :goto_f

    .line 589
    .end local v5    # "i":I
    .end local v6    # "j":I
    .end local v8    # "mData":Ljava/lang/String;
    .end local v10    # "mKeyValueVo":Lae/gov/mol/vo/KeyValueVo;
    .end local v12    # "mkeyValue":[Ljava/lang/String;
    .end local v13    # "mstr":[Ljava/lang/String;
    .end local v16    # "strMessage":Ljava/lang/String;
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail$3;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;

    move-object/from16 v17, v0

    # invokes: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->dismissDialog()V
    invoke-static/range {v17 .. v17}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;->access$7(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_eServiceDetail;)V

    .line 591
    const-string v17, "shouldOverrideUrlLoading"

    invoke-static/range {v17 .. v17}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 594
    invoke-super/range {p0 .. p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v17

    goto/16 :goto_2

    .line 303
    :catch_0
    move-exception v17

    goto/16 :goto_0
.end method

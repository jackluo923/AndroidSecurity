.class public Lorg/apache/cordova/CordovaChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "CordovaChromeClient.java"


# static fields
.field public static final FILECHOOSER_RESULTCODE:I = 0x1435

.field private static final LOG_TAG:Ljava/lang/String; = "CordovaChromeClient"


# instance fields
.field private MAX_QUOTA:J

.field private TAG:Ljava/lang/String;

.field private appView:Lorg/apache/cordova/CordovaWebView;

.field private cordova:Lorg/apache/cordova/api/CordovaInterface;

.field public mUploadMessage:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoProgressView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lorg/apache/cordova/api/CordovaInterface;)V
    .locals 2
    .param p1, "cordova"    # Lorg/apache/cordova/api/CordovaInterface;

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 55
    const-string v0, "CordovaLog"

    iput-object v0, p0, Lorg/apache/cordova/CordovaChromeClient;->TAG:Ljava/lang/String;

    .line 56
    const-wide/32 v0, 0x6400000

    iput-wide v0, p0, Lorg/apache/cordova/CordovaChromeClient;->MAX_QUOTA:J

    .line 72
    iput-object p1, p0, Lorg/apache/cordova/CordovaChromeClient;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    .line 73
    return-void
.end method

.method public constructor <init>(Lorg/apache/cordova/api/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V
    .locals 2
    .param p1, "ctx"    # Lorg/apache/cordova/api/CordovaInterface;
    .param p2, "app"    # Lorg/apache/cordova/CordovaWebView;

    .prologue
    .line 81
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 55
    const-string v0, "CordovaLog"

    iput-object v0, p0, Lorg/apache/cordova/CordovaChromeClient;->TAG:Ljava/lang/String;

    .line 56
    const-wide/32 v0, 0x6400000

    iput-wide v0, p0, Lorg/apache/cordova/CordovaChromeClient;->MAX_QUOTA:J

    .line 82
    iput-object p1, p0, Lorg/apache/cordova/CordovaChromeClient;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    .line 83
    iput-object p2, p0, Lorg/apache/cordova/CordovaChromeClient;->appView:Lorg/apache/cordova/CordovaWebView;

    .line 84
    return-void
.end method


# virtual methods
.method public getValueCallback()Landroid/webkit/ValueCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 381
    iget-object v0, p0, Lorg/apache/cordova/CordovaChromeClient;->mUploadMessage:Landroid/webkit/ValueCallback;

    return-object v0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, -0x2

    .line 341
    iget-object v4, p0, Lorg/apache/cordova/CordovaChromeClient;->mVideoProgressView:Landroid/view/View;

    if-nez v4, :cond_0

    .line 345
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lorg/apache/cordova/CordovaChromeClient;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v4}, Lorg/apache/cordova/CordovaWebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 346
    .local v2, "layout":Landroid/widget/LinearLayout;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 347
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 348
    .local v3, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 349
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 351
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v4, p0, Lorg/apache/cordova/CordovaChromeClient;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v4}, Lorg/apache/cordova/CordovaWebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 352
    .local v0, "bar":Landroid/widget/ProgressBar;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 353
    .local v1, "barLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v4, 0x11

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 354
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 355
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 357
    iput-object v2, p0, Lorg/apache/cordova/CordovaChromeClient;->mVideoProgressView:Landroid/view/View;

    .line 359
    .end local v0    # "bar":Landroid/widget/ProgressBar;
    .end local v1    # "barLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "layout":Landroid/widget/LinearLayout;
    .end local v3    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    iget-object v4, p0, Lorg/apache/cordova/CordovaChromeClient;->mVideoProgressView:Landroid/view/View;

    return-object v4
.end method

.method public onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "lineNumber"    # I
    .param p3, "sourceID"    # Ljava/lang/String;

    .prologue
    .line 294
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 296
    iget-object v0, p0, Lorg/apache/cordova/CordovaChromeClient;->TAG:Ljava/lang/String;

    const-string v1, "%s: Line %d : %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lorg/apache/cordova/api/LOG;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V

    .line 299
    :cond_0
    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 5
    .param p1, "consoleMessage"    # Landroid/webkit/ConsoleMessage;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 305
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lorg/apache/cordova/CordovaChromeClient;->TAG:Ljava/lang/String;

    const-string v1, "%s: Line %d : %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lorg/apache/cordova/api/LOG;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v0

    return v0
.end method

.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "databaseIdentifier"    # Ljava/lang/String;
    .param p3, "currentQuota"    # J
    .param p5, "estimatedSize"    # J
    .param p7, "totalUsedQuota"    # J
    .param p9, "quotaUpdater"    # Landroid/webkit/WebStorage$QuotaUpdater;

    .prologue
    .line 283
    iget-object v0, p0, Lorg/apache/cordova/CordovaChromeClient;->TAG:Ljava/lang/String;

    const-string v1, "onExceededDatabaseQuota estimatedSize: %d  currentQuota: %d  totalUsedQuota: %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lorg/apache/cordova/api/LOG;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 284
    iget-wide v0, p0, Lorg/apache/cordova/CordovaChromeClient;->MAX_QUOTA:J

    invoke-interface {p9, v0, v1}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    .line 285
    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 2
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/webkit/GeolocationPermissions$Callback;

    .prologue
    .line 318
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    .line 319
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 320
    return-void
.end method

.method public onHideCustomView()V
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lorg/apache/cordova/CordovaChromeClient;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v0}, Lorg/apache/cordova/CordovaWebView;->hideCustomView()V

    .line 331
    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    const/4 v3, 0x1

    .line 105
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lorg/apache/cordova/CordovaChromeClient;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 106
    .local v0, "dlg":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 107
    const-string v1, "Alert"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 109
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 110
    const v1, 0x104000a

    new-instance v2, Lorg/apache/cordova/CordovaChromeClient$1;

    invoke-direct {v2, p0, p4}, Lorg/apache/cordova/CordovaChromeClient$1;-><init>(Lorg/apache/cordova/CordovaChromeClient;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 116
    new-instance v1, Lorg/apache/cordova/CordovaChromeClient$2;

    invoke-direct {v1, p0, p4}, Lorg/apache/cordova/CordovaChromeClient$2;-><init>(Lorg/apache/cordova/CordovaChromeClient;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 122
    new-instance v1, Lorg/apache/cordova/CordovaChromeClient$3;

    invoke-direct {v1, p0, p4}, Lorg/apache/cordova/CordovaChromeClient$3;-><init>(Lorg/apache/cordova/CordovaChromeClient;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 134
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 135
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 136
    return v3
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    const/4 v3, 0x1

    .line 149
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lorg/apache/cordova/CordovaChromeClient;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 150
    .local v0, "dlg":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 151
    const-string v1, "Confirm"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 152
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 153
    const v1, 0x104000a

    new-instance v2, Lorg/apache/cordova/CordovaChromeClient$4;

    invoke-direct {v2, p0, p4}, Lorg/apache/cordova/CordovaChromeClient$4;-><init>(Lorg/apache/cordova/CordovaChromeClient;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 159
    const/high16 v1, 0x1040000

    new-instance v2, Lorg/apache/cordova/CordovaChromeClient$5;

    invoke-direct {v2, p0, p4}, Lorg/apache/cordova/CordovaChromeClient$5;-><init>(Lorg/apache/cordova/CordovaChromeClient;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 165
    new-instance v1, Lorg/apache/cordova/CordovaChromeClient$6;

    invoke-direct {v1, p0, p4}, Lorg/apache/cordova/CordovaChromeClient$6;-><init>(Lorg/apache/cordova/CordovaChromeClient;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 171
    new-instance v1, Lorg/apache/cordova/CordovaChromeClient$7;

    invoke-direct {v1, p0, p4}, Lorg/apache/cordova/CordovaChromeClient$7;-><init>(Lorg/apache/cordova/CordovaChromeClient;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 183
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 184
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 185
    return v3
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 13
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "result"    # Landroid/webkit/JsPromptResult;

    .prologue
    .line 207
    const/4 v8, 0x0

    .line 208
    .local v8, "reqOk":Z
    const-string v11, "file://"

    invoke-virtual {p2, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-static {p2}, Lorg/apache/cordova/Config;->isUrlWhiteListed(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 209
    :cond_0
    const/4 v8, 0x1

    .line 214
    :cond_1
    if-eqz v8, :cond_3

    if-eqz p4, :cond_3

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x3

    if-le v11, v12, :cond_3

    const/4 v11, 0x0

    const/4 v12, 0x4

    move-object/from16 v0, p4

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const-string v12, "gap:"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 217
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    const/4 v11, 0x4

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v2, v11}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 218
    .local v2, "array":Lorg/json/JSONArray;
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 219
    .local v10, "service":Ljava/lang/String;
    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, "action":Ljava/lang/String;
    const/4 v11, 0x2

    invoke-virtual {v2, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 221
    .local v3, "callbackId":Ljava/lang/String;
    iget-object v11, p0, Lorg/apache/cordova/CordovaChromeClient;->appView:Lorg/apache/cordova/CordovaWebView;

    iget-object v11, v11, Lorg/apache/cordova/CordovaWebView;->exposedJsApi:Lorg/apache/cordova/ExposedJsApi;

    move-object/from16 v0, p3

    invoke-virtual {v11, v10, v1, v3, v0}, Lorg/apache/cordova/ExposedJsApi;->exec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 222
    .local v7, "r":Ljava/lang/String;
    if-nez v7, :cond_2

    const-string v7, ""

    .end local v7    # "r":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p5

    invoke-virtual {v0, v7}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    .end local v1    # "action":Ljava/lang/String;
    .end local v2    # "array":Lorg/json/JSONArray;
    .end local v3    # "callbackId":Ljava/lang/String;
    .end local v10    # "service":Ljava/lang/String;
    :goto_0
    const/4 v11, 0x1

    :goto_1
    return v11

    .line 223
    :catch_0
    move-exception v5

    .line 224
    .local v5, "e":Lorg/json/JSONException;
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    .line 225
    const/4 v11, 0x0

    goto :goto_1

    .line 230
    .end local v5    # "e":Lorg/json/JSONException;
    :cond_3
    if-eqz v8, :cond_4

    if-eqz p4, :cond_4

    const-string v11, "gap_bridge_mode:"

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 231
    iget-object v11, p0, Lorg/apache/cordova/CordovaChromeClient;->appView:Lorg/apache/cordova/CordovaWebView;

    iget-object v11, v11, Lorg/apache/cordova/CordovaWebView;->exposedJsApi:Lorg/apache/cordova/ExposedJsApi;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Lorg/apache/cordova/ExposedJsApi;->setNativeToJsBridgeMode(I)V

    .line 232
    const-string v11, ""

    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    goto :goto_0

    .line 236
    :cond_4
    if-eqz v8, :cond_6

    if-eqz p4, :cond_6

    const-string v11, "gap_poll:"

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 237
    iget-object v11, p0, Lorg/apache/cordova/CordovaChromeClient;->appView:Lorg/apache/cordova/CordovaWebView;

    iget-object v11, v11, Lorg/apache/cordova/CordovaWebView;->exposedJsApi:Lorg/apache/cordova/ExposedJsApi;

    const-string v12, "1"

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    invoke-virtual {v11, v12}, Lorg/apache/cordova/ExposedJsApi;->retrieveJsMessages(Z)Ljava/lang/String;

    move-result-object v7

    .line 238
    .restart local v7    # "r":Ljava/lang/String;
    if-nez v7, :cond_5

    const-string v7, ""

    .end local v7    # "r":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p5

    invoke-virtual {v0, v7}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    goto :goto_0

    .line 242
    :cond_6
    if-eqz p4, :cond_7

    const-string v11, "gap_init:"

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 243
    const-string v11, "OK"

    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    goto :goto_0

    .line 248
    :cond_7
    move-object/from16 v9, p5

    .line 249
    .local v9, "res":Landroid/webkit/JsPromptResult;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lorg/apache/cordova/CordovaChromeClient;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v11}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v4, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 250
    .local v4, "dlg":Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 251
    new-instance v6, Landroid/widget/EditText;

    iget-object v11, p0, Lorg/apache/cordova/CordovaChromeClient;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v11}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v6, v11}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 252
    .local v6, "input":Landroid/widget/EditText;
    if-eqz p4, :cond_8

    .line 253
    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 255
    :cond_8
    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 256
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 257
    const v11, 0x104000a

    new-instance v12, Lorg/apache/cordova/CordovaChromeClient$8;

    invoke-direct {v12, p0, v6, v9}, Lorg/apache/cordova/CordovaChromeClient$8;-><init>(Lorg/apache/cordova/CordovaChromeClient;Landroid/widget/EditText;Landroid/webkit/JsPromptResult;)V

    invoke-virtual {v4, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 264
    const/high16 v11, 0x1040000

    new-instance v12, Lorg/apache/cordova/CordovaChromeClient$9;

    invoke-direct {v12, p0, v9}, Lorg/apache/cordova/CordovaChromeClient$9;-><init>(Lorg/apache/cordova/CordovaChromeClient;Landroid/webkit/JsPromptResult;)V

    invoke-virtual {v4, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 270
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 271
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    .line 325
    iget-object v0, p0, Lorg/apache/cordova/CordovaChromeClient;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v0, p1, p2}, Lorg/apache/cordova/CordovaWebView;->showCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 326
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 363
    .local p1, "uploadMsg":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    const-string v0, "*/*"

    invoke-virtual {p0, p1, v0}, Lorg/apache/cordova/CordovaChromeClient;->openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V

    .line 364
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 1
    .param p2, "acceptType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 367
    .local p1, "uploadMsg":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/cordova/CordovaChromeClient;->openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p2, "acceptType"    # Ljava/lang/String;
    .param p3, "capture"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 372
    .local p1, "uploadMsg":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    iput-object p1, p0, Lorg/apache/cordova/CordovaChromeClient;->mUploadMessage:Landroid/webkit/ValueCallback;

    .line 373
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 374
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    iget-object v1, p0, Lorg/apache/cordova/CordovaChromeClient;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "File Browser"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    const/16 v3, 0x1435

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 378
    return-void
.end method

.method public setWebView(Lorg/apache/cordova/CordovaWebView;)V
    .locals 0
    .param p1, "view"    # Lorg/apache/cordova/CordovaWebView;

    .prologue
    .line 92
    iput-object p1, p0, Lorg/apache/cordova/CordovaChromeClient;->appView:Lorg/apache/cordova/CordovaWebView;

    .line 93
    return-void
.end method

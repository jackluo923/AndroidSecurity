.class public Lcom/phonegap/plugins/barcodescanner/BarcodeScannerPlugin;
.super Lorg/apache/cordova/api/CordovaPlugin;
.source "BarcodeScannerPlugin.java"


# static fields
.field private static final CANCELLED:Ljava/lang/String; = "cancelled"

.field private static final DATA:Ljava/lang/String; = "data"

.field private static final EMAIL_TYPE:Ljava/lang/String; = "EMAIL_TYPE"

.field private static final ENCODE:Ljava/lang/String; = "encode"

.field private static final ENCODE_DATA:Ljava/lang/String; = "ENCODE_DATA"

.field private static final ENCODE_INTENT:Ljava/lang/String; = "com.phonegap.plugins.barcodescanner.ENCODE"

.field private static final ENCODE_TYPE:Ljava/lang/String; = "ENCODE_TYPE"

.field private static final FORMAT:Ljava/lang/String; = "format"

.field private static final LOG_TAG:Ljava/lang/String; = "BarcodeScanner"

.field private static final PHONE_TYPE:Ljava/lang/String; = "PHONE_TYPE"

.field public static final REQUEST_CODE:I = 0xba7c0de

.field private static final SCAN:Ljava/lang/String; = "scan"

.field private static final SCAN_INTENT:Ljava/lang/String; = "com.phonegap.plugins.barcodescanner.SCAN"

.field private static final SMS_TYPE:Ljava/lang/String; = "SMS_TYPE"

.field private static final TEXT:Ljava/lang/String; = "text"

.field private static final TEXT_TYPE:Ljava/lang/String; = "TEXT_TYPE"

.field private static final TYPE:Ljava/lang/String; = "type"


# instance fields
.field private callbackContext:Lorg/apache/cordova/api/CallbackContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/apache/cordova/api/CordovaPlugin;-><init>()V

    .line 53
    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 161
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.phonegap.plugins.barcodescanner.ENCODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    .local v0, "intentEncode":Landroid/content/Intent;
    const-string v1, "ENCODE_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    const-string v1, "ENCODE_DATA"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    iget-object v1, p0, Lcom/phonegap/plugins/barcodescanner/BarcodeScannerPlugin;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 166
    return-void
.end method

.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z
    .locals 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "callbackContext"    # Lorg/apache/cordova/api/CallbackContext;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 73
    iput-object p3, p0, Lcom/phonegap/plugins/barcodescanner/BarcodeScannerPlugin;->callbackContext:Lorg/apache/cordova/api/CallbackContext;

    .line 75
    const-string v5, "encode"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 76
    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 77
    .local v1, "obj":Lorg/json/JSONObject;
    if-eqz v1, :cond_2

    .line 78
    const-string v4, "type"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "type":Ljava/lang/String;
    const-string v4, "data"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "data":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 83
    const-string v2, "TEXT_TYPE"

    .line 86
    :cond_0
    if-nez v0, :cond_1

    .line 87
    const-string v4, "User did not specify data to encode"

    invoke-virtual {p3, v4}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V

    .line 101
    .end local v0    # "data":Ljava/lang/String;
    .end local v1    # "obj":Lorg/json/JSONObject;
    .end local v2    # "type":Ljava/lang/String;
    :goto_0
    return v3

    .line 91
    .restart local v0    # "data":Ljava/lang/String;
    .restart local v1    # "obj":Lorg/json/JSONObject;
    .restart local v2    # "type":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v2, v0}, Lcom/phonegap/plugins/barcodescanner/BarcodeScannerPlugin;->encode(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 93
    .end local v0    # "data":Ljava/lang/String;
    .end local v2    # "type":Ljava/lang/String;
    :cond_2
    const-string v4, "User did not specify data to encode"

    invoke-virtual {p3, v4}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 96
    .end local v1    # "obj":Lorg/json/JSONObject;
    :cond_3
    const-string v5, "scan"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 97
    invoke-virtual {p0}, Lcom/phonegap/plugins/barcodescanner/BarcodeScannerPlugin;->scan()V

    goto :goto_0

    :cond_4
    move v3, v4

    .line 99
    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 124
    const v2, 0xba7c0de

    if-ne p1, v2, :cond_0

    .line 125
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    .line 126
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 128
    .local v1, "obj":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "text"

    const-string v3, "SCAN_RESULT"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    const-string v2, "format"

    const-string v3, "SCAN_RESULT_FORMAT"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    const-string v2, "cancelled"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    iget-object v2, p0, Lcom/phonegap/plugins/barcodescanner/BarcodeScannerPlugin;->callbackContext:Lorg/apache/cordova/api/CallbackContext;

    invoke-virtual {v2, v1}, Lorg/apache/cordova/api/CallbackContext;->success(Lorg/json/JSONObject;)V

    .line 152
    .end local v1    # "obj":Lorg/json/JSONObject;
    :cond_0
    :goto_1
    return-void

    .line 131
    .restart local v1    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "BarcodeScanner"

    const-string v3, "This should never happen"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 136
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "obj":Lorg/json/JSONObject;
    :cond_1
    if-nez p2, :cond_2

    .line 137
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 139
    .restart local v1    # "obj":Lorg/json/JSONObject;
    :try_start_1
    const-string v2, "text"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    const-string v2, "format"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    const-string v2, "cancelled"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 146
    :goto_2
    iget-object v2, p0, Lcom/phonegap/plugins/barcodescanner/BarcodeScannerPlugin;->callbackContext:Lorg/apache/cordova/api/CallbackContext;

    invoke-virtual {v2, v1}, Lorg/apache/cordova/api/CallbackContext;->success(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 142
    :catch_1
    move-exception v0

    .line 143
    .restart local v0    # "e":Lorg/json/JSONException;
    const-string v2, "BarcodeScanner"

    const-string v3, "This should never happen"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 149
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "obj":Lorg/json/JSONObject;
    :cond_2
    iget-object v2, p0, Lcom/phonegap/plugins/barcodescanner/BarcodeScannerPlugin;->callbackContext:Lorg/apache/cordova/api/CallbackContext;

    const-string v3, "Unexpected error"

    invoke-virtual {v2, v3}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public scan()V
    .locals 3

    .prologue
    .line 108
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.phonegap.plugins.barcodescanner.SCAN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    .local v0, "intentScan":Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    iget-object v1, p0, Lcom/phonegap/plugins/barcodescanner/BarcodeScannerPlugin;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    const v2, 0xba7c0de

    invoke-interface {v1, p0, v0, v2}, Lorg/apache/cordova/api/CordovaInterface;->startActivityForResult(Lorg/apache/cordova/api/CordovaPlugin;Landroid/content/Intent;I)V

    .line 112
    return-void
.end method

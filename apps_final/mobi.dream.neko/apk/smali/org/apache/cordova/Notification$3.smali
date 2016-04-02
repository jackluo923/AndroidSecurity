.class Lorg/apache/cordova/Notification$3;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/Notification;->prompt(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Lorg/apache/cordova/api/CallbackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/Notification;

.field final synthetic val$buttonLabels:Lorg/json/JSONArray;

.field final synthetic val$callbackContext:Lorg/apache/cordova/api/CallbackContext;

.field final synthetic val$cordova:Lorg/apache/cordova/api/CordovaInterface;

.field final synthetic val$defaultText:Ljava/lang/String;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$promptInput:Landroid/widget/EditText;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/cordova/Notification;Lorg/apache/cordova/api/CordovaInterface;Ljava/lang/String;Ljava/lang/String;Landroid/widget/EditText;Lorg/json/JSONArray;Ljava/lang/String;Lorg/apache/cordova/api/CallbackContext;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lorg/apache/cordova/Notification$3;->this$0:Lorg/apache/cordova/Notification;

    iput-object p2, p0, Lorg/apache/cordova/Notification$3;->val$cordova:Lorg/apache/cordova/api/CordovaInterface;

    iput-object p3, p0, Lorg/apache/cordova/Notification$3;->val$message:Ljava/lang/String;

    iput-object p4, p0, Lorg/apache/cordova/Notification$3;->val$title:Ljava/lang/String;

    iput-object p5, p0, Lorg/apache/cordova/Notification$3;->val$promptInput:Landroid/widget/EditText;

    iput-object p6, p0, Lorg/apache/cordova/Notification$3;->val$buttonLabels:Lorg/json/JSONArray;

    iput-object p7, p0, Lorg/apache/cordova/Notification$3;->val$defaultText:Ljava/lang/String;

    iput-object p8, p0, Lorg/apache/cordova/Notification$3;->val$callbackContext:Lorg/apache/cordova/api/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 281
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lorg/apache/cordova/Notification$3;->val$cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 282
    .local v0, "dlg":Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lorg/apache/cordova/Notification$3;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 283
    iget-object v2, p0, Lorg/apache/cordova/Notification$3;->val$title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 284
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 286
    iget-object v2, p0, Lorg/apache/cordova/Notification$3;->val$promptInput:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 288
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 291
    .local v1, "result":Lorg/json/JSONObject;
    iget-object v2, p0, Lorg/apache/cordova/Notification$3;->val$buttonLabels:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 293
    :try_start_0
    iget-object v2, p0, Lorg/apache/cordova/Notification$3;->val$buttonLabels:Lorg/json/JSONArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/apache/cordova/Notification$3$1;

    invoke-direct {v3, p0, v1}, Lorg/apache/cordova/Notification$3$1;-><init>(Lorg/apache/cordova/Notification$3;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 308
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/apache/cordova/Notification$3;->val$buttonLabels:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-le v2, v4, :cond_1

    .line 310
    :try_start_1
    iget-object v2, p0, Lorg/apache/cordova/Notification$3;->val$buttonLabels:Lorg/json/JSONArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/apache/cordova/Notification$3$2;

    invoke-direct {v3, p0, v1}, Lorg/apache/cordova/Notification$3$2;-><init>(Lorg/apache/cordova/Notification$3;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 325
    :cond_1
    :goto_1
    iget-object v2, p0, Lorg/apache/cordova/Notification$3;->val$buttonLabels:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-le v2, v5, :cond_2

    .line 327
    :try_start_2
    iget-object v2, p0, Lorg/apache/cordova/Notification$3;->val$buttonLabels:Lorg/json/JSONArray;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/apache/cordova/Notification$3$3;

    invoke-direct {v3, p0, v1}, Lorg/apache/cordova/Notification$3$3;-><init>(Lorg/apache/cordova/Notification$3;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 340
    :cond_2
    :goto_2
    new-instance v2, Lorg/apache/cordova/Notification$3$4;

    invoke-direct {v2, p0, v1}, Lorg/apache/cordova/Notification$3$4;-><init>(Lorg/apache/cordova/Notification$3;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 351
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 352
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 354
    return-void

    .line 338
    :catch_0
    move-exception v2

    goto :goto_2

    .line 321
    :catch_1
    move-exception v2

    goto :goto_1

    .line 304
    :catch_2
    move-exception v2

    goto :goto_0
.end method

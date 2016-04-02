.class public Lorg/apache/cordova/Notification;
.super Lorg/apache/cordova/api/CordovaPlugin;
.source "Notification.java"


# instance fields
.field public confirmResult:I

.field public progressDialog:Landroid/app/ProgressDialog;

.field public spinnerDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Lorg/apache/cordova/api/CordovaPlugin;-><init>()V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/cordova/Notification;->confirmResult:I

    .line 44
    iput-object v1, p0, Lorg/apache/cordova/Notification;->spinnerDialog:Landroid/app/ProgressDialog;

    .line 45
    iput-object v1, p0, Lorg/apache/cordova/Notification;->progressDialog:Landroid/app/ProgressDialog;

    .line 51
    return-void
.end method


# virtual methods
.method public declared-synchronized activityStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 366
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/apache/cordova/Notification;->spinnerDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_0

    .line 367
    iget-object v2, p0, Lorg/apache/cordova/Notification;->spinnerDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 368
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/cordova/Notification;->spinnerDialog:Landroid/app/ProgressDialog;

    .line 370
    :cond_0
    iget-object v0, p0, Lorg/apache/cordova/Notification;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    .line 371
    .local v0, "cordova":Lorg/apache/cordova/api/CordovaInterface;
    new-instance v1, Lorg/apache/cordova/Notification$4;

    invoke-direct {v1, p0, v0, p1, p2}, Lorg/apache/cordova/Notification$4;-><init>(Lorg/apache/cordova/Notification;Lorg/apache/cordova/api/CordovaInterface;Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    .local v1, "runnable":Ljava/lang/Runnable;
    iget-object v2, p0, Lorg/apache/cordova/Notification;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    monitor-exit p0

    return-void

    .line 366
    .end local v0    # "cordova":Lorg/apache/cordova/api/CordovaInterface;
    .end local v1    # "runnable":Ljava/lang/Runnable;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized activityStop()V
    .locals 1

    .prologue
    .line 388
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/cordova/Notification;->spinnerDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lorg/apache/cordova/Notification;->spinnerDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 390
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/cordova/Notification;->spinnerDialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    :cond_0
    monitor-exit p0

    return-void

    .line 388
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/api/CallbackContext;)V
    .locals 7
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "buttonLabel"    # Ljava/lang/String;
    .param p4, "callbackContext"    # Lorg/apache/cordova/api/CallbackContext;

    .prologue
    .line 156
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/apache/cordova/Notification;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    .line 158
    .local v2, "cordova":Lorg/apache/cordova/api/CordovaInterface;
    new-instance v0, Lorg/apache/cordova/Notification$1;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/cordova/Notification$1;-><init>(Lorg/apache/cordova/Notification;Lorg/apache/cordova/api/CordovaInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/api/CallbackContext;)V

    .line 184
    .local v0, "runnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lorg/apache/cordova/Notification;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    monitor-exit p0

    return-void

    .line 156
    .end local v0    # "runnable":Ljava/lang/Runnable;
    .end local v2    # "cordova":Lorg/apache/cordova/api/CordovaInterface;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public beep(J)V
    .locals 10
    .param p1, "count"    # J

    .prologue
    const-wide/16 v8, 0x64

    .line 114
    const/4 v6, 0x2

    invoke-static {v6}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v3

    .line 115
    .local v3, "ringtone":Landroid/net/Uri;
    iget-object v6, p0, Lorg/apache/cordova/Notification;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v6}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v2

    .line 118
    .local v2, "notification":Landroid/media/Ringtone;
    if-eqz v2, :cond_1

    .line 119
    const-wide/16 v0, 0x0

    .local v0, "i":J
    :goto_0
    cmp-long v6, v0, p1

    if-gez v6, :cond_1

    .line 120
    invoke-virtual {v2}, Landroid/media/Ringtone;->play()V

    .line 121
    const-wide/16 v4, 0x1388

    .line 122
    .local v4, "timeout":J
    :goto_1
    invoke-virtual {v2}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v6

    if-eqz v6, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_0

    .line 123
    sub-long/2addr v4, v8

    .line 125
    const-wide/16 v6, 0x64

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 126
    :catch_0
    move-exception v6

    goto :goto_1

    .line 119
    :cond_0
    const-wide/16 v6, 0x1

    add-long/2addr v0, v6

    goto :goto_0

    .line 131
    .end local v0    # "i":J
    .end local v4    # "timeout":J
    :cond_1
    return-void
.end method

.method public declared-synchronized confirm(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)V
    .locals 7
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "buttonLabels"    # Lorg/json/JSONArray;
    .param p4, "callbackContext"    # Lorg/apache/cordova/api/CallbackContext;

    .prologue
    .line 199
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/apache/cordova/Notification;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    .line 201
    .local v2, "cordova":Lorg/apache/cordova/api/CordovaInterface;
    new-instance v0, Lorg/apache/cordova/Notification$2;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/cordova/Notification$2;-><init>(Lorg/apache/cordova/Notification;Lorg/apache/cordova/api/CordovaInterface;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)V

    .line 258
    .local v0, "runnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lorg/apache/cordova/Notification;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    monitor-exit p0

    return-void

    .line 199
    .end local v0    # "runnable":Ljava/lang/Runnable;
    .end local v2    # "cordova":Lorg/apache/cordova/api/CordovaInterface;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z
    .locals 7
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "callbackContext"    # Lorg/apache/cordova/api/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 62
    const-string v1, "beep"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/cordova/Notification;->beep(J)V

    .line 100
    :goto_0
    invoke-virtual {p3}, Lorg/apache/cordova/api/CallbackContext;->success()V

    move v0, v6

    .line 101
    :cond_0
    :goto_1
    return v0

    .line 65
    :cond_1
    const-string v1, "vibrate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 66
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/cordova/Notification;->vibrate(J)V

    goto :goto_0

    .line 68
    :cond_2
    const-string v1, "alert"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 69
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, p3}, Lorg/apache/cordova/Notification;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/api/CallbackContext;)V

    move v0, v6

    .line 70
    goto :goto_1

    .line 72
    :cond_3
    const-string v1, "confirm"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 73
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, p3}, Lorg/apache/cordova/Notification;->confirm(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)V

    move v0, v6

    .line 74
    goto :goto_1

    .line 76
    :cond_4
    const-string v1, "prompt"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 77
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/cordova/Notification;->prompt(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Lorg/apache/cordova/api/CallbackContext;)V

    move v0, v6

    .line 78
    goto :goto_1

    .line 80
    :cond_5
    const-string v1, "activityStart"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 81
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/cordova/Notification;->activityStart(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_6
    const-string v1, "activityStop"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 84
    invoke-virtual {p0}, Lorg/apache/cordova/Notification;->activityStop()V

    goto/16 :goto_0

    .line 86
    :cond_7
    const-string v1, "progressStart"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 87
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/cordova/Notification;->progressStart(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 89
    :cond_8
    const-string v1, "progressValue"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 90
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/cordova/Notification;->progressValue(I)V

    goto/16 :goto_0

    .line 92
    :cond_9
    const-string v1, "progressStop"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    invoke-virtual {p0}, Lorg/apache/cordova/Notification;->progressStop()V

    goto/16 :goto_0
.end method

.method public declared-synchronized progressStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 401
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/apache/cordova/Notification;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 402
    iget-object v1, p0, Lorg/apache/cordova/Notification;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 403
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/cordova/Notification;->progressDialog:Landroid/app/ProgressDialog;

    .line 405
    :cond_0
    move-object v2, p0

    .line 406
    .local v2, "notification":Lorg/apache/cordova/Notification;
    iget-object v3, p0, Lorg/apache/cordova/Notification;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    .line 407
    .local v3, "cordova":Lorg/apache/cordova/api/CordovaInterface;
    new-instance v0, Lorg/apache/cordova/Notification$5;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/cordova/Notification$5;-><init>(Lorg/apache/cordova/Notification;Lorg/apache/cordova/Notification;Lorg/apache/cordova/api/CordovaInterface;Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    .local v0, "runnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lorg/apache/cordova/Notification;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    monitor-exit p0

    return-void

    .line 401
    .end local v0    # "runnable":Ljava/lang/Runnable;
    .end local v2    # "notification":Lorg/apache/cordova/Notification;
    .end local v3    # "cordova":Lorg/apache/cordova/api/CordovaInterface;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized progressStop()V
    .locals 1

    .prologue
    .line 443
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/cordova/Notification;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lorg/apache/cordova/Notification;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 445
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/cordova/Notification;->progressDialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    :cond_0
    monitor-exit p0

    return-void

    .line 443
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized progressValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 434
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/cordova/Notification;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lorg/apache/cordova/Notification;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    :cond_0
    monitor-exit p0

    return-void

    .line 434
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized prompt(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Lorg/apache/cordova/api/CallbackContext;)V
    .locals 9
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "buttonLabels"    # Lorg/json/JSONArray;
    .param p4, "defaultText"    # Ljava/lang/String;
    .param p5, "callbackContext"    # Lorg/apache/cordova/api/CallbackContext;

    .prologue
    .line 275
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/apache/cordova/Notification;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    .line 276
    .local v2, "cordova":Lorg/apache/cordova/api/CordovaInterface;
    new-instance v5, Landroid/widget/EditText;

    invoke-interface {v2}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v5, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 277
    .local v5, "promptInput":Landroid/widget/EditText;
    invoke-virtual {v5, p4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 279
    new-instance v0, Lorg/apache/cordova/Notification$3;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lorg/apache/cordova/Notification$3;-><init>(Lorg/apache/cordova/Notification;Lorg/apache/cordova/api/CordovaInterface;Ljava/lang/String;Ljava/lang/String;Landroid/widget/EditText;Lorg/json/JSONArray;Ljava/lang/String;Lorg/apache/cordova/api/CallbackContext;)V

    .line 356
    .local v0, "runnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lorg/apache/cordova/Notification;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    monitor-exit p0

    return-void

    .line 275
    .end local v0    # "runnable":Ljava/lang/Runnable;
    .end local v2    # "cordova":Lorg/apache/cordova/api/CordovaInterface;
    .end local v5    # "promptInput":Landroid/widget/EditText;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public vibrate(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 140
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    .line 141
    const-wide/16 p1, 0x1f4

    .line 143
    :cond_0
    iget-object v1, p0, Lorg/apache/cordova/Notification;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 144
    .local v0, "vibrator":Landroid/os/Vibrator;
    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 145
    return-void
.end method

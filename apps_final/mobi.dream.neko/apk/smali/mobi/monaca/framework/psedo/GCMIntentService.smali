.class public Lmobi/monaca/framework/psedo/GCMIntentService;
.super Lcom/google/android/gcm/GCMBaseIntentService;
.source "GCMIntentService.java"


# static fields
.field public static final ACTION_GCM_REGISTERED:Ljava/lang/String; = "gcm_registered"

.field public static final KEY_REGID:Ljava/lang/String; = "gcm_registered_regid"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lmobi/monaca/framework/psedo/GCMIntentService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/monaca/framework/psedo/GCMIntentService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/google/android/gcm/GCMBaseIntentService;-><init>()V

    return-void
.end method


# virtual methods
.method protected getSenderIds(Landroid/content/Context;)[Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 24
    .local v0, "ids":[Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0}, Lmobi/monaca/framework/psedo/GCMIntentService;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lmobi/monaca/framework/MonacaApplication;

    invoke-virtual {v1}, Lmobi/monaca/framework/MonacaApplication;->getAppJsonSetting()Lmobi/monaca/framework/AppJsonSetting;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/monaca/framework/AppJsonSetting;->getSenderId()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 25
    return-object v0
.end method

.method protected onError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 31
    return-void
.end method

.method protected onMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 14
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    .prologue
    .line 36
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 37
    .local v0, "b":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 40
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 41
    .local v1, "context":Landroid/content/Context;
    sget v12, Lmobi/monaca/framework/psedo/R$string;->key_message:I

    invoke-static {v12}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 42
    .local v6, "message":Ljava/lang/String;
    sget v12, Lmobi/monaca/framework/psedo/R$string;->key_push_project_id:I

    invoke-static {v12}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 43
    .local v10, "pushProjectId":Ljava/lang/String;
    sget v12, Lmobi/monaca/framework/psedo/R$string;->key_extra_json:I

    invoke-static {v12}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 44
    .local v3, "extraJsonString":Ljava/lang/String;
    new-instance v2, Lmobi/monaca/utils/gcm/GCMPushDataset;

    invoke-direct {v2, v10, v3}, Lmobi/monaca/utils/gcm/GCMPushDataset;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .local v2, "data":Lmobi/monaca/utils/gcm/GCMPushDataset;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    long-to-int v4, v12

    .line 47
    .local v4, "id":I
    sget v12, Lmobi/monaca/framework/psedo/R$string;->key_title:I

    invoke-static {v12}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_1

    sget v12, Lmobi/monaca/framework/psedo/R$string;->key_title:I

    invoke-static {v12}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 48
    .local v11, "title":Ljava/lang/String;
    :goto_1
    new-instance v5, Landroid/content/Intent;

    const-class v12, Lmobi/monaca/framework/MonacaNotifActivity;

    invoke-direct {v5, v1, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    .local v5, "intent":Landroid/content/Intent;
    const-string v12, "get_pushdata_key"

    invoke-virtual {v5, v12, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 50
    const/high16 v12, 0x10000000

    invoke-virtual {v5, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 51
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "%%HASH%%"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const/high16 v12, 0x10000000

    invoke-static {v1, v4, v5, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 54
    .local v9, "pending":Landroid/app/PendingIntent;
    new-instance v7, Landroid/app/Notification;

    invoke-direct {v7}, Landroid/app/Notification;-><init>()V

    .line 55
    .local v7, "notification":Landroid/app/Notification;
    const/16 v12, 0x10

    iput v12, v7, Landroid/app/Notification;->flags:I

    .line 56
    sget v12, Lmobi/monaca/framework/psedo/R$drawable;->icon:I

    iput v12, v7, Landroid/app/Notification;->icon:I

    .line 57
    iput-object v11, v7, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 58
    invoke-virtual {v7, v1, v11, v6, v9}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 60
    const-string v12, "notification"

    invoke-virtual {v1, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 61
    .local v8, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v8, v4, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 47
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v7    # "notification":Landroid/app/Notification;
    .end local v8    # "notificationManager":Landroid/app/NotificationManager;
    .end local v9    # "pending":Landroid/app/PendingIntent;
    .end local v11    # "title":Ljava/lang/String;
    :cond_1
    sget v12, Lmobi/monaca/framework/psedo/R$string;->app_name:I

    invoke-virtual {p0, v12}, Lmobi/monaca/framework/psedo/GCMIntentService;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_1
.end method

.method protected onRegistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 67
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 68
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "gcm_registered"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    const-string v1, "gcm_registered_regid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    invoke-virtual {p0, v0}, Lmobi/monaca/framework/psedo/GCMIntentService;->sendBroadcast(Landroid/content/Intent;)V

    .line 72
    return-void
.end method

.method protected onUnregistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 79
    return-void
.end method

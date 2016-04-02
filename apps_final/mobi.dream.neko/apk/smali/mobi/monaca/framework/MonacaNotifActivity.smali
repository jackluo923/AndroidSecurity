.class public Lmobi/monaca/framework/MonacaNotifActivity;
.super Landroid/app/Activity;
.source "MonacaNotifActivity.java"


# static fields
.field public static final ACTION_RECEIVED_PUSH:Ljava/lang/String;

.field public static final KEY_PUSHED_PROJECT_ID:Ljava/lang/String;

.field public static final KEY_RUNS_PROJECT_AT_ONCE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    sget-object v0, Lmobi/monaca/framework/UserIdentifier;->identifier:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sput-object v0, Lmobi/monaca/framework/MonacaNotifActivity;->ACTION_RECEIVED_PUSH:Ljava/lang/String;

    .line 10
    sget-object v0, Lmobi/monaca/framework/UserIdentifier;->identifier:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sput-object v0, Lmobi/monaca/framework/MonacaNotifActivity;->KEY_PUSHED_PROJECT_ID:Ljava/lang/String;

    .line 11
    sget-object v0, Lmobi/monaca/framework/UserIdentifier;->identifier:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    sput-object v0, Lmobi/monaca/framework/MonacaNotifActivity;->KEY_RUNS_PROJECT_AT_ONCE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private process(Landroid/content/Intent;)V
    .locals 5
    .param p1, "arg"    # Landroid/content/Intent;

    .prologue
    .line 26
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 27
    .local v1, "b":Landroid/os/Bundle;
    const-string v4, "get_pushdata_key"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lmobi/monaca/utils/gcm/GCMPushDataset;

    .line 28
    .local v3, "pushData":Lmobi/monaca/utils/gcm/GCMPushDataset;
    if-nez v3, :cond_0

    .line 29
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaNotifActivity;->finish()V

    .line 45
    :goto_0
    return-void

    .line 32
    :cond_0
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaNotifActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lmobi/monaca/framework/MonacaApplication;

    .line 34
    .local v0, "app":Lmobi/monaca/framework/MonacaApplication;
    invoke-static {}, Lmobi/monaca/framework/MonacaApplication;->getPages()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 35
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lmobi/monaca/framework/MonacaSScreenActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    .local v2, "i":Landroid/content/Intent;
    const-string v4, "get_pushdata_key"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 37
    invoke-virtual {p0, v2}, Lmobi/monaca/framework/MonacaNotifActivity;->startActivity(Landroid/content/Intent;)V

    .line 44
    :goto_1
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaNotifActivity;->finish()V

    goto :goto_0

    .line 39
    .end local v2    # "i":Landroid/content/Intent;
    :cond_1
    new-instance v2, Landroid/content/Intent;

    sget-object v4, Lmobi/monaca/framework/MonacaNotifActivity;->ACTION_RECEIVED_PUSH:Ljava/lang/String;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 40
    .restart local v2    # "i":Landroid/content/Intent;
    const-string v4, "get_pushdata_key"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 41
    invoke-virtual {p0, v2}, Lmobi/monaca/framework/MonacaNotifActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstance"    # Landroid/os/Bundle;

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaNotifActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lmobi/monaca/framework/MonacaNotifActivity;->process(Landroid/content/Intent;)V

    .line 18
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "arg"    # Landroid/content/Intent;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lmobi/monaca/framework/MonacaNotifActivity;->process(Landroid/content/Intent;)V

    .line 24
    return-void
.end method

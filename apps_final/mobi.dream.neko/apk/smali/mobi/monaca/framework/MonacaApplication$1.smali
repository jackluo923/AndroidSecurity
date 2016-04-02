.class Lmobi/monaca/framework/MonacaApplication$1;
.super Landroid/content/BroadcastReceiver;
.source "MonacaApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/monaca/framework/MonacaApplication;->initGCM()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/monaca/framework/MonacaApplication;


# direct methods
.method constructor <init>(Lmobi/monaca/framework/MonacaApplication;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lmobi/monaca/framework/MonacaApplication$1;->this$0:Lmobi/monaca/framework/MonacaApplication;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 88
    const-string v1, "gcm_registered_regid"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "regId":Ljava/lang/String;
    iget-object v1, p0, Lmobi/monaca/framework/MonacaApplication$1;->this$0:Lmobi/monaca/framework/MonacaApplication;

    invoke-virtual {v1, v0}, Lmobi/monaca/framework/MonacaApplication;->sendGCMRegisterIdToAppAPI(Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lmobi/monaca/framework/MonacaApplication$1;->this$0:Lmobi/monaca/framework/MonacaApplication;

    invoke-virtual {v1, p0}, Lmobi/monaca/framework/MonacaApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 91
    return-void
.end method

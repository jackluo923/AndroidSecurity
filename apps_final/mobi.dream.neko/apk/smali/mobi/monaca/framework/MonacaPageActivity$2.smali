.class Lmobi/monaca/framework/MonacaPageActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "MonacaPageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/monaca/framework/MonacaPageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/monaca/framework/MonacaPageActivity;


# direct methods
.method constructor <init>(Lmobi/monaca/framework/MonacaPageActivity;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lmobi/monaca/framework/MonacaPageActivity$2;->this$0:Lmobi/monaca/framework/MonacaPageActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 127
    iget-object v1, p0, Lmobi/monaca/framework/MonacaPageActivity$2;->this$0:Lmobi/monaca/framework/MonacaPageActivity;

    invoke-virtual {v1}, Lmobi/monaca/framework/MonacaPageActivity;->isIndex()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "get_pushdata_key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/monaca/utils/gcm/GCMPushDataset;

    .line 129
    .local v0, "p":Lmobi/monaca/utils/gcm/GCMPushDataset;
    iget-object v1, p0, Lmobi/monaca/framework/MonacaPageActivity$2;->this$0:Lmobi/monaca/framework/MonacaPageActivity;

    invoke-virtual {v1, v0}, Lmobi/monaca/framework/MonacaPageActivity;->sendPushToWebView(Lmobi/monaca/utils/gcm/GCMPushDataset;)V

    .line 131
    .end local v0    # "p":Lmobi/monaca/utils/gcm/GCMPushDataset;
    :cond_0
    return-void
.end method

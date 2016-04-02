.class Lmobi/monaca/framework/MonacaPageActivity$1;
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
    .line 114
    iput-object p1, p0, Lmobi/monaca/framework/MonacaPageActivity$1;->this$0:Lmobi/monaca/framework/MonacaPageActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 116
    iget-object v1, p0, Lmobi/monaca/framework/MonacaPageActivity$1;->this$0:Lmobi/monaca/framework/MonacaPageActivity;

    sget v2, Lmobi/monaca/framework/psedo/R$string;->key_closepage_level:I

    invoke-virtual {v1, v2}, Lmobi/monaca/framework/MonacaPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 117
    .local v0, "level":I
    iget-object v1, p0, Lmobi/monaca/framework/MonacaPageActivity$1;->this$0:Lmobi/monaca/framework/MonacaPageActivity;

    iget v1, v1, Lmobi/monaca/framework/MonacaPageActivity;->pageIndex:I

    if-lt v1, v0, :cond_0

    .line 118
    iget-object v1, p0, Lmobi/monaca/framework/MonacaPageActivity$1;->this$0:Lmobi/monaca/framework/MonacaPageActivity;

    invoke-virtual {v1}, Lmobi/monaca/framework/MonacaPageActivity;->finish()V

    .line 120
    :cond_0
    return-void
.end method

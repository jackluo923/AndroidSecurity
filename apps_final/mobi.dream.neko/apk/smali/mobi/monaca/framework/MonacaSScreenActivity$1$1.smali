.class Lmobi/monaca/framework/MonacaSScreenActivity$1$1;
.super Ljava/lang/Object;
.source "MonacaSScreenActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/monaca/framework/MonacaSScreenActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobi/monaca/framework/MonacaSScreenActivity$1;


# direct methods
.method constructor <init>(Lmobi/monaca/framework/MonacaSScreenActivity$1;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lmobi/monaca/framework/MonacaSScreenActivity$1$1;->this$1:Lmobi/monaca/framework/MonacaSScreenActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 61
    iget-object v1, p0, Lmobi/monaca/framework/MonacaSScreenActivity$1$1;->this$1:Lmobi/monaca/framework/MonacaSScreenActivity$1;

    iget-object v1, v1, Lmobi/monaca/framework/MonacaSScreenActivity$1;->this$0:Lmobi/monaca/framework/MonacaSScreenActivity;

    invoke-virtual {v1}, Lmobi/monaca/framework/MonacaSScreenActivity;->createActivityIntent()Landroid/content/Intent;

    move-result-object v0

    .line 62
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lmobi/monaca/framework/MonacaSScreenActivity$1$1;->this$1:Lmobi/monaca/framework/MonacaSScreenActivity$1;

    iget-object v1, v1, Lmobi/monaca/framework/MonacaSScreenActivity$1;->this$0:Lmobi/monaca/framework/MonacaSScreenActivity;

    invoke-virtual {v1, v0}, Lmobi/monaca/framework/MonacaSScreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 63
    iget-object v1, p0, Lmobi/monaca/framework/MonacaSScreenActivity$1$1;->this$1:Lmobi/monaca/framework/MonacaSScreenActivity$1;

    iget-object v1, v1, Lmobi/monaca/framework/MonacaSScreenActivity$1;->this$0:Lmobi/monaca/framework/MonacaSScreenActivity;

    invoke-virtual {v1}, Lmobi/monaca/framework/MonacaSScreenActivity;->finish()V

    .line 64
    return-void
.end method

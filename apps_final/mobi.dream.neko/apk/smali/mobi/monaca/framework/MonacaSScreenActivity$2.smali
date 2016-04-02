.class Lmobi/monaca/framework/MonacaSScreenActivity$2;
.super Ljava/lang/Object;
.source "MonacaSScreenActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/monaca/framework/MonacaSScreenActivity;->setupLocalFileBootLoaderAndRunProject(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/monaca/framework/MonacaSScreenActivity;


# direct methods
.method constructor <init>(Lmobi/monaca/framework/MonacaSScreenActivity;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lmobi/monaca/framework/MonacaSScreenActivity$2;->this$0:Lmobi/monaca/framework/MonacaSScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lmobi/monaca/framework/MonacaSScreenActivity$2;->this$0:Lmobi/monaca/framework/MonacaSScreenActivity;

    sget v1, Lmobi/monaca/framework/psedo/R$string;->message_launch_failed:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 94
    iget-object v0, p0, Lmobi/monaca/framework/MonacaSScreenActivity$2;->this$0:Lmobi/monaca/framework/MonacaSScreenActivity;

    invoke-virtual {v0}, Lmobi/monaca/framework/MonacaSScreenActivity;->finish()V

    .line 95
    return-void
.end method

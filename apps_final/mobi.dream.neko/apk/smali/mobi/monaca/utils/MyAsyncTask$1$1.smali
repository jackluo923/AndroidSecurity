.class Lmobi/monaca/utils/MyAsyncTask$1$1;
.super Ljava/lang/Object;
.source "MyAsyncTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/monaca/utils/MyAsyncTask$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobi/monaca/utils/MyAsyncTask$1;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lmobi/monaca/utils/MyAsyncTask$1;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 32
    .local p0, "this":Lmobi/monaca/utils/MyAsyncTask$1$1;, "Lmobi/monaca/utils/MyAsyncTask$1.1;"
    iput-object p1, p0, Lmobi/monaca/utils/MyAsyncTask$1$1;->this$1:Lmobi/monaca/utils/MyAsyncTask$1;

    iput-object p2, p0, Lmobi/monaca/utils/MyAsyncTask$1$1;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 35
    .local p0, "this":Lmobi/monaca/utils/MyAsyncTask$1$1;, "Lmobi/monaca/utils/MyAsyncTask$1.1;"
    iget-object v0, p0, Lmobi/monaca/utils/MyAsyncTask$1$1;->this$1:Lmobi/monaca/utils/MyAsyncTask$1;

    iget-object v0, v0, Lmobi/monaca/utils/MyAsyncTask$1;->this$0:Lmobi/monaca/utils/MyAsyncTask;

    iget-object v1, p0, Lmobi/monaca/utils/MyAsyncTask$1$1;->val$result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lmobi/monaca/utils/MyAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 36
    iget-object v0, p0, Lmobi/monaca/utils/MyAsyncTask$1$1;->this$1:Lmobi/monaca/utils/MyAsyncTask$1;

    iget-object v0, v0, Lmobi/monaca/utils/MyAsyncTask$1;->this$0:Lmobi/monaca/utils/MyAsyncTask;

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    # setter for: Lmobi/monaca/utils/MyAsyncTask;->currentStatus:Landroid/os/AsyncTask$Status;
    invoke-static {v0, v1}, Lmobi/monaca/utils/MyAsyncTask;->access$002(Lmobi/monaca/utils/MyAsyncTask;Landroid/os/AsyncTask$Status;)Landroid/os/AsyncTask$Status;

    .line 37
    return-void
.end method

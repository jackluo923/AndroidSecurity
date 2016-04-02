.class Lmobi/monaca/utils/MyAsyncTask$1;
.super Ljava/lang/Object;
.source "MyAsyncTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/monaca/utils/MyAsyncTask;->execute([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/monaca/utils/MyAsyncTask;

.field final synthetic val$a:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lmobi/monaca/utils/MyAsyncTask;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 28
    .local p0, "this":Lmobi/monaca/utils/MyAsyncTask$1;, "Lmobi/monaca/utils/MyAsyncTask.1;"
    iput-object p1, p0, Lmobi/monaca/utils/MyAsyncTask$1;->this$0:Lmobi/monaca/utils/MyAsyncTask;

    iput-object p2, p0, Lmobi/monaca/utils/MyAsyncTask$1;->val$a:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 31
    .local p0, "this":Lmobi/monaca/utils/MyAsyncTask$1;, "Lmobi/monaca/utils/MyAsyncTask.1;"
    iget-object v1, p0, Lmobi/monaca/utils/MyAsyncTask$1;->this$0:Lmobi/monaca/utils/MyAsyncTask;

    iget-object v2, p0, Lmobi/monaca/utils/MyAsyncTask$1;->val$a:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lmobi/monaca/utils/MyAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 32
    .local v0, "result":Ljava/lang/Object;, "TC;"
    iget-object v1, p0, Lmobi/monaca/utils/MyAsyncTask$1;->this$0:Lmobi/monaca/utils/MyAsyncTask;

    iget-object v1, v1, Lmobi/monaca/utils/MyAsyncTask;->handler:Landroid/os/Handler;

    new-instance v2, Lmobi/monaca/utils/MyAsyncTask$1$1;

    invoke-direct {v2, p0, v0}, Lmobi/monaca/utils/MyAsyncTask$1$1;-><init>(Lmobi/monaca/utils/MyAsyncTask$1;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39
    return-void
.end method

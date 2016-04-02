.class Lmobi/monaca/utils/MyAsyncTask$2;
.super Ljava/lang/Object;
.source "MyAsyncTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/monaca/utils/MyAsyncTask;->publishProgress([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/monaca/utils/MyAsyncTask;

.field final synthetic val$b:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lmobi/monaca/utils/MyAsyncTask;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 49
    .local p0, "this":Lmobi/monaca/utils/MyAsyncTask$2;, "Lmobi/monaca/utils/MyAsyncTask.2;"
    iput-object p1, p0, Lmobi/monaca/utils/MyAsyncTask$2;->this$0:Lmobi/monaca/utils/MyAsyncTask;

    iput-object p2, p0, Lmobi/monaca/utils/MyAsyncTask$2;->val$b:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 53
    .local p0, "this":Lmobi/monaca/utils/MyAsyncTask$2;, "Lmobi/monaca/utils/MyAsyncTask.2;"
    iget-object v0, p0, Lmobi/monaca/utils/MyAsyncTask$2;->this$0:Lmobi/monaca/utils/MyAsyncTask;

    iget-object v1, p0, Lmobi/monaca/utils/MyAsyncTask$2;->val$b:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lmobi/monaca/utils/MyAsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 54
    return-void
.end method

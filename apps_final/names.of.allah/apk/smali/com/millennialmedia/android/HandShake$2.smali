.class Lcom/millennialmedia/android/HandShake$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/HandShake;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/HandShake;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/android/HandShake$2;->this$0:Lcom/millennialmedia/android/HandShake;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/HandShake$2;->this$0:Lcom/millennialmedia/android/HandShake;

    # getter for: Lcom/millennialmedia/android/HandShake;->contextRef:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/millennialmedia/android/HandShake;->access$000(Lcom/millennialmedia/android/HandShake;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/HandShake$2;->this$0:Lcom/millennialmedia/android/HandShake;

    # getter for: Lcom/millennialmedia/android/HandShake;->appContextRef:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/millennialmedia/android/HandShake;->access$100(Lcom/millennialmedia/android/HandShake;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    :cond_1
    return-void
.end method

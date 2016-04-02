.class Lcom/millennialmedia/android/BridgeMMPasteboard$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/millennialmedia/android/MMJSResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/BridgeMMPasteboard;

.field final synthetic val$arguments:Ljava/util/HashMap;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/BridgeMMPasteboard;Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/android/BridgeMMPasteboard$2;->this$0:Lcom/millennialmedia/android/BridgeMMPasteboard;

    iput-object p2, p0, Lcom/millennialmedia/android/BridgeMMPasteboard$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/millennialmedia/android/BridgeMMPasteboard$2;->val$arguments:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/millennialmedia/android/MMJSResponse;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMPasteboard$2;->val$context:Landroid/content/Context;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMPasteboard$2;->val$arguments:Ljava/util/HashMap;

    const-string v2, "data"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/millennialmedia/android/BridgeMMPasteboard$2;->call()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    return-object v0
.end method

.class Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$2;
.super Ljava/lang/Object;
.source "LoadAndDisplayImageTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->fireImageLoadingFailedEvent(Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;

.field final synthetic val$failReason:Lcom/nostra13/universalimageloader/core/assist/FailReason;


# direct methods
.method constructor <init>(Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$2;->this$0:Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;

    iput-object p2, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$2;->val$failReason:Lcom/nostra13/universalimageloader/core/assist/FailReason;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$2;->this$0:Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;

    # getter for: Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->listener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;
    invoke-static {v0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->access$000(Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;)Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$2;->val$failReason:Lcom/nostra13/universalimageloader/core/assist/FailReason;

    invoke-interface {v0, v1}, Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;->onLoadingFailed(Lcom/nostra13/universalimageloader/core/assist/FailReason;)V

    .line 315
    return-void
.end method

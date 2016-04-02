.class Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$1;
.super Ljava/lang/Object;
.source "LoadAndDisplayImageTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->checkTaskIsNotActual()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;


# direct methods
.method constructor <init>(Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$1;->this$0:Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask$1;->this$0:Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;

    # getter for: Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->listener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;
    invoke-static {v0}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->access$000(Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;)Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;->onLoadingCancelled()V

    .line 166
    return-void
.end method

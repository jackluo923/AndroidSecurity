.class public interface abstract Lcom/inmobi/re/container/IMWebView$IMWebViewListener;
.super Ljava/lang/Object;


# virtual methods
.method public abstract onDismissAdScreen()V
.end method

.method public abstract onError()V
.end method

.method public abstract onExpand()V
.end method

.method public abstract onExpandClose()V
.end method

.method public abstract onIncentCompleted(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onLeaveApplication()V
.end method

.method public abstract onResize(Lcom/inmobi/re/container/mraidimpl/ResizeDimensions;)V
.end method

.method public abstract onResizeClose()V
.end method

.method public abstract onShowAdScreen()V
.end method

.method public abstract onUserInteraction(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

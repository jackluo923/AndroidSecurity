.class public interface abstract Lcom/alipay/mobile/framework/widgetcontainer/WidgetContainerAdapter;
.super Ljava/lang/Object;
.source "WidgetContainerAdapter.java"


# virtual methods
.method public abstract getWidgetView(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)Lcom/alipay/mobile/framework/widgetcontainer/IWidgetView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Lcom/alipay/mobile/framework/widgetcontainer/IWidgetView;"
        }
    .end annotation
.end method

.method public abstract isWidgetVisible(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract needBindWidgetMsgFlag(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract performWidgetClick(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

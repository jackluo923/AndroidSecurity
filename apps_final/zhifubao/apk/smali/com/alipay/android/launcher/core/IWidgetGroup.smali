.class public interface abstract Lcom/alipay/android/launcher/core/IWidgetGroup;
.super Ljava/lang/Object;
.source "IWidgetGroup.java"


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract getAllWidgets()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/launcher/core/IWidget;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBadgeView()Landroid/view/View;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getIndicator()Landroid/view/View;
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract onKeyDown(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract onRefresh()V
.end method

.method public abstract onResume()V
.end method

.method public abstract onReturn()V
.end method

.method public abstract setContext(Landroid/app/Activity;)V
.end method

.method public abstract setContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

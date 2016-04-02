.class public interface abstract Lcom/alipay/android/launcher/core/IWidgetGroupFactory;
.super Ljava/lang/Object;
.source "IWidgetGroupFactory.java"


# virtual methods
.method public abstract getAllWidgetGroups()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/launcher/core/IWidgetGroup;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getClassloaders()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWidgetGroup(Ljava/lang/String;)Lcom/alipay/android/launcher/core/IWidgetGroup;
.end method

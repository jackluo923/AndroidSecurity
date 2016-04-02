.class public interface abstract Lcom/alipay/mobile/command/listener/NotifyListener;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/alipay/mobile/command/listener/NotifyListener",
        "<TT;>;>;"
    }
.end annotation


# virtual methods
.method public abstract desrc()Ljava/lang/String;
.end method

.method public abstract focusTask()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isMatch(Ljava/lang/String;)Z
.end method

.method public abstract notify(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method public abstract priority()I
.end method

.class public interface abstract Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IDocScriptable;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getByAttr(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/ui/quickpay/lua/scriptable/INodeScriptable;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getById(Ljava/lang/String;)Lcom/alipay/android/app/ui/quickpay/lua/scriptable/INodeScriptable;
.end method

.method public abstract validate()Z
.end method

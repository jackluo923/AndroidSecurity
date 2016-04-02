.class public interface abstract Lcom/alipay/android/app/ui/quickpay/window/IFormShower;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/sys/IShower;


# virtual methods
.method public abstract a(Landroid/content/Intent;)V
.end method

.method public abstract a(Lcom/alipay/android/app/ui/quickpay/event/OnFormEventListener;)V
.end method

.method public abstract a(Lcom/alipay/android/app/ui/quickpay/window/IUIForm;I)V
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/alipay/android/app/ui/quickpay/event/ActionType;Ljava/lang/String;[Lcom/alipay/android/app/ui/quickpay/event/ActionType;)V
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/ui/quickpay/window/UIFormDialog$DialogButton;",
            ">;)V"
        }
    .end annotation
.end method

.method public varargs abstract a([Ljava/lang/String;)V
.end method

.method public abstract c()V
.end method

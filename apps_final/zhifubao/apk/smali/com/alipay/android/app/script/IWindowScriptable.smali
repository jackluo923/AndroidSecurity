.class public interface abstract Lcom/alipay/android/app/script/IWindowScriptable;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/lib/plusin/script/IScriptEventable;


# virtual methods
.method public abstract alert(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract allowback(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract confirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract dismiss()V
.end method

.method public abstract exit()V
.end method

.method public abstract getLoadingScriptable()Lcom/alipay/android/app/script/ILoadingScriptable;
.end method

.method public abstract loading(I)Lcom/alipay/android/app/script/ILoadingScriptable;
.end method

.method public abstract loading(ILjava/lang/String;)Lcom/alipay/android/app/script/ILoadingScriptable;
.end method

.method public abstract loading(ILjava/lang/String;Ljava/lang/String;)Lcom/alipay/android/app/script/ILoadingScriptable;
.end method

.method public abstract open(Ljava/lang/String;)V
.end method

.method public varargs abstract open([Ljava/lang/String;)V
.end method

.method public abstract openWithCallback(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public varargs abstract openWithCallback(Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public abstract submit()V
.end method

.method public abstract submit(Ljava/lang/String;)V
.end method

.method public abstract toast(Ljava/lang/String;)V
.end method

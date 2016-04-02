.class public abstract Lcom/alipay/mobile/framework/app/MicroApplication;
.super Ljava/lang/Object;
.source "MicroApplication.java"

# interfaces
.implements Lcom/alipay/mobile/framework/MicroContent;


# instance fields
.field private a:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public attachContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/alipay/mobile/framework/app/MicroApplication;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 141
    return-void
.end method

.method public abstract create(Landroid/os/Bundle;)V
.end method

.method public destroy(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/framework/app/MicroApplication;->onDestroy(Landroid/os/Bundle;)V

    .line 132
    return-void
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/MicroApplication;->d:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getEntryClassName()Ljava/lang/String;
.end method

.method public getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/MicroApplication;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method

.method public getParentAppClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/MicroApplication;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/MicroApplication;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSourceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/MicroApplication;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract onCreate(Landroid/os/Bundle;)V
.end method

.method protected abstract onDestroy(Landroid/os/Bundle;)V
.end method

.method protected abstract onRestart(Landroid/os/Bundle;)V
.end method

.method protected abstract onStart()V
.end method

.method protected abstract onStop()V
.end method

.method public abstract restart(Landroid/os/Bundle;)V
.end method

.method public restoreState(Landroid/content/SharedPreferences;)V
    .locals 0

    .prologue
    .line 186
    return-void
.end method

.method public saveState(Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    .prologue
    .line 182
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/alipay/mobile/framework/app/MicroApplication;->d:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public abstract setIsPrevent(Z)V
.end method

.method public setParentAppClassName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/alipay/mobile/framework/app/MicroApplication;->c:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setSourceId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/alipay/mobile/framework/app/MicroApplication;->b:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method

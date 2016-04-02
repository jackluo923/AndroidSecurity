.class public Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask;
.super Lmobi/monaca/utils/MyAsyncTask;
.source "LocalFileBootloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/monaca/framework/bootloader/LocalFileBootloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "BootloaderTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmobi/monaca/utils/MyAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field protected handler:Landroid/os/Handler;

.field protected loadingDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lmobi/monaca/framework/bootloader/LocalFileBootloader;


# direct methods
.method protected constructor <init>(Lmobi/monaca/framework/bootloader/LocalFileBootloader;)V
    .locals 1

    .prologue
    .line 234
    iput-object p1, p0, Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask;->this$0:Lmobi/monaca/framework/bootloader/LocalFileBootloader;

    invoke-direct {p0}, Lmobi/monaca/utils/MyAsyncTask;-><init>()V

    .line 236
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask;->handler:Landroid/os/Handler;

    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask;->loadingDialog:Landroid/app/ProgressDialog;

    return-void
.end method


# virtual methods
.method protected dismissProgressDialog()V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask;->handler:Landroid/os/Handler;

    new-instance v1, Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask$2;

    invoke-direct {v1, p0}, Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask$2;-><init>(Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 310
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 7
    .param p1, "a"    # [Ljava/lang/Void;

    .prologue
    const/4 v6, 0x0

    .line 241
    const/4 v2, 0x1

    .line 244
    .local v2, "needInit":Z
    :try_start_0
    iget-object v4, p0, Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask;->this$0:Lmobi/monaca/framework/bootloader/LocalFileBootloader;

    invoke-virtual {v4}, Lmobi/monaca/framework/bootloader/LocalFileBootloader;->needsInitialization()Z
    :try_end_0
    .catch Lmobi/monaca/framework/bootloader/AbortException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v2

    .line 255
    if-eqz v2, :cond_1

    .line 256
    :try_start_1
    invoke-virtual {p0}, Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask;->showProgressDialog()V

    .line 257
    iget-object v4, p0, Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask;->this$0:Lmobi/monaca/framework/bootloader/LocalFileBootloader;

    invoke-virtual {v4}, Lmobi/monaca/framework/bootloader/LocalFileBootloader;->clean()V

    .line 259
    iget-object v4, p0, Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask;->this$0:Lmobi/monaca/framework/bootloader/LocalFileBootloader;

    invoke-virtual {v4}, Lmobi/monaca/framework/bootloader/LocalFileBootloader;->getAssetsFileList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 260
    .local v3, "path":Ljava/lang/String;
    iget-object v4, p0, Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask;->this$0:Lmobi/monaca/framework/bootloader/LocalFileBootloader;

    invoke-virtual {v4, v3}, Lmobi/monaca/framework/bootloader/LocalFileBootloader;->copyAssetToLocal(Ljava/lang/String;)V
    :try_end_1
    .catch Lmobi/monaca/framework/bootloader/AbortException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 266
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "path":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Lmobi/monaca/framework/bootloader/AbortException;
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 275
    .end local v0    # "e":Lmobi/monaca/framework/bootloader/AbortException;
    :goto_1
    return-object v4

    .line 246
    :catch_1
    move-exception v0

    .line 248
    .restart local v0    # "e":Lmobi/monaca/framework/bootloader/AbortException;
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_1

    .line 249
    .end local v0    # "e":Lmobi/monaca/framework/bootloader/AbortException;
    :catch_2
    move-exception v0

    .line 251
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_1

    .line 262
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_2
    iget-object v4, p0, Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask;->this$0:Lmobi/monaca/framework/bootloader/LocalFileBootloader;

    iget-object v4, v4, Lmobi/monaca/framework/bootloader/LocalFileBootloader;->bootloaderPreferences:Lmobi/monaca/framework/bootloader/BootloaderPreferences;

    iget-object v5, p0, Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask;->this$0:Lmobi/monaca/framework/bootloader/LocalFileBootloader;

    invoke-virtual {v5}, Lmobi/monaca/framework/bootloader/LocalFileBootloader;->getAppliationVersionCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmobi/monaca/framework/bootloader/BootloaderPreferences;->saveAppVersionCode(Ljava/lang/String;)V

    .line 264
    iget-object v4, p0, Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask;->this$0:Lmobi/monaca/framework/bootloader/LocalFileBootloader;

    iget-object v4, v4, Lmobi/monaca/framework/bootloader/LocalFileBootloader;->bootloaderPreferences:Lmobi/monaca/framework/bootloader/BootloaderPreferences;

    invoke-virtual {v4}, Lmobi/monaca/framework/bootloader/BootloaderPreferences;->updateLastPackageUpdatedTime()V
    :try_end_2
    .catch Lmobi/monaca/framework/bootloader/AbortException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    .line 275
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_1

    .line 270
    :catch_3
    move-exception v0

    .line 272
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 234
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "isSuccess"    # Ljava/lang/Boolean;

    .prologue
    .line 280
    invoke-virtual {p0}, Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask;->dismissProgressDialog()V

    .line 281
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask;->this$0:Lmobi/monaca/framework/bootloader/LocalFileBootloader;

    iget-object v0, v0, Lmobi/monaca/framework/bootloader/LocalFileBootloader;->success:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 286
    :goto_0
    return-void

    .line 284
    :cond_0
    iget-object v0, p0, Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask;->this$0:Lmobi/monaca/framework/bootloader/LocalFileBootloader;

    iget-object v0, v0, Lmobi/monaca/framework/bootloader/LocalFileBootloader;->fail:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 234
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected showAbortAlert()V
    .locals 1

    .prologue
    .line 313
    sget v0, Lmobi/monaca/framework/psedo/R$string;->message_abort_alert:I

    invoke-static {v0}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask;->showAlert(Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method protected showAlert(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 317
    iget-object v0, p0, Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask;->handler:Landroid/os/Handler;

    new-instance v1, Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask$3;

    invoke-direct {v1, p0, p1}, Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask$3;-><init>(Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 324
    return-void
.end method

.method protected showProgressDialog()V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask;->handler:Landroid/os/Handler;

    new-instance v1, Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask$1;

    invoke-direct {v1, p0}, Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask$1;-><init>(Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 298
    return-void
.end method

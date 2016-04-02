.class Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask$1;
.super Ljava/lang/Object;
.source "LocalFileBootloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask;->showProgressDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask;


# direct methods
.method constructor <init>(Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask$1;->this$1:Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 292
    iget-object v0, p0, Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask$1;->this$1:Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask$1;->this$1:Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask;

    iget-object v2, v2, Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask;->this$0:Lmobi/monaca/framework/bootloader/LocalFileBootloader;

    iget-object v2, v2, Lmobi/monaca/framework/bootloader/LocalFileBootloader;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask;->loadingDialog:Landroid/app/ProgressDialog;

    .line 293
    iget-object v0, p0, Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask$1;->this$1:Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask;

    iget-object v0, v0, Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask;->loadingDialog:Landroid/app/ProgressDialog;

    sget v1, Lmobi/monaca/framework/psedo/R$string;->loading:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 294
    iget-object v0, p0, Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask$1;->this$1:Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask;

    iget-object v0, v0, Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 295
    iget-object v0, p0, Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask$1;->this$1:Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask;

    iget-object v0, v0, Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask;->loadingDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 296
    return-void
.end method

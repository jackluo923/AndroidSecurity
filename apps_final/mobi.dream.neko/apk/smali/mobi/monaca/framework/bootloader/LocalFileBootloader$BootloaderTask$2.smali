.class Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask$2;
.super Ljava/lang/Object;
.source "LocalFileBootloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask;->dismissProgressDialog()V
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
    .line 301
    iput-object p1, p0, Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask$2;->this$1:Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask$2;->this$1:Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask;

    iget-object v0, v0, Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask;->loadingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask$2;->this$1:Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask;

    iget-object v0, v0, Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 306
    iget-object v0, p0, Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask$2;->this$1:Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask;

    const/4 v1, 0x0

    iput-object v1, v0, Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask;->loadingDialog:Landroid/app/ProgressDialog;

    .line 308
    :cond_0
    return-void
.end method

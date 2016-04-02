.class Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask$3;
.super Ljava/lang/Object;
.source "LocalFileBootloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask;->showAlert(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask$3;->this$1:Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask;

    iput-object p2, p0, Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask$3;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 320
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask$3;->this$1:Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask;

    iget-object v1, v1, Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask;->this$0:Lmobi/monaca/framework/bootloader/LocalFileBootloader;

    iget-object v1, v1, Lmobi/monaca/framework/bootloader/LocalFileBootloader;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask$3;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 322
    return-void
.end method

.class public final Lcom/google/zxing/client/android/share/AppPickerActivity;
.super Landroid/app/ListActivity;
.source "AppPickerActivity.java"


# instance fields
.field private backgroundTask:Lcom/google/zxing/client/android/share/LoadPackagesAsyncTask;

.field private final labelsPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final taskExec:Lcom/google/zxing/client/android/common/executor/AsyncTaskExecInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/client/android/share/AppPickerActivity;->labelsPackages:Ljava/util/List;

    .line 39
    new-instance v0, Lcom/google/zxing/client/android/common/executor/AsyncTaskExecManager;

    invoke-direct {v0}, Lcom/google/zxing/client/android/common/executor/AsyncTaskExecManager;-><init>()V

    invoke-virtual {v0}, Lcom/google/zxing/client/android/common/executor/AsyncTaskExecManager;->build()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/client/android/common/executor/AsyncTaskExecInterface;

    iput-object v0, p0, Lcom/google/zxing/client/android/share/AppPickerActivity;->taskExec:Lcom/google/zxing/client/android/common/executor/AsyncTaskExecInterface;

    .line 40
    return-void
.end method


# virtual methods
.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 62
    if-ltz p3, :cond_0

    iget-object v2, p0, Lcom/google/zxing/client/android/share/AppPickerActivity;->labelsPackages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p3, v2, :cond_0

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "market://details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/google/zxing/client/android/share/AppPickerActivity;->labelsPackages:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "url":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 65
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x80000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 66
    const-string v2, "url"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/google/zxing/client/android/share/AppPickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 71
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "url":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/google/zxing/client/android/share/AppPickerActivity;->finish()V

    .line 72
    return-void

    .line 69
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/zxing/client/android/share/AppPickerActivity;->setResult(I)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/zxing/client/android/share/AppPickerActivity;->backgroundTask:Lcom/google/zxing/client/android/share/LoadPackagesAsyncTask;

    .line 53
    .local v0, "task":Lcom/google/zxing/client/android/share/LoadPackagesAsyncTask;
    if-eqz v0, :cond_0

    .line 54
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/share/LoadPackagesAsyncTask;->cancel(Z)Z

    .line 55
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/zxing/client/android/share/AppPickerActivity;->backgroundTask:Lcom/google/zxing/client/android/share/LoadPackagesAsyncTask;

    .line 57
    :cond_0
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 58
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 44
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 45
    iget-object v0, p0, Lcom/google/zxing/client/android/share/AppPickerActivity;->labelsPackages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 46
    new-instance v0, Lcom/google/zxing/client/android/share/LoadPackagesAsyncTask;

    invoke-direct {v0, p0}, Lcom/google/zxing/client/android/share/LoadPackagesAsyncTask;-><init>(Lcom/google/zxing/client/android/share/AppPickerActivity;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/share/AppPickerActivity;->backgroundTask:Lcom/google/zxing/client/android/share/LoadPackagesAsyncTask;

    .line 47
    iget-object v0, p0, Lcom/google/zxing/client/android/share/AppPickerActivity;->taskExec:Lcom/google/zxing/client/android/common/executor/AsyncTaskExecInterface;

    iget-object v1, p0, Lcom/google/zxing/client/android/share/AppPickerActivity;->backgroundTask:Lcom/google/zxing/client/android/share/LoadPackagesAsyncTask;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/List;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/zxing/client/android/share/AppPickerActivity;->labelsPackages:Ljava/util/List;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/zxing/client/android/common/executor/AsyncTaskExecInterface;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 48
    return-void
.end method

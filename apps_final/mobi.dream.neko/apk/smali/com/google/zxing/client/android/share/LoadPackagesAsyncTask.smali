.class final Lcom/google/zxing/client/android/share/LoadPackagesAsyncTask;
.super Landroid/os/AsyncTask;
.source "LoadPackagesAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/client/android/share/LoadPackagesAsyncTask$1;,
        Lcom/google/zxing/client/android/share/LoadPackagesAsyncTask$ByFirstStringComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/List",
        "<[",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Object;",
        "Ljava/util/List",
        "<[",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final PKG_PREFIX_BLACKLIST:[Ljava/lang/String;

.field private static final PKG_PREFIX_WHITELIST:[Ljava/lang/String;


# instance fields
.field private final activity:Lcom/google/zxing/client/android/share/AppPickerActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "com.google.android.apps."

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/zxing/client/android/share/LoadPackagesAsyncTask;->PKG_PREFIX_WHITELIST:[Ljava/lang/String;

    .line 41
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android."

    aput-object v1, v0, v2

    const-string v1, "android"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "com.google.android."

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.htc"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/client/android/share/LoadPackagesAsyncTask;->PKG_PREFIX_BLACKLIST:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/zxing/client/android/share/AppPickerActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/google/zxing/client/android/share/AppPickerActivity;

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/google/zxing/client/android/share/LoadPackagesAsyncTask;->activity:Lcom/google/zxing/client/android/share/AppPickerActivity;

    .line 52
    return-void
.end method

.method private static isHidden(Ljava/lang/String;)Z
    .locals 7
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 73
    if-nez p0, :cond_1

    .line 86
    :cond_0
    :goto_0
    return v4

    .line 76
    :cond_1
    sget-object v0, Lcom/google/zxing/client/android/share/LoadPackagesAsyncTask;->PKG_PREFIX_WHITELIST:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 77
    .local v3, "prefix":Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v4, v5

    .line 78
    goto :goto_0

    .line 76
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 81
    .end local v3    # "prefix":Ljava/lang/String;
    :cond_3
    sget-object v0, Lcom/google/zxing/client/android/share/LoadPackagesAsyncTask;->PKG_PREFIX_BLACKLIST:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_4

    aget-object v3, v0, v1

    .line 82
    .restart local v3    # "prefix":Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 81
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v3    # "prefix":Ljava/lang/String;
    :cond_4
    move v4, v5

    .line 86
    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 36
    check-cast p1, [Ljava/util/List;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/android/share/LoadPackagesAsyncTask;->doInBackground([Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "objects":[Ljava/util/List;, "[Ljava/util/List<[Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 56
    aget-object v4, p1, v9

    .line 57
    .local v4, "labelsPackages":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/google/zxing/client/android/share/LoadPackagesAsyncTask;->activity:Lcom/google/zxing/client/android/share/AppPickerActivity;

    invoke-virtual {v7}, Lcom/google/zxing/client/android/share/AppPickerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 58
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v5, v9}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 59
    .local v1, "appInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 60
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 61
    .local v3, "label":Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 62
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 63
    .local v6, "packageName":Ljava/lang/String;
    invoke-static {v6}, Lcom/google/zxing/client/android/share/LoadPackagesAsyncTask;->isHidden(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 64
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    const/4 v8, 0x1

    aput-object v6, v7, v8

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 68
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "label":Ljava/lang/CharSequence;
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_1
    new-instance v7, Lcom/google/zxing/client/android/share/LoadPackagesAsyncTask$ByFirstStringComparator;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/google/zxing/client/android/share/LoadPackagesAsyncTask$ByFirstStringComparator;-><init>(Lcom/google/zxing/client/android/share/LoadPackagesAsyncTask$1;)V

    invoke-static {v4, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 69
    return-object v4
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 36
    check-cast p1, Ljava/util/List;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/android/share/LoadPackagesAsyncTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected declared-synchronized onPostExecute(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 92
    .local v1, "labels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 93
    .local v3, "result":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 91
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "labels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "result":[Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 95
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "labels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :try_start_1
    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/google/zxing/client/android/share/LoadPackagesAsyncTask;->activity:Lcom/google/zxing/client/android/share/AppPickerActivity;

    const v5, 0x1090003

    invoke-direct {v2, v4, v5, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 97
    .local v2, "listAdapter":Landroid/widget/ListAdapter;
    iget-object v4, p0, Lcom/google/zxing/client/android/share/LoadPackagesAsyncTask;->activity:Lcom/google/zxing/client/android/share/AppPickerActivity;

    invoke-virtual {v4, v2}, Lcom/google/zxing/client/android/share/AppPickerActivity;->setListAdapter(Landroid/widget/ListAdapter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    monitor-exit p0

    return-void
.end method

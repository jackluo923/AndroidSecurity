.class public Lcom/ali/user/mobile/login/ui/adapter/ArrayFilter;
.super Landroid/widget/Filter;
.source "ArrayFilter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/Filter;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter",
            "<TT;>;"
        }
    .end annotation
.end field

.field mOriginalValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TT;>;",
            "Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/adapter/ArrayFilter;->a:Ljava/lang/Object;

    .line 22
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/adapter/ArrayFilter;->mOriginalValues:Ljava/util/ArrayList;

    .line 23
    iput-object p2, p0, Lcom/ali/user/mobile/login/ui/adapter/ArrayFilter;->b:Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;

    .line 24
    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 8

    .prologue
    .line 34
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 36
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/adapter/ArrayFilter;->mOriginalValues:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 37
    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/adapter/ArrayFilter;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 38
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/ali/user/mobile/login/ui/adapter/ArrayFilter;->b:Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;

    invoke-virtual {v3}, Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;->getHistoryList()Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/adapter/ArrayFilter;->mOriginalValues:Ljava/util/ArrayList;

    .line 37
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 44
    :cond_1
    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/adapter/ArrayFilter;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 45
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/ali/user/mobile/login/ui/adapter/ArrayFilter;->mOriginalValues:Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 44
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 47
    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 48
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 86
    :goto_0
    return-object v1

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 44
    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    .line 50
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 53
    iget-object v3, p0, Lcom/ali/user/mobile/login/ui/adapter/ArrayFilter;->a:Ljava/lang/Object;

    monitor-enter v3

    .line 54
    :try_start_2
    new-instance v4, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/adapter/ArrayFilter;->mOriginalValues:Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 53
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 57
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 58
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 60
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v3, :cond_3

    .line 82
    iput-object v5, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 83
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, v1, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_0

    .line 53
    :catchall_2
    move-exception v0

    monitor-exit v3

    throw v0

    .line 61
    :cond_3
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 62
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 65
    invoke-virtual {v7, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 66
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2

    .prologue
    .line 91
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/adapter/ArrayFilter;->b:Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;->resetList(Ljava/util/List;)V

    .line 92
    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/adapter/ArrayFilter;->b:Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;->notifyDataSetChanged()V

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/adapter/ArrayFilter;->b:Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method

.method public updateOriginData()V
    .locals 3

    .prologue
    .line 27
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/adapter/ArrayFilter;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 28
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/adapter/ArrayFilter;->b:Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;

    invoke-virtual {v2}, Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;->getHistoryList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/adapter/ArrayFilter;->mOriginalValues:Ljava/util/ArrayList;

    .line 27
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

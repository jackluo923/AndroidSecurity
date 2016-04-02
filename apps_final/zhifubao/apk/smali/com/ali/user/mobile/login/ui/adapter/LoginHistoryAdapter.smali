.class public Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;
.super Landroid/widget/BaseAdapter;
.source "LoginHistoryAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Landroid/view/LayoutInflater;

.field private e:Lcom/ali/user/mobile/login/ui/adapter/ArrayFilter;

.field private f:Landroid/view/View$OnLongClickListener;

.field private g:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnLongClickListener;Landroid/view/View$OnClickListener;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/View$OnLongClickListener;",
            "Landroid/view/View$OnClickListener;",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 62
    iput-object p2, p0, Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;->f:Landroid/view/View$OnLongClickListener;

    .line 63
    iput-object p3, p0, Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;->g:Landroid/view/View$OnClickListener;

    .line 64
    invoke-direct {p0, p1, p4, p5}, Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 47
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 81
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;->b:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;->a:Ljava/util/List;

    .line 83
    iput-object p3, p0, Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;->c:Ljava/lang/String;

    .line 84
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;->d:Landroid/view/LayoutInflater;

    .line 85
    return-void
.end method

.method static synthetic access$0(Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;->g:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;)Landroid/view/View$OnLongClickListener;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;->f:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method


# virtual methods
.method public afterDeleteHistory(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;->resetList(Ljava/util/List;)V

    .line 69
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/login/ui/adapter/ArrayFilter;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/adapter/ArrayFilter;->updateOriginData()V

    .line 70
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;->a:Ljava/util/List;

    if-nez v0, :cond_0

    .line 91
    const/4 v0, 0x0

    .line 93
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;->e:Lcom/ali/user/mobile/login/ui/adapter/ArrayFilter;

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Lcom/ali/user/mobile/login/ui/adapter/ArrayFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/ali/user/mobile/login/ui/adapter/ArrayFilter;-><init>(Ljava/util/ArrayList;Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;)V

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;->e:Lcom/ali/user/mobile/login/ui/adapter/ArrayFilter;

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;->e:Lcom/ali/user/mobile/login/ui/adapter/ArrayFilter;

    return-object v0
.end method

.method public getHistoryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;->a:Ljava/util/List;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;->a:Ljava/util/List;

    if-nez v0, :cond_0

    .line 99
    const/4 v0, 0x0

    .line 101
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 106
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 113
    if-nez p2, :cond_2

    .line 115
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;->d:Landroid/view/LayoutInflater;

    sget v1, Lcom/ali/user/mobile/security/ui/R$layout;->security_recent_filter_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 116
    new-instance v1, Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter$HistoryViews;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter$HistoryViews;-><init>(Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;)V

    .line 117
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter$HistoryViews;->nameView:Landroid/widget/TextView;

    .line 118
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 123
    :goto_0
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 124
    check-cast v0, Lcom/ali/user/mobile/login/LoginHistory;

    .line 126
    iget-object v2, v0, Lcom/ali/user/mobile/login/LoginHistory;->loginAccount:Ljava/lang/String;

    .line 127
    iget-object v3, p0, Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ali/user/mobile/utils/StringUtil;->hideAccount(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 128
    iget-object v3, v1, Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter$HistoryViews;->nameView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v1, v1, Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter$HistoryViews;->nameView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 131
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;->g:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 132
    new-instance v0, Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter$1;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter$1;-><init>(Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;->f:Landroid/view/View$OnLongClickListener;

    if-eqz v0, :cond_1

    .line 142
    new-instance v0, Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter$2;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter$2;-><init>(Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 152
    :cond_1
    return-object p2

    .line 120
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter$HistoryViews;

    move-object v1, v0

    goto :goto_0
.end method

.method public resetList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 73
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;->a:Ljava/util/List;

    .line 74
    return-void
.end method

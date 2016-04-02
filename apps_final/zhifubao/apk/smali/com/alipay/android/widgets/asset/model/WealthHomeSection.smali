.class public Lcom/alipay/android/widgets/asset/model/WealthHomeSection;
.super Ljava/lang/Object;
.source "WealthHomeSection.java"


# instance fields
.field private index:I

.field private modules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/widgets/asset/model/WealthHomeModule;",
            ">;>;"
        }
    .end annotation
.end field

.field private summary:Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copy()Lcom/alipay/android/widgets/asset/model/WealthHomeSection;
    .locals 5

    .prologue
    .line 49
    new-instance v1, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;

    invoke-direct {v1}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;-><init>()V

    .line 50
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->title:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->title:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->summary:Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->summary:Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->copy()Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->summary:Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->modules:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->modules:Ljava/util/List;

    .line 56
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->modules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 66
    :cond_2
    iget v0, p0, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->index:I

    iput v0, v1, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->index:I

    .line 67
    return-object v1

    .line 56
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 57
    if-eqz v0, :cond_1

    .line 58
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 59
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 62
    iget-object v0, v1, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->modules:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 59
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    .line 60
    invoke-virtual {v0}, Lcom/alipay/android/widgets/asset/model/WealthHomeModule;->copy()Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->index:I

    return v0
.end method

.method public getModules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/widgets/asset/model/WealthHomeModule;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->modules:Ljava/util/List;

    return-object v0
.end method

.method public getSummary()Lcom/alipay/android/widgets/asset/model/WealthHomeModule;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->summary:Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setIndex(I)V
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->index:I

    .line 46
    return-void
.end method

.method public setModules(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/widgets/asset/model/WealthHomeModule;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->modules:Ljava/util/List;

    .line 38
    return-void
.end method

.method public setSummary(Lcom/alipay/android/widgets/asset/model/WealthHomeModule;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->summary:Lcom/alipay/android/widgets/asset/model/WealthHomeModule;

    .line 30
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->title:Ljava/lang/String;

    .line 22
    return-void
.end method

.class public Lcom/alipay/android/app/template/JniReferenceManager;
.super Ljava/lang/Object;
.source "JniReferenceManager.java"


# static fields
.field private static a:Lcom/alipay/android/app/template/JniReferenceManager;


# instance fields
.field private b:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/JniReferenceManager;->b:Landroid/util/SparseArray;

    .line 10
    return-void
.end method

.method public static getInstance()Lcom/alipay/android/app/template/JniReferenceManager;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/alipay/android/app/template/JniReferenceManager;->a:Lcom/alipay/android/app/template/JniReferenceManager;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/alipay/android/app/template/JniReferenceManager;

    invoke-direct {v0}, Lcom/alipay/android/app/template/JniReferenceManager;-><init>()V

    sput-object v0, Lcom/alipay/android/app/template/JniReferenceManager;->a:Lcom/alipay/android/app/template/JniReferenceManager;

    .line 20
    :cond_0
    sget-object v0, Lcom/alipay/android/app/template/JniReferenceManager;->a:Lcom/alipay/android/app/template/JniReferenceManager;

    return-object v0
.end method


# virtual methods
.method public clearReferences(I)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 37
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 38
    iget-object v0, p0, Lcom/alipay/android/app/template/JniReferenceManager;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v5

    move v3, v2

    .line 39
    :goto_0
    if-lt v3, v5, :cond_0

    .line 49
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    .line 52
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 53
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/JniReferenceManager;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/TScriptable;

    .line 41
    if-eqz v0, :cond_5

    instance-of v1, v0, Lcom/alipay/android/app/template/view/widget/TElement;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 42
    check-cast v1, Lcom/alipay/android/app/template/view/widget/TElement;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/widget/TElement;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_1
    instance-of v1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    if-eqz v1, :cond_2

    move-object v1, v0

    .line 43
    check-cast v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_2
    move v1, v2

    .line 41
    :goto_2
    if-nez v1, :cond_3

    invoke-interface {v0}, Lcom/alipay/android/app/template/TScriptable;->getWindowHashCode()I

    move-result v0

    if-ne v0, p1, :cond_4

    .line 46
    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 43
    :cond_5
    const/4 v1, 0x1

    goto :goto_2

    .line 49
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 50
    iget-object v2, p0, Lcom/alipay/android/app/template/JniReferenceManager;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_1
.end method

.method public getJniReferenceObject(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alipay/android/app/template/JniReferenceManager;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putJniReferencePair(ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alipay/android/app/template/JniReferenceManager;->b:Landroid/util/SparseArray;

    check-cast p2, Lcom/alipay/android/app/template/TScriptable;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 30
    return-void
.end method

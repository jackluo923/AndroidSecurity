.class public final Luk/co/senab/a/b/b;
.super Ljava/lang/Object;


# instance fields
.field public a:Luk/co/senab/a/b/h;

.field public b:Luk/co/senab/a/b/a/b;

.field public c:Landroid/view/ViewGroup;

.field public d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Luk/co/senab/a/b/b/c;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/app/Activity;

.field private f:[I

.field private g:[Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luk/co/senab/a/b/b;->e:Landroid/app/Activity;

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Activity;B)V
    .locals 0

    invoke-direct {p0, p1}, Luk/co/senab/a/b/b;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public final varargs a([I)Luk/co/senab/a/b/b;
    .locals 1

    iput-object p1, p0, Luk/co/senab/a/b/b;->f:[I

    const/4 v0, 0x0

    iput-object v0, p0, Luk/co/senab/a/b/b;->g:[Landroid/view/View;

    return-object p0
.end method

.method public final a(Luk/co/senab/a/b/n;)V
    .locals 7

    const/4 v4, -0x1

    const/4 v2, 0x0

    iget-object v0, p0, Luk/co/senab/a/b/b;->e:Landroid/app/Activity;

    iget-object v1, p0, Luk/co/senab/a/b/b;->a:Luk/co/senab/a/b/h;

    invoke-virtual {p1, v0, v1}, Luk/co/senab/a/b/n;->a(Landroid/app/Activity;Luk/co/senab/a/b/h;)Luk/co/senab/a/b/j;

    move-result-object v3

    iget-object v0, p0, Luk/co/senab/a/b/b;->b:Luk/co/senab/a/b/a/b;

    iput-object v0, v3, Luk/co/senab/a/b/j;->b:Luk/co/senab/a/b/a/b;

    iget-object v0, p0, Luk/co/senab/a/b/b;->c:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v1, p0, Luk/co/senab/a/b/b;->c:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-virtual {p1, v0}, Luk/co/senab/a/b/n;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    :cond_1
    invoke-virtual {p1, v3}, Luk/co/senab/a/b/n;->setPullToRefreshAttacher(Luk/co/senab/a/b/j;)V

    iget-object v0, p0, Luk/co/senab/a/b/b;->f:[I

    if-eqz v0, :cond_4

    iget-object v0, p0, Luk/co/senab/a/b/b;->f:[I

    invoke-virtual {p1, v0}, Luk/co/senab/a/b/n;->a([I)V

    :goto_1
    iget-object v0, p0, Luk/co/senab/a/b/b;->d:Ljava/util/HashMap;

    if-eqz v0, :cond_6

    iget-object v0, p0, Luk/co/senab/a/b/b;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Luk/co/senab/a/b/b/c;

    iget-object v2, v3, Luk/co/senab/a/b/j;->m:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v3, Luk/co/senab/a/b/j;->m:Ljava/util/WeakHashMap;

    invoke-virtual {v6, v2, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    iget-object v0, p0, Luk/co/senab/a/b/b;->g:[Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Luk/co/senab/a/b/b;->g:[Landroid/view/View;

    invoke-virtual {p1, v0}, Luk/co/senab/a/b/n;->a([Landroid/view/View;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Luk/co/senab/a/b/n;->b()V

    goto :goto_1

    :cond_6
    return-void
.end method

.class final Lcom/a/a/b/k;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field final d:Lcom/a/a/b/a/f;

.field final e:Lcom/a/a/b/d;

.field final f:Lcom/a/a/b/a/d;

.field final g:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/widget/ImageView;Lcom/a/a/b/a/f;Ljava/lang/String;Lcom/a/a/b/d;Lcom/a/a/b/a/d;Ljava/util/concurrent/locks/ReentrantLock;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/b/k;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/a/a/b/k;->c:Ljava/lang/ref/Reference;

    iput-object p3, p0, Lcom/a/a/b/k;->d:Lcom/a/a/b/a/f;

    iput-object p5, p0, Lcom/a/a/b/k;->e:Lcom/a/a/b/d;

    iput-object p6, p0, Lcom/a/a/b/k;->f:Lcom/a/a/b/a/d;

    iput-object p7, p0, Lcom/a/a/b/k;->g:Ljava/util/concurrent/locks/ReentrantLock;

    iput-object p4, p0, Lcom/a/a/b/k;->b:Ljava/lang/String;

    return-void
.end method

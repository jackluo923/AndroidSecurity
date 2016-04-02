.class final Lcom/a/a/b/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/a/a/b/l;


# direct methods
.method constructor <init>(Lcom/a/a/b/l;)V
    .locals 0

    iput-object p1, p0, Lcom/a/a/b/n;->a:Lcom/a/a/b/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/a/a/b/n;->a:Lcom/a/a/b/l;

    iget-object v0, v0, Lcom/a/a/b/l;->d:Lcom/a/a/b/a/d;

    iget-object v0, p0, Lcom/a/a/b/n;->a:Lcom/a/a/b/l;

    iget-object v0, v0, Lcom/a/a/b/l;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/a/a/b/n;->a:Lcom/a/a/b/l;

    iget-object v0, v0, Lcom/a/a/b/l;->b:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    return-void
.end method

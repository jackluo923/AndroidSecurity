.class final Lcom/appyet/f/c;
.super Lcom/appyet/f/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appyet/f/i",
        "<TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/appyet/f/a;


# direct methods
.method constructor <init>(Lcom/appyet/f/a;)V
    .locals 1

    iput-object p1, p0, Lcom/appyet/f/c;->a:Lcom/appyet/f/a;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/appyet/f/i;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    iget-object v0, p0, Lcom/appyet/f/c;->a:Lcom/appyet/f/a;

    invoke-static {v0}, Lcom/appyet/f/a;->a(Lcom/appyet/f/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/appyet/f/c;->a:Lcom/appyet/f/a;

    iget-object v1, p0, Lcom/appyet/f/c;->a:Lcom/appyet/f/a;

    iget-object v2, p0, Lcom/appyet/f/c;->b:[Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/appyet/f/a;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appyet/f/a;->a(Lcom/appyet/f/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.class final Lcom/google/android/gms/internal/dy$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic qr:Landroid/content/Context;

.field final synthetic qs:Lcom/google/android/gms/internal/dt;

.field final synthetic qt:Lcom/google/android/gms/internal/ea;

.field final synthetic qu:Lcom/google/android/gms/internal/ez$a;

.field final synthetic qv:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/dt;Lcom/google/android/gms/internal/ea;Lcom/google/android/gms/internal/ez$a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/dy$1;->qr:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/dy$1;->qs:Lcom/google/android/gms/internal/dt;

    iput-object p3, p0, Lcom/google/android/gms/internal/dy$1;->qt:Lcom/google/android/gms/internal/ea;

    iput-object p4, p0, Lcom/google/android/gms/internal/dy$1;->qu:Lcom/google/android/gms/internal/ez$a;

    iput-object p5, p0, Lcom/google/android/gms/internal/dy$1;->qv:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/dy$1;->qr:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/internal/am;

    invoke-direct {v1}, Lcom/google/android/gms/internal/am;-><init>()V

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/dy$1;->qs:Lcom/google/android/gms/internal/dt;

    iget-object v5, v3, Lcom/google/android/gms/internal/dt;->kO:Lcom/google/android/gms/internal/ew;

    move v3, v2

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ey;->a(Landroid/content/Context;Lcom/google/android/gms/internal/am;ZZLcom/google/android/gms/internal/l;Lcom/google/android/gms/internal/ew;)Lcom/google/android/gms/internal/ey;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ey;->setWillNotDraw(Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/dy$1;->qt:Lcom/google/android/gms/internal/ea;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ea;->b(Lcom/google/android/gms/internal/ey;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ey;->bW()Lcom/google/android/gms/internal/ez;

    move-result-object v1

    const-string v2, "/invalidRequest"

    iget-object v3, p0, Lcom/google/android/gms/internal/dy$1;->qt:Lcom/google/android/gms/internal/ea;

    iget-object v3, v3, Lcom/google/android/gms/internal/ea;->qA:Lcom/google/android/gms/internal/bd;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ez;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bd;)V

    const-string v2, "/loadAdURL"

    iget-object v3, p0, Lcom/google/android/gms/internal/dy$1;->qt:Lcom/google/android/gms/internal/ea;

    iget-object v3, v3, Lcom/google/android/gms/internal/ea;->qB:Lcom/google/android/gms/internal/bd;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ez;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bd;)V

    const-string v2, "/log"

    sget-object v3, Lcom/google/android/gms/internal/bc;->mX:Lcom/google/android/gms/internal/bd;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ez;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bd;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/dy$1;->qu:Lcom/google/android/gms/internal/ez$a;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ez;->a(Lcom/google/android/gms/internal/ez$a;)V

    const-string v1, "Loading the JS library."

    invoke-static {v1}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/dy$1;->qv:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ey;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.class final Lcom/google/android/gms/internal/v$c;
.super Ljava/lang/Object;


# instance fields
.field public final kK:Lcom/google/android/gms/internal/v$a;

.field public final kL:Ljava/lang/String;

.field public final kM:Landroid/content/Context;

.field public final kN:Lcom/google/android/gms/internal/l;

.field public final kO:Lcom/google/android/gms/internal/ew;

.field public kP:Lcom/google/android/gms/internal/aq;

.field public kQ:Lcom/google/android/gms/internal/en;

.field public kR:Lcom/google/android/gms/internal/am;

.field public kS:Lcom/google/android/gms/internal/eg;

.field public kT:Lcom/google/android/gms/internal/eh;

.field public kU:Lcom/google/android/gms/internal/at;

.field public kV:Lcom/google/android/gms/internal/dh;

.field public kW:Lcom/google/android/gms/internal/dd;

.field public kX:Lcom/google/android/gms/internal/da;

.field public kY:Lcom/google/android/gms/internal/el;

.field public kZ:Z

.field private la:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/eh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/am;Ljava/lang/String;Lcom/google/android/gms/internal/ew;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/v$c;->kY:Lcom/google/android/gms/internal/el;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/v$c;->kZ:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/v$c;->la:Ljava/util/HashSet;

    iget-boolean v0, p2, Lcom/google/android/gms/internal/am;->md:Z

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/google/android/gms/internal/v$c;->kK:Lcom/google/android/gms/internal/v$a;

    :goto_0
    iput-object p2, p0, Lcom/google/android/gms/internal/v$c;->kR:Lcom/google/android/gms/internal/am;

    iput-object p3, p0, Lcom/google/android/gms/internal/v$c;->kL:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/v$c;->kM:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/v$c;->kO:Lcom/google/android/gms/internal/ew;

    new-instance v0, Lcom/google/android/gms/internal/l;

    new-instance v1, Lcom/google/android/gms/internal/v$b;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/v$b;-><init>(Lcom/google/android/gms/internal/v$c;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/l;-><init>(Lcom/google/android/gms/internal/h;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/v$c;->kN:Lcom/google/android/gms/internal/l;

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/v$a;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/v$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/v$c;->kK:Lcom/google/android/gms/internal/v$a;

    iget-object v0, p0, Lcom/google/android/gms/internal/v$c;->kK:Lcom/google/android/gms/internal/v$a;

    iget v1, p2, Lcom/google/android/gms/internal/am;->widthPixels:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/v$a;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/v$c;->kK:Lcom/google/android/gms/internal/v$a;

    iget v1, p2, Lcom/google/android/gms/internal/am;->heightPixels:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/v$a;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/v$c;->kK:Lcom/google/android/gms/internal/v$a;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/v$a;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/eh;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/v$c;->la:Ljava/util/HashSet;

    return-void
.end method

.method public final al()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/eh;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/v$c;->la:Ljava/util/HashSet;

    return-object v0
.end method

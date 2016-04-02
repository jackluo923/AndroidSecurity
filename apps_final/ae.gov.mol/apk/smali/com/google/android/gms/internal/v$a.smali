.class final Lcom/google/android/gms/internal/v$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/v$a$a;
    }
.end annotation


# instance fields
.field private final bI:Ljava/lang/String;

.field private final bJ:Lcom/google/android/gms/internal/v$a$a;

.field private final bK:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/u",
            "<*>.e;>;"
        }
    .end annotation
.end field

.field private bL:Z

.field private bM:Landroid/os/IBinder;

.field private bN:Landroid/content/ComponentName;

.field final synthetic bO:Lcom/google/android/gms/internal/v;

.field private mState:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/v;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/v$a;->bO:Lcom/google/android/gms/internal/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/v$a;->bI:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/v$a$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/v$a$a;-><init>(Lcom/google/android/gms/internal/v$a;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/v$a;->bJ:Lcom/google/android/gms/internal/v$a$a;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/v$a;->bK:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/v$a;->mState:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/v$a;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/v$a;->mState:I

    return p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/v$a;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/v$a;->bN:Landroid/content/ComponentName;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/v$a;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/v$a;->bM:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/v$a;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/v$a;->bK:Ljava/util/HashSet;

    return-object v0
.end method


# virtual methods
.method public C()Lcom/google/android/gms/internal/v$a$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/v$a;->bJ:Lcom/google/android/gms/internal/v$a$a;

    return-object v0
.end method

.method public D()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/v$a;->bI:Ljava/lang/String;

    return-object v0
.end method

.method public E()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/v$a;->bK:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public a(Lcom/google/android/gms/internal/u$e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/u",
            "<*>.e;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/v$a;->bK:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lcom/google/android/gms/internal/u$e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/u",
            "<*>.e;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/v$a;->bK:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/v$a;->bL:Z

    return-void
.end method

.method public c(Lcom/google/android/gms/internal/u$e;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/u",
            "<*>.e;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/v$a;->bK:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/v$a;->bM:Landroid/os/IBinder;

    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/v$a;->bN:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/v$a;->mState:I

    return v0
.end method

.method public isBound()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/v$a;->bL:Z

    return v0
.end method

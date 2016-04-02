.class public abstract Lcom/google/android/gms/internal/gh;
.super Ljava/lang/Object;


# instance fields
.field protected final BA:Lcom/google/android/gms/internal/go;

.field private final BB:Ljava/lang/String;

.field private BC:Lcom/google/android/gms/internal/gq;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/gj;->ak(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/gh;->BB:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/go;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/go;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/gh;->BA:Lcom/google/android/gms/internal/go;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/gh;->BA:Lcom/google/android/gms/internal/go;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/go;->ap(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(JI)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/gq;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/gh;->BC:Lcom/google/android/gms/internal/gq;

    iget-object v0, p0, Lcom/google/android/gms/internal/gh;->BC:Lcom/google/android/gms/internal/gq;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gh;->dZ()V

    :cond_0
    return-void
.end method

.method protected final a(Ljava/lang/String;JLjava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/gh;->BA:Lcom/google/android/gms/internal/go;

    const-string v1, "Sending text message: %s to: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/go;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gh;->BC:Lcom/google/android/gms/internal/gq;

    iget-object v1, p0, Lcom/google/android/gms/internal/gh;->BB:Ljava/lang/String;

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/gq;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public ai(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected final dY()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gh;->BC:Lcom/google/android/gms/internal/gq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/gq;->dW()J

    move-result-wide v0

    return-wide v0
.end method

.method public dZ()V
    .locals 0

    return-void
.end method

.method public final getNamespace()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gh;->BB:Ljava/lang/String;

    return-object v0
.end method

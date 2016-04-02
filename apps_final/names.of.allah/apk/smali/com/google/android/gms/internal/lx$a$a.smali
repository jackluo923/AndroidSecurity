.class public final Lcom/google/android/gms/internal/lx$a$a;
.super Lcom/google/android/gms/internal/mb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/mb",
        "<",
        "Lcom/google/android/gms/internal/lx$a$a;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile amr:[Lcom/google/android/gms/internal/lx$a$a;


# instance fields
.field public ams:Lcom/google/android/gms/internal/lx$a$a$a;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mb;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/lx$a$a;->nu()Lcom/google/android/gms/internal/lx$a$a;

    return-void
.end method

.method public static nt()[Lcom/google/android/gms/internal/lx$a$a;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/lx$a$a;->amr:[Lcom/google/android/gms/internal/lx$a$a;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/md;->amX:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/lx$a$a;->amr:[Lcom/google/android/gms/internal/lx$a$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/lx$a$a;

    sput-object v0, Lcom/google/android/gms/internal/lx$a$a;->amr:[Lcom/google/android/gms/internal/lx$a$a;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/lx$a$a;->amr:[Lcom/google/android/gms/internal/lx$a$a;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ma;)V
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/lx$a$a;->type:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ma;->p(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/lx$a$a;->ams:Lcom/google/android/gms/internal/lx$a$a$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/lx$a$a;->ams:Lcom/google/android/gms/internal/lx$a$a$a;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ma;->a(ILcom/google/android/gms/internal/mf;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/mb;->a(Lcom/google/android/gms/internal/ma;)V

    return-void
.end method

.method public final synthetic b(Lcom/google/android/gms/internal/lz;)Lcom/google/android/gms/internal/mf;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/lx$a$a;->s(Lcom/google/android/gms/internal/lz;)Lcom/google/android/gms/internal/lx$a$a;

    move-result-object v0

    return-object v0
.end method

.method protected final c()I
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/internal/mb;->c()I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/lx$a$a;->type:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ma;->r(II)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/lx$a$a;->ams:Lcom/google/android/gms/internal/lx$a$a$a;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/lx$a$a;->ams:Lcom/google/android/gms/internal/lx$a$a$a;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ma;->b(ILcom/google/android/gms/internal/mf;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/lx$a$a;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/lx$a$a;

    iget v2, p0, Lcom/google/android/gms/internal/lx$a$a;->type:I

    iget v3, p1, Lcom/google/android/gms/internal/lx$a$a;->type:I

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/lx$a$a;->ams:Lcom/google/android/gms/internal/lx$a$a$a;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/android/gms/internal/lx$a$a;->ams:Lcom/google/android/gms/internal/lx$a$a$a;

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/lx$a$a;->ams:Lcom/google/android/gms/internal/lx$a$a$a;

    iget-object v3, p1, Lcom/google/android/gms/internal/lx$a$a;->ams:Lcom/google/android/gms/internal/lx$a$a$a;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/lx$a$a$a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/lx$a$a;->amU:Ljava/util/List;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/internal/lx$a$a;->amU:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    iget-object v2, p1, Lcom/google/android/gms/internal/lx$a$a;->amU:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/google/android/gms/internal/lx$a$a;->amU:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/lx$a$a;->amU:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/internal/lx$a$a;->amU:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/android/gms/internal/lx$a$a;->type:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/lx$a$a;->ams:Lcom/google/android/gms/internal/lx$a$a$a;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/lx$a$a;->amU:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/lx$a$a;->amU:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/lx$a$a;->ams:Lcom/google/android/gms/internal/lx$a$a$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lx$a$a$a;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/lx$a$a;->amU:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public final nu()Lcom/google/android/gms/internal/lx$a$a;
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/lx$a$a;->type:I

    iput-object v1, p0, Lcom/google/android/gms/internal/lx$a$a;->ams:Lcom/google/android/gms/internal/lx$a$a$a;

    iput-object v1, p0, Lcom/google/android/gms/internal/lx$a$a;->amU:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/lx$a$a;->amY:I

    return-object p0
.end method

.method public final s(Lcom/google/android/gms/internal/lz;)Lcom/google/android/gms/internal/lx$a$a;
    .locals 1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nw()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/lx$a$a;->a(Lcom/google/android/gms/internal/lz;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v0, p0, Lcom/google/android/gms/internal/lx$a$a;->type:I

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/lx$a$a;->ams:Lcom/google/android/gms/internal/lx$a$a$a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/lx$a$a$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/lx$a$a$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/lx$a$a;->ams:Lcom/google/android/gms/internal/lx$a$a$a;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/lx$a$a;->ams:Lcom/google/android/gms/internal/lx$a$a$a;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/lz;->a(Lcom/google/android/gms/internal/mf;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

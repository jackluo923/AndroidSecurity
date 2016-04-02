.class public final Lcom/google/android/gms/drive/internal/af;
.super Lcom/google/android/gms/internal/mb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/mb",
        "<",
        "Lcom/google/android/gms/drive/internal/af;",
        ">;"
    }
.end annotation


# instance fields
.field public Jq:Ljava/lang/String;

.field public Jr:J

.field public Js:J

.field public versionCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mb;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/drive/internal/af;->gn()Lcom/google/android/gms/drive/internal/af;

    return-void
.end method

.method public static g([B)Lcom/google/android/gms/drive/internal/af;
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/internal/af;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/af;-><init>()V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/mf;->a(Lcom/google/android/gms/internal/mf;[B)Lcom/google/android/gms/internal/mf;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/internal/af;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ma;)V
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/drive/internal/af;->versionCode:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ma;->p(II)V

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/drive/internal/af;->Jq:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ma;->b(ILjava/lang/String;)V

    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/android/gms/drive/internal/af;->Jr:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ma;->c(IJ)V

    const/4 v0, 0x4

    iget-wide v1, p0, Lcom/google/android/gms/drive/internal/af;->Js:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ma;->c(IJ)V

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/mb;->a(Lcom/google/android/gms/internal/ma;)V

    return-void
.end method

.method public final synthetic b(Lcom/google/android/gms/internal/lz;)Lcom/google/android/gms/internal/mf;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/af;->m(Lcom/google/android/gms/internal/lz;)Lcom/google/android/gms/drive/internal/af;

    move-result-object v0

    return-object v0
.end method

.method protected final c()I
    .locals 4

    invoke-super {p0}, Lcom/google/android/gms/internal/mb;->c()I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/drive/internal/af;->versionCode:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ma;->r(II)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/af;->Jq:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ma;->h(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/af;->Jr:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ma;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/af;->Js:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ma;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/drive/internal/af;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/drive/internal/af;

    iget v2, p0, Lcom/google/android/gms/drive/internal/af;->versionCode:I

    iget v3, p1, Lcom/google/android/gms/drive/internal/af;->versionCode:I

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/drive/internal/af;->Jq:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/android/gms/drive/internal/af;->Jq:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/drive/internal/af;->Jq:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/drive/internal/af;->Jq:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/af;->Jr:J

    iget-wide v4, p1, Lcom/google/android/gms/drive/internal/af;->Jr:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/af;->Js:J

    iget-wide v4, p1, Lcom/google/android/gms/drive/internal/af;->Js:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/drive/internal/af;->amU:Ljava/util/List;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/af;->amU:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    iget-object v2, p1, Lcom/google/android/gms/drive/internal/af;->amU:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/google/android/gms/drive/internal/af;->amU:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/af;->amU:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/drive/internal/af;->amU:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final gn()Lcom/google/android/gms/drive/internal/af;
    .locals 3

    const-wide/16 v1, -0x1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/drive/internal/af;->versionCode:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/drive/internal/af;->Jq:Ljava/lang/String;

    iput-wide v1, p0, Lcom/google/android/gms/drive/internal/af;->Jr:J

    iput-wide v1, p0, Lcom/google/android/gms/drive/internal/af;->Js:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/drive/internal/af;->amU:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/drive/internal/af;->amY:I

    return-object p0
.end method

.method public final hashCode()I
    .locals 7

    const/16 v6, 0x20

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/android/gms/drive/internal/af;->versionCode:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/af;->Jq:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/af;->Jr:J

    iget-wide v4, p0, Lcom/google/android/gms/drive/internal/af;->Jr:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/af;->Js:J

    iget-wide v4, p0, Lcom/google/android/gms/drive/internal/af;->Js:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/af;->amU:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/af;->amU:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/af;->Jq:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/drive/internal/af;->amU:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public final m(Lcom/google/android/gms/internal/lz;)Lcom/google/android/gms/drive/internal/af;
    .locals 2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nw()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/drive/internal/af;->a(Lcom/google/android/gms/internal/lz;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/drive/internal/af;->versionCode:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/drive/internal/af;->Jq:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nC()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/drive/internal/af;->Jr:J

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nC()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/drive/internal/af;->Js:J

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

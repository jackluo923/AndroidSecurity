.class public Lcom/google/android/gms/internal/ed;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/ee;


# instance fields
.field private final W:I

.field private final g:Ljava/lang/String;

.field private final hM:[Ljava/lang/String;

.field private final hN:Ljava/lang/String;

.field private final hO:Ljava/lang/String;

.field private final hP:Ljava/lang/String;

.field private final hR:[Ljava/lang/String;

.field private final hS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ee;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ee;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ed;->CREATOR:Lcom/google/android/gms/internal/ee;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ed;->W:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ed;->g:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ed;->hR:[Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ed;->hS:[Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ed;->hM:[Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/ed;->hN:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/ed;->hO:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/internal/ed;->hP:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ed;->W:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ed;->g:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ed;->hR:[Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ed;->hS:[Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ed;->hM:[Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ed;->hN:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/ed;->hO:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/ed;->hP:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public F()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ed;->W:I

    return v0
.end method

.method public bu()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ed;->hR:[Ljava/lang/String;

    return-object v0
.end method

.method public bv()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ed;->hS:[Ljava/lang/String;

    return-object v0
.end method

.method public bw()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ed;->hM:[Ljava/lang/String;

    return-object v0
.end method

.method public bx()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ed;->hN:Ljava/lang/String;

    return-object v0
.end method

.method public by()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ed;->hO:Ljava/lang/String;

    return-object v0
.end method

.method public bz()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ed;->hP:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/internal/ed;

    if-nez v1, :cond_1

    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ed;

    .end local p1    # "obj":Ljava/lang/Object;
    iget v1, p0, Lcom/google/android/gms/internal/ed;->W:I

    iget v2, p1, Lcom/google/android/gms/internal/ed;->W:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ed;->g:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/ed;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ab;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ed;->hR:[Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/ed;->hR:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ab;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ed;->hS:[Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/ed;->hS:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ab;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ed;->hM:[Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/ed;->hM:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ab;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ed;->hN:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/ed;->hN:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ab;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ed;->hO:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/ed;->hO:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ab;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ed;->hP:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/ed;->hP:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ab;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ed;->g:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/ed;->W:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/ed;->g:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/ed;->hR:[Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/ed;->hS:[Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/ed;->hM:[Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/ed;->hN:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/ed;->hO:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/ed;->hP:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ab;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/internal/ab;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/ab$a;

    move-result-object v0

    const-string v1, "versionCode"

    iget v2, p0, Lcom/google/android/gms/internal/ed;->W:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ab$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ab$a;

    move-result-object v0

    const-string v1, "accountName"

    iget-object v2, p0, Lcom/google/android/gms/internal/ed;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ab$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ab$a;

    move-result-object v0

    const-string v1, "requestedScopes"

    iget-object v2, p0, Lcom/google/android/gms/internal/ed;->hR:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ab$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ab$a;

    move-result-object v0

    const-string v1, "visibleActivities"

    iget-object v2, p0, Lcom/google/android/gms/internal/ed;->hS:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ab$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ab$a;

    move-result-object v0

    const-string v1, "requiredFeatures"

    iget-object v2, p0, Lcom/google/android/gms/internal/ed;->hM:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ab$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ab$a;

    move-result-object v0

    const-string v1, "packageNameForAuth"

    iget-object v2, p0, Lcom/google/android/gms/internal/ed;->hN:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ab$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ab$a;

    move-result-object v0

    const-string v1, "callingPackageName"

    iget-object v2, p0, Lcom/google/android/gms/internal/ed;->hO:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ab$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ab$a;

    move-result-object v0

    const-string v1, "applicationName"

    iget-object v2, p0, Lcom/google/android/gms/internal/ed;->hP:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ab$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ab$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ab$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ee;->a(Lcom/google/android/gms/internal/ed;Landroid/os/Parcel;I)V

    return-void
.end method

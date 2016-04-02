.class public final Lcom/google/android/gms/internal/dt;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/du;


# instance fields
.field public final applicationInfo:Landroid/content/pm/ApplicationInfo;

.field public final kL:Ljava/lang/String;

.field public final kO:Lcom/google/android/gms/internal/ew;

.field public final kR:Lcom/google/android/gms/internal/am;

.field public final pU:Landroid/os/Bundle;

.field public final pV:Lcom/google/android/gms/internal/aj;

.field public final pW:Landroid/content/pm/PackageInfo;

.field public final pX:Ljava/lang/String;

.field public final pY:Ljava/lang/String;

.field public final pZ:Ljava/lang/String;

.field public final qa:Landroid/os/Bundle;

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/du;

    invoke-direct {v0}, Lcom/google/android/gms/internal/du;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/dt;->CREATOR:Lcom/google/android/gms/internal/du;

    return-void
.end method

.method constructor <init>(ILandroid/os/Bundle;Lcom/google/android/gms/internal/aj;Lcom/google/android/gms/internal/am;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ew;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/dt;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/dt;->pU:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/google/android/gms/internal/dt;->pV:Lcom/google/android/gms/internal/aj;

    iput-object p4, p0, Lcom/google/android/gms/internal/dt;->kR:Lcom/google/android/gms/internal/am;

    iput-object p5, p0, Lcom/google/android/gms/internal/dt;->kL:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/dt;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p7, p0, Lcom/google/android/gms/internal/dt;->pW:Landroid/content/pm/PackageInfo;

    iput-object p8, p0, Lcom/google/android/gms/internal/dt;->pX:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/internal/dt;->pY:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/internal/dt;->pZ:Ljava/lang/String;

    iput-object p11, p0, Lcom/google/android/gms/internal/dt;->kO:Lcom/google/android/gms/internal/ew;

    iput-object p12, p0, Lcom/google/android/gms/internal/dt;->qa:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;Lcom/google/android/gms/internal/aj;Lcom/google/android/gms/internal/am;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ew;Landroid/os/Bundle;)V
    .locals 13

    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/internal/dt;-><init>(ILandroid/os/Bundle;Lcom/google/android/gms/internal/aj;Lcom/google/android/gms/internal/am;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ew;Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/dt$a;Ljava/lang/String;)V
    .locals 12

    iget-object v1, p1, Lcom/google/android/gms/internal/dt$a;->pU:Landroid/os/Bundle;

    iget-object v2, p1, Lcom/google/android/gms/internal/dt$a;->pV:Lcom/google/android/gms/internal/aj;

    iget-object v3, p1, Lcom/google/android/gms/internal/dt$a;->kR:Lcom/google/android/gms/internal/am;

    iget-object v4, p1, Lcom/google/android/gms/internal/dt$a;->kL:Ljava/lang/String;

    iget-object v5, p1, Lcom/google/android/gms/internal/dt$a;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, p1, Lcom/google/android/gms/internal/dt$a;->pW:Landroid/content/pm/PackageInfo;

    iget-object v8, p1, Lcom/google/android/gms/internal/dt$a;->pY:Ljava/lang/String;

    iget-object v9, p1, Lcom/google/android/gms/internal/dt$a;->pZ:Ljava/lang/String;

    iget-object v10, p1, Lcom/google/android/gms/internal/dt$a;->kO:Lcom/google/android/gms/internal/ew;

    iget-object v11, p1, Lcom/google/android/gms/internal/dt$a;->qa:Landroid/os/Bundle;

    move-object v0, p0

    move-object v7, p2

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/dt;-><init>(Landroid/os/Bundle;Lcom/google/android/gms/internal/aj;Lcom/google/android/gms/internal/am;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ew;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/du;->a(Lcom/google/android/gms/internal/dt;Landroid/os/Parcel;I)V

    return-void
.end method

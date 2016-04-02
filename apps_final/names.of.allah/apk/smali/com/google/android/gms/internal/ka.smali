.class public Lcom/google/android/gms/internal/ka;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final VG:Lcom/google/android/gms/internal/jk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/jk",
            "<",
            "Lcom/google/android/gms/internal/jf;",
            ">;"
        }
    .end annotation
.end field

.field private final YQ:Lcom/google/android/gms/internal/kb;

.field private final YR:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/ka;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ka;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/jk;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/jk",
            "<",
            "Lcom/google/android/gms/internal/jf;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ka;->VG:Lcom/google/android/gms/internal/jk;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ka;->YR:Ljava/util/Locale;

    new-instance v0, Lcom/google/android/gms/internal/kb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ka;->YR:Ljava/util/Locale;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/kb;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ka;->YQ:Lcom/google/android/gms/internal/kb;

    return-void
.end method

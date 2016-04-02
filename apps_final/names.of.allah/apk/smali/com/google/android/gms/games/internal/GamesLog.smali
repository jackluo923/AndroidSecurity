.class public final Lcom/google/android/gms/games/internal/GamesLog;
.super Ljava/lang/Object;


# static fields
.field private static final OS:Lcom/google/android/gms/internal/hg;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/hg;

    const-string v1, "Games"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/hg;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/games/internal/GamesLog;->OS:Lcom/google/android/gms/internal/hg;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/games/internal/GamesLog;->OS:Lcom/google/android/gms/internal/hg;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/hg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/games/internal/GamesLog;->OS:Lcom/google/android/gms/internal/hg;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/hg;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/games/internal/GamesLog;->OS:Lcom/google/android/gms/internal/hg;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/hg;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static j(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/games/internal/GamesLog;->OS:Lcom/google/android/gms/internal/hg;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/hg;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static k(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/games/internal/GamesLog;->OS:Lcom/google/android/gms/internal/hg;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/hg;->k(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

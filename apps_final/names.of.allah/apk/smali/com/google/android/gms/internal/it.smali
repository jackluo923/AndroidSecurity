.class public Lcom/google/android/gms/internal/it;
.super Ljava/lang/Object;


# static fields
.field public static final Kt:Lcom/google/android/gms/internal/it$a;

.field public static final Ku:Lcom/google/android/gms/internal/it$b;

.field public static final Kv:Lcom/google/android/gms/internal/it$d;

.field public static final Kw:Lcom/google/android/gms/internal/it$c;

.field public static final Kx:Lcom/google/android/gms/internal/it$e;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const v3, 0x3e8fa0

    new-instance v0, Lcom/google/android/gms/internal/it$a;

    const-string v1, "created"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/it$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/it;->Kt:Lcom/google/android/gms/internal/it$a;

    new-instance v0, Lcom/google/android/gms/internal/it$b;

    const-string v1, "lastOpenedTime"

    const v2, 0x419ce0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/it$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/it;->Ku:Lcom/google/android/gms/internal/it$b;

    new-instance v0, Lcom/google/android/gms/internal/it$d;

    const-string v1, "modified"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/it$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/it;->Kv:Lcom/google/android/gms/internal/it$d;

    new-instance v0, Lcom/google/android/gms/internal/it$c;

    const-string v1, "modifiedByMe"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/it$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/it;->Kw:Lcom/google/android/gms/internal/it$c;

    new-instance v0, Lcom/google/android/gms/internal/it$e;

    const-string v1, "sharedWithMe"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/it$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/it;->Kx:Lcom/google/android/gms/internal/it$e;

    return-void
.end method

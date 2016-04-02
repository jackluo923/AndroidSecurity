.class public Lcom/google/android/gms/plus/PlusClient$Builder;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final abv:Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;

.field private final abw:Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

.field private final abx:Lcom/google/android/gms/plus/internal/i;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->abv:Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;

    iput-object p3, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->abw:Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

    new-instance v0, Lcom/google/android/gms/plus/internal/i;

    iget-object v1, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/plus/internal/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->abx:Lcom/google/android/gms/plus/internal/i;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/plus/PlusClient;
    .locals 6

    new-instance v0, Lcom/google/android/gms/plus/PlusClient;

    new-instance v1, Lcom/google/android/gms/plus/internal/e;

    iget-object v2, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->abv:Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;

    iget-object v4, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->abw:Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

    iget-object v5, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->abx:Lcom/google/android/gms/plus/internal/i;

    invoke-virtual {v5}, Lcom/google/android/gms/plus/internal/i;->ke()Lcom/google/android/gms/plus/internal/h;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/plus/internal/e;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;Lcom/google/android/gms/plus/internal/h;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/plus/PlusClient;-><init>(Lcom/google/android/gms/plus/internal/e;)V

    return-object v0
.end method

.method public clearScopes()Lcom/google/android/gms/plus/PlusClient$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->abx:Lcom/google/android/gms/plus/internal/i;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/i;->kd()Lcom/google/android/gms/plus/internal/i;

    return-object p0
.end method

.method public setAccountName(Ljava/lang/String;)Lcom/google/android/gms/plus/PlusClient$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->abx:Lcom/google/android/gms/plus/internal/i;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/plus/internal/i;->bz(Ljava/lang/String;)Lcom/google/android/gms/plus/internal/i;

    return-object p0
.end method

.method public varargs setActions([Ljava/lang/String;)Lcom/google/android/gms/plus/PlusClient$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->abx:Lcom/google/android/gms/plus/internal/i;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/plus/internal/i;->f([Ljava/lang/String;)Lcom/google/android/gms/plus/internal/i;

    return-object p0
.end method

.method public varargs setScopes([Ljava/lang/String;)Lcom/google/android/gms/plus/PlusClient$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->abx:Lcom/google/android/gms/plus/internal/i;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/plus/internal/i;->e([Ljava/lang/String;)Lcom/google/android/gms/plus/internal/i;

    return-object p0
.end method

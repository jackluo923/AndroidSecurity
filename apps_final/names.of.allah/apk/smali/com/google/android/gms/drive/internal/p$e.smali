.class Lcom/google/android/gms/drive/internal/p$e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/drive/DriveApi$MetadataBufferResult;


# instance fields
.field private final IL:Lcom/google/android/gms/drive/MetadataBuffer;

.field private final IM:Z

.field private final yw:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/MetadataBuffer;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/p$e;->yw:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/p$e;->IL:Lcom/google/android/gms/drive/MetadataBuffer;

    iput-boolean p3, p0, Lcom/google/android/gms/drive/internal/p$e;->IM:Z

    return-void
.end method


# virtual methods
.method public getMetadataBuffer()Lcom/google/android/gms/drive/MetadataBuffer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/p$e;->IL:Lcom/google/android/gms/drive/MetadataBuffer;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/p$e;->yw:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

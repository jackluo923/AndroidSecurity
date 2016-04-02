.class final Lcom/google/android/gms/cast/RemoteMediaPlayer$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;


# instance fields
.field private final Ax:Lorg/json/JSONObject;

.field private final yw:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/Status;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$c;->yw:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$c;->Ax:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final getCustomData()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$c;->Ax:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$c;->yw:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

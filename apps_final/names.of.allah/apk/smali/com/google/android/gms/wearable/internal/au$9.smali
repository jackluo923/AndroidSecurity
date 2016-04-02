.class Lcom/google/android/gms/wearable/internal/au$9;
.super Lcom/google/android/gms/wearable/internal/a;


# instance fields
.field final synthetic alV:Lcom/google/android/gms/wearable/NodeApi$NodeListener;

.field final synthetic ame:Lcom/google/android/gms/wearable/internal/au;

.field final synthetic amf:Lcom/google/android/gms/common/api/a$d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/au;Lcom/google/android/gms/wearable/NodeApi$NodeListener;Lcom/google/android/gms/common/api/a$d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/au$9;->ame:Lcom/google/android/gms/wearable/internal/au;

    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/au$9;->alV:Lcom/google/android/gms/wearable/NodeApi$NodeListener;

    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/au$9;->amf:Lcom/google/android/gms/common/api/a$d;

    invoke-direct {p0}, Lcom/google/android/gms/wearable/internal/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Status;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/au$9;->ame:Lcom/google/android/gms/wearable/internal/au;

    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/au;->d(Lcom/google/android/gms/wearable/internal/au;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/au$9;->ame:Lcom/google/android/gms/wearable/internal/au;

    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/au;->d(Lcom/google/android/gms/wearable/internal/au;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/au$9;->alV:Lcom/google/android/gms/wearable/NodeApi$NodeListener;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/au$9;->amf:Lcom/google/android/gms/common/api/a$d;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

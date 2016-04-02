.class Lcom/google/android/gms/wearable/internal/au$6;
.super Lcom/google/android/gms/wearable/internal/a;


# instance fields
.field final synthetic ame:Lcom/google/android/gms/wearable/internal/au;

.field final synthetic amf:Lcom/google/android/gms/common/api/a$d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/au;Lcom/google/android/gms/common/api/a$d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/au$6;->ame:Lcom/google/android/gms/wearable/internal/au;

    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/au$6;->amf:Lcom/google/android/gms/common/api/a$d;

    invoke-direct {p0}, Lcom/google/android/gms/wearable/internal/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/wearable/internal/t;)V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p1, Lcom/google/android/gms/wearable/internal/t;->alK:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/au$6;->amf:Lcom/google/android/gms/common/api/a$d;

    new-instance v2, Lcom/google/android/gms/wearable/internal/ah$a;

    new-instance v3, Lcom/google/android/gms/common/api/Status;

    iget v4, p1, Lcom/google/android/gms/wearable/internal/t;->statusCode:I

    invoke-direct {v3, v4}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/wearable/internal/ah$a;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/util/List;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V

    return-void
.end method

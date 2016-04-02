.class Lcom/google/android/gms/wearable/internal/au$2;
.super Lcom/google/android/gms/wearable/internal/a;


# instance fields
.field final synthetic ame:Lcom/google/android/gms/wearable/internal/au;

.field final synthetic amf:Lcom/google/android/gms/common/api/a$d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/au;Lcom/google/android/gms/common/api/a$d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/au$2;->ame:Lcom/google/android/gms/wearable/internal/au;

    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/au$2;->amf:Lcom/google/android/gms/common/api/a$d;

    invoke-direct {p0}, Lcom/google/android/gms/wearable/internal/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/wearable/internal/p;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/au$2;->amf:Lcom/google/android/gms/common/api/a$d;

    new-instance v1, Lcom/google/android/gms/wearable/internal/f$b;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    iget v3, p1, Lcom/google/android/gms/wearable/internal/p;->statusCode:I

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    iget v3, p1, Lcom/google/android/gms/wearable/internal/p;->alI:I

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/wearable/internal/f$b;-><init>(Lcom/google/android/gms/common/api/Status;I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V

    return-void
.end method

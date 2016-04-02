.class Lcom/google/android/gms/wearable/internal/ae$1;
.super Lcom/google/android/gms/wearable/internal/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/wearable/internal/d",
        "<",
        "Lcom/google/android/gms/wearable/MessageApi$SendMessageResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic alO:Ljava/lang/String;

.field final synthetic alP:Ljava/lang/String;

.field final synthetic alQ:Lcom/google/android/gms/wearable/internal/ae;

.field final synthetic yI:[B


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/ae;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/ae$1;->alQ:Lcom/google/android/gms/wearable/internal/ae;

    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/ae$1;->alO:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/ae$1;->alP:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/wearable/internal/ae$1;->yI:[B

    invoke-direct {p0}, Lcom/google/android/gms/wearable/internal/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/wearable/internal/au;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/ae$1;->a(Lcom/google/android/gms/wearable/internal/au;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/wearable/internal/au;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/ae$1;->alO:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/ae$1;->alP:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/ae$1;->yI:[B

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/wearable/internal/au;->a(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method protected au(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/wearable/MessageApi$SendMessageResult;
    .locals 2

    new-instance v0, Lcom/google/android/gms/wearable/internal/ae$a;

    const/4 v1, -0x1

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/wearable/internal/ae$a;-><init>(Lcom/google/android/gms/common/api/Status;I)V

    return-object v0
.end method

.method protected synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/ae$1;->au(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/wearable/MessageApi$SendMessageResult;

    move-result-object v0

    return-object v0
.end method

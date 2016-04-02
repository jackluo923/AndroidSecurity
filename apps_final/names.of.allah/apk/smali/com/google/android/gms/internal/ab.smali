.class public final Lcom/google/android/gms/internal/ab;
.super Ljava/lang/Object;


# instance fields
.field private final lm:Ljava/lang/String;

.field private final ln:Lorg/json/JSONObject;

.field private final lo:Ljava/lang/String;

.field private final lp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ew;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p2, Lcom/google/android/gms/internal/ew;->st:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ab;->lp:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ab;->ln:Lorg/json/JSONObject;

    iput-object p1, p0, Lcom/google/android/gms/internal/ab;->lo:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ab;->lm:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final am()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ab;->lm:Ljava/lang/String;

    return-object v0
.end method

.method public final an()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ab;->lp:Ljava/lang/String;

    return-object v0
.end method

.method public final ao()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ab;->ln:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final ap()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ab;->lo:Ljava/lang/String;

    return-object v0
.end method

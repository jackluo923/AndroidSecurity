.class Lcom/google/android/gms/analytics/s$e;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic ut:Lcom/google/android/gms/analytics/s;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/analytics/s;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/s$e;->ut:Lcom/google/android/gms/analytics/s;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/analytics/s;Lcom/google/android/gms/analytics/s$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/s$e;-><init>(Lcom/google/android/gms/analytics/s;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/s$e;->ut:Lcom/google/android/gms/analytics/s;

    invoke-static {v0}, Lcom/google/android/gms/analytics/s;->d(Lcom/google/android/gms/analytics/s;)V

    return-void
.end method

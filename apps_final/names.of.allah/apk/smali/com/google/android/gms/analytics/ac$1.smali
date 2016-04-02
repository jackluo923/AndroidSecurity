.class Lcom/google/android/gms/analytics/ac$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/i;


# instance fields
.field final synthetic wT:Lcom/google/android/gms/analytics/ac;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/ac;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/ac$1;->wT:Lcom/google/android/gms/analytics/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public currentTimeMillis()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

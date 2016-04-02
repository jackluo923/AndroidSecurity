.class public Lmobi/monaca/framework/util/BenchmarkTimer$Entry;
.super Ljava/lang/Object;
.source "BenchmarkTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/monaca/framework/util/BenchmarkTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Entry"
.end annotation


# instance fields
.field final label:Ljava/lang/String;

.field final time:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "time"    # J

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lmobi/monaca/framework/util/BenchmarkTimer$Entry;->label:Ljava/lang/String;

    .line 13
    iput-wide p2, p0, Lmobi/monaca/framework/util/BenchmarkTimer$Entry;->time:J

    .line 14
    return-void
.end method

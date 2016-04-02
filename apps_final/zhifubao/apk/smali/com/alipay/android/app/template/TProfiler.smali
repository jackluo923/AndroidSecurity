.class public Lcom/alipay/android/app/template/TProfiler;
.super Ljava/lang/Object;
.source "TProfiler.java"


# static fields
.field private static a:J

.field private static b:Ljava/lang/String;

.field private static c:Ljava/util/HashMap;

.field private static final d:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string/jumbo v0, "TProfiler"

    sput-object v0, Lcom/alipay/android/app/template/TProfiler;->b:Ljava/lang/String;

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/android/app/template/TProfiler;->c:Ljava/util/HashMap;

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/alipay/android/app/template/TProfiler;->d:Ljava/lang/StringBuilder;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 61
    sget-object v2, Lcom/alipay/android/app/template/TProfiler;->d:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 62
    sget-object v2, Lcom/alipay/android/app/template/TProfiler;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 63
    const-string/jumbo v3, ", delta: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 64
    sget-wide v3, Lcom/alipay/android/app/template/TProfiler;->a:J

    sub-long v3, v0, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 65
    sget-object v2, Lcom/alipay/android/app/template/TProfiler;->b:Ljava/lang/String;

    sget-object v2, Lcom/alipay/android/app/template/TProfiler;->d:Ljava/lang/StringBuilder;

    .line 66
    sput-wide v0, Lcom/alipay/android/app/template/TProfiler;->a:J

    .line 67
    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 75
    sget-wide v0, Lcom/alipay/android/app/template/TProfiler;->a:J

    .line 76
    if-eqz p0, :cond_0

    sget-object v0, Lcom/alipay/android/app/template/TProfiler;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    sget-object v0, Lcom/alipay/android/app/template/TProfiler;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 82
    sget-object v4, Lcom/alipay/android/app/template/TProfiler;->d:Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 83
    sget-object v4, Lcom/alipay/android/app/template/TProfiler;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 84
    const-string/jumbo v5, ", delta(start from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 85
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 86
    const-string/jumbo v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 87
    sub-long v0, v2, v0

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 88
    sget-object v0, Lcom/alipay/android/app/template/TProfiler;->b:Ljava/lang/String;

    sget-object v0, Lcom/alipay/android/app/template/TProfiler;->d:Ljava/lang/StringBuilder;

    .line 89
    sput-wide v2, Lcom/alipay/android/app/template/TProfiler;->a:J

    .line 90
    return-void

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "The relative tag: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not existed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static recycle()V
    .locals 2

    .prologue
    .line 31
    sget-object v0, Lcom/alipay/android/app/template/TProfiler;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 32
    sget-object v0, Lcom/alipay/android/app/template/TProfiler;->d:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/android/app/template/TProfiler;->a:J

    .line 34
    return-void
.end method

.method public static setLogTag(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "newTag is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_0
    sput-object p0, Lcom/alipay/android/app/template/TProfiler;->b:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public static tag()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alipay/android/app/template/TProfiler;->tag(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static tag(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 48
    sput-wide v0, Lcom/alipay/android/app/template/TProfiler;->a:J

    .line 49
    if-eqz p0, :cond_0

    .line 50
    sget-object v2, Lcom/alipay/android/app/template/TProfiler;->c:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_0
    return-void
.end method

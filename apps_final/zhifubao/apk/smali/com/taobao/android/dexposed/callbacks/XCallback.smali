.class public abstract Lcom/taobao/android/dexposed/callbacks/XCallback;
.super Ljava/lang/Object;
.source "XCallback.java"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final PRIORITY_DEFAULT:I = 0x32

.field public static final PRIORITY_HIGHEST:I = 0x2710

.field public static final PRIORITY_LOWEST:I = -0x2710


# instance fields
.field public final priority:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/16 v0, 0x32

    iput v0, p0, Lcom/taobao/android/dexposed/callbacks/XCallback;->priority:I

    .line 14
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/taobao/android/dexposed/callbacks/XCallback;->priority:I

    .line 17
    return-void
.end method

.method public static final callAll(Lcom/taobao/android/dexposed/callbacks/XCallback$Param;)V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/taobao/android/dexposed/callbacks/XCallback$Param;->callbacks:[Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "This object was not created for use with callAll"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/taobao/android/dexposed/callbacks/XCallback$Param;->callbacks:[Ljava/lang/Object;

    array-length v0, v0

    if-ge v1, v0, :cond_1

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/taobao/android/dexposed/callbacks/XCallback$Param;->callbacks:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, Lcom/taobao/android/dexposed/callbacks/XCallback;

    invoke-virtual {v0, p0}, Lcom/taobao/android/dexposed/callbacks/XCallback;->call(Lcom/taobao/android/dexposed/callbacks/XCallback$Param;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/taobao/android/dexposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 74
    :cond_1
    return-void
.end method


# virtual methods
.method protected call(Lcom/taobao/android/dexposed/callbacks/XCallback$Param;)V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public compareTo(Lcom/taobao/android/dexposed/callbacks/XCallback;)I
    .locals 2

    .prologue
    .line 80
    if-ne p0, p1, :cond_0

    .line 81
    const/4 v0, 0x0

    .line 90
    :goto_0
    return v0

    .line 84
    :cond_0
    iget v0, p1, Lcom/taobao/android/dexposed/callbacks/XCallback;->priority:I

    iget v1, p0, Lcom/taobao/android/dexposed/callbacks/XCallback;->priority:I

    if-eq v0, v1, :cond_1

    .line 85
    iget v0, p1, Lcom/taobao/android/dexposed/callbacks/XCallback;->priority:I

    iget v1, p0, Lcom/taobao/android/dexposed/callbacks/XCallback;->priority:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 87
    :cond_1
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 88
    const/4 v0, -0x1

    goto :goto_0

    .line 90
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 10
    check-cast p1, Lcom/taobao/android/dexposed/callbacks/XCallback;

    invoke-virtual {p0, p1}, Lcom/taobao/android/dexposed/callbacks/XCallback;->compareTo(Lcom/taobao/android/dexposed/callbacks/XCallback;)I

    move-result v0

    return v0
.end method

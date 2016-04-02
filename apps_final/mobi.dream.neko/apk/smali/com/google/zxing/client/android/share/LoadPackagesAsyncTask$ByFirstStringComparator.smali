.class Lcom/google/zxing/client/android/share/LoadPackagesAsyncTask$ByFirstStringComparator;
.super Ljava/lang/Object;
.source "LoadPackagesAsyncTask.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/client/android/share/LoadPackagesAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ByFirstStringComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<[",
        "Ljava/lang/String;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/zxing/client/android/share/LoadPackagesAsyncTask$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/zxing/client/android/share/LoadPackagesAsyncTask$1;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/google/zxing/client/android/share/LoadPackagesAsyncTask$ByFirstStringComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 100
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, [Ljava/lang/String;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/client/android/share/LoadPackagesAsyncTask$ByFirstStringComparator;->compare([Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare([Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "o1"    # [Ljava/lang/String;
    .param p2, "o2"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 103
    aget-object v0, p1, v1

    aget-object v1, p2, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

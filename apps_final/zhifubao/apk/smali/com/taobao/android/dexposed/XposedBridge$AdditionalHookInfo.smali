.class Lcom/taobao/android/dexposed/XposedBridge$AdditionalHookInfo;
.super Ljava/lang/Object;
.source "XposedBridge.java"


# instance fields
.field final callbacks:Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet;

.field final parameterTypes:[Ljava/lang/Class;

.field final returnType:Ljava/lang/Class;


# direct methods
.method private constructor <init>(Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet;[Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 398
    iput-object p1, p0, Lcom/taobao/android/dexposed/XposedBridge$AdditionalHookInfo;->callbacks:Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet;

    .line 399
    iput-object p2, p0, Lcom/taobao/android/dexposed/XposedBridge$AdditionalHookInfo;->parameterTypes:[Ljava/lang/Class;

    .line 400
    iput-object p3, p0, Lcom/taobao/android/dexposed/XposedBridge$AdditionalHookInfo;->returnType:Ljava/lang/Class;

    .line 401
    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet;[Ljava/lang/Class;Ljava/lang/Class;Lcom/taobao/android/dexposed/XposedBridge$1;)V
    .locals 0

    .prologue
    .line 392
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/android/dexposed/XposedBridge$AdditionalHookInfo;-><init>(Lcom/taobao/android/dexposed/XposedBridge$CopyOnWriteSortedSet;[Ljava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method

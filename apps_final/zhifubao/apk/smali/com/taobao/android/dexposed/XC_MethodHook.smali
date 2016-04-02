.class public abstract Lcom/taobao/android/dexposed/XC_MethodHook;
.super Lcom/taobao/android/dexposed/callbacks/XCallback;
.source "XC_MethodHook.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/taobao/android/dexposed/callbacks/XCallback;-><init>()V

    .line 11
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/taobao/android/dexposed/callbacks/XCallback;-><init>(I)V

    .line 14
    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;)V
    .locals 0

    .prologue
    .line 28
    return-void
.end method

.method protected beforeHookedMethod(Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;)V
    .locals 0

    .prologue
    .line 21
    return-void
.end method

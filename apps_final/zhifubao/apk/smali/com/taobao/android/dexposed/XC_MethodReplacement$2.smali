.class final Lcom/taobao/android/dexposed/XC_MethodReplacement$2;
.super Lcom/taobao/android/dexposed/XC_MethodReplacement;
.source "XC_MethodReplacement.java"


# instance fields
.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 48
    iput-object p2, p0, Lcom/taobao/android/dexposed/XC_MethodReplacement$2;->val$result:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/taobao/android/dexposed/XC_MethodReplacement;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected final replaceHookedMethod(Lcom/taobao/android/dexposed/XC_MethodHook$MethodHookParam;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/taobao/android/dexposed/XC_MethodReplacement$2;->val$result:Ljava/lang/Object;

    return-object v0
.end method

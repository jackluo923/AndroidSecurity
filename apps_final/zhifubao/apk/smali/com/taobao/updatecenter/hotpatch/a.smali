.class final Lcom/taobao/updatecenter/hotpatch/a;
.super Ljava/lang/Object;
.source "HotPatchManager.java"


# static fields
.field private static final a:Lcom/taobao/updatecenter/hotpatch/HotPatchManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lcom/taobao/updatecenter/hotpatch/HotPatchManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taobao/updatecenter/hotpatch/HotPatchManager;-><init>(B)V

    sput-object v0, Lcom/taobao/updatecenter/hotpatch/a;->a:Lcom/taobao/updatecenter/hotpatch/HotPatchManager;

    return-void
.end method

.method static synthetic a()Lcom/taobao/updatecenter/hotpatch/HotPatchManager;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/taobao/updatecenter/hotpatch/a;->a:Lcom/taobao/updatecenter/hotpatch/HotPatchManager;

    return-object v0
.end method

.class public Lcom/taobao/hotpatch/patch/PatchParam;
.super Ljava/lang/Object;
.source "PatchParam.java"


# instance fields
.field protected final callbacks:[Ljava/lang/Object;

.field public contentMap:Ljava/util/HashMap;

.field public context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/taobao/hotpatch/patch/ReadWriteSet;)V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-virtual {p1}, Lcom/taobao/hotpatch/patch/ReadWriteSet;->a()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/hotpatch/patch/PatchParam;->callbacks:[Ljava/lang/Object;

    .line 13
    return-void
.end method

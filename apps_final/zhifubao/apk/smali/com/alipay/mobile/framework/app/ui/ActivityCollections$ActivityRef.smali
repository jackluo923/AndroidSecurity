.class Lcom/alipay/mobile/framework/app/ui/ActivityCollections$ActivityRef;
.super Ljava/lang/ref/WeakReference;
.source "ActivityCollections.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference",
        "<",
        "Landroid/app/Activity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/framework/app/ui/ActivityCollections;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/framework/app/ui/ActivityCollections;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/alipay/mobile/framework/app/ui/ActivityCollections$ActivityRef;->this$0:Lcom/alipay/mobile/framework/app/ui/ActivityCollections;

    .line 114
    invoke-direct {p0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/framework/app/ui/ActivityCollections;Landroid/app/Activity;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/ref/ReferenceQueue",
            "<-",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 117
    iput-object p1, p0, Lcom/alipay/mobile/framework/app/ui/ActivityCollections$ActivityRef;->this$0:Lcom/alipay/mobile/framework/app/ui/ActivityCollections;

    .line 118
    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 119
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/ui/ActivityCollections$ActivityRef;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 124
    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

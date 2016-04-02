.class public Lcom/alipay/mobile/common/misc/ActivityFlow$ActivityItem;
.super Ljava/lang/Object;


# instance fields
.field protected actRef:Ljava/lang/ref/WeakReference;

.field protected key:Ljava/lang/String;

.field final synthetic this$0:Lcom/alipay/mobile/common/misc/ActivityFlow;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/misc/ActivityFlow;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/misc/ActivityFlow$ActivityItem;->this$0:Lcom/alipay/mobile/common/misc/ActivityFlow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/ActivityFlow$ActivityItem;->actRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/misc/ActivityFlow$ActivityItem;->key:Ljava/lang/String;

    return-object v0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/misc/ActivityFlow$ActivityItem;->actRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/misc/ActivityFlow$ActivityItem;->key:Ljava/lang/String;

    return-void
.end method

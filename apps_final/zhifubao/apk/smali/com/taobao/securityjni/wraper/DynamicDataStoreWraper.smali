.class public Lcom/taobao/securityjni/wraper/DynamicDataStoreWraper;
.super Ljava/lang/Object;


# instance fields
.field private DynamicDataStore:Lcom/taobao/securityjni/DynamicDataStore;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/taobao/securityjni/DynamicDataStore;

    invoke-direct {v0, p1}, Lcom/taobao/securityjni/DynamicDataStore;-><init>(Landroid/content/ContextWrapper;)V

    iput-object v0, p0, Lcom/taobao/securityjni/wraper/DynamicDataStoreWraper;->DynamicDataStore:Lcom/taobao/securityjni/DynamicDataStore;

    return-void
.end method


# virtual methods
.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/securityjni/wraper/DynamicDataStoreWraper;->DynamicDataStore:Lcom/taobao/securityjni/DynamicDataStore;

    invoke-virtual {v0, p1}, Lcom/taobao/securityjni/DynamicDataStore;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/taobao/securityjni/wraper/DynamicDataStoreWraper;->DynamicDataStore:Lcom/taobao/securityjni/DynamicDataStore;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/securityjni/DynamicDataStore;->putString(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

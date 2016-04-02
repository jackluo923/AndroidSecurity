.class Lcom/alipay/mobile/publicplatform/relation/NofollowInfoLoader$1;
.super Ljava/lang/Object;
.source "NofollowInfoLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/publicplatform/relation/NofollowInfoLoader;

.field private final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/publicplatform/relation/NofollowInfoLoader;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/publicplatform/relation/NofollowInfoLoader$1;->this$0:Lcom/alipay/mobile/publicplatform/relation/NofollowInfoLoader;

    iput-object p2, p0, Lcom/alipay/mobile/publicplatform/relation/NofollowInfoLoader$1;->val$userId:Ljava/lang/String;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/publicplatform/relation/NofollowInfoLoader$1;->this$0:Lcom/alipay/mobile/publicplatform/relation/NofollowInfoLoader;

    iget-object v1, p0, Lcom/alipay/mobile/publicplatform/relation/NofollowInfoLoader$1;->val$userId:Ljava/lang/String;

    # invokes: Lcom/alipay/mobile/publicplatform/relation/NofollowInfoLoader;->load(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/publicplatform/relation/NofollowInfoLoader;->access$0(Lcom/alipay/mobile/publicplatform/relation/NofollowInfoLoader;Ljava/lang/String;)V

    .line 59
    return-void
.end method

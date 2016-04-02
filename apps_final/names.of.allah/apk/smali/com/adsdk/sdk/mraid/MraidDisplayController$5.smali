.class Lcom/adsdk/sdk/mraid/MraidDisplayController$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/mraid/MraidDisplayController;

.field private final synthetic val$imageUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/mraid/MraidDisplayController;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$5;->this$0:Lcom/adsdk/sdk/mraid/MraidDisplayController;

    iput-object p2, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$5;->val$imageUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$5;->this$0:Lcom/adsdk/sdk/mraid/MraidDisplayController;

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$5;->val$imageUrl:Ljava/lang/String;

    # invokes: Lcom/adsdk/sdk/mraid/MraidDisplayController;->downloadImage(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->access$8(Lcom/adsdk/sdk/mraid/MraidDisplayController;Ljava/lang/String;)V

    return-void
.end method

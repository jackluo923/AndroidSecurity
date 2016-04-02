.class Lcom/adsdk/sdk/video/WebFrame$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/video/WebFrame;

.field private final synthetic val$localContext:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/video/WebFrame;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/video/WebFrame$1;->this$0:Lcom/adsdk/sdk/video/WebFrame;

    iput-object p2, p0, Lcom/adsdk/sdk/video/WebFrame$1;->val$localContext:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame$1;->val$localContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

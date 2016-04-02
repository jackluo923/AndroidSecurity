.class Lcom/adsdk/sdk/mraid/BaseInterstitialActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/mraid/BaseInterstitialActivity;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/mraid/BaseInterstitialActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/mraid/BaseInterstitialActivity$1;->this$0:Lcom/adsdk/sdk/mraid/BaseInterstitialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/BaseInterstitialActivity$1;->this$0:Lcom/adsdk/sdk/mraid/BaseInterstitialActivity;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/BaseInterstitialActivity;->finish()V

    return-void
.end method

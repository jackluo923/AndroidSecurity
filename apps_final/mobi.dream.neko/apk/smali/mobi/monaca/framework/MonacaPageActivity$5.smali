.class Lmobi/monaca/framework/MonacaPageActivity$5;
.super Ljava/lang/Object;
.source "MonacaPageActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/monaca/framework/MonacaPageActivity;->initMonaca()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/monaca/framework/MonacaPageActivity;


# direct methods
.method constructor <init>(Lmobi/monaca/framework/MonacaPageActivity;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lmobi/monaca/framework/MonacaPageActivity$5;->this$0:Lmobi/monaca/framework/MonacaPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .prologue
    .line 360
    :try_start_0
    iget-object v1, p0, Lmobi/monaca/framework/MonacaPageActivity$5;->this$0:Lmobi/monaca/framework/MonacaPageActivity;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Lmobi/monaca/framework/MonacaPageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    iget-object v2, p0, Lmobi/monaca/framework/MonacaPageActivity$5;->this$0:Lmobi/monaca/framework/MonacaPageActivity;

    # getter for: Lmobi/monaca/framework/MonacaPageActivity;->root:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lmobi/monaca/framework/MonacaPageActivity;->access$000(Lmobi/monaca/framework/MonacaPageActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    sub-int v0, v1, v2

    .line 361
    .local v0, "height":I
    iget-object v1, p0, Lmobi/monaca/framework/MonacaPageActivity$5;->this$0:Lmobi/monaca/framework/MonacaPageActivity;

    iget-object v1, v1, Lmobi/monaca/framework/MonacaPageActivity;->infoForJavaScript:Lorg/json/JSONObject;

    iget-object v2, p0, Lmobi/monaca/framework/MonacaPageActivity$5;->this$0:Lmobi/monaca/framework/MonacaPageActivity;

    sget v3, Lmobi/monaca/framework/psedo/R$string;->info_statusbar_height:I

    invoke-virtual {v2, v3}, Lmobi/monaca/framework/MonacaPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    .end local v0    # "height":I
    :goto_0
    return-void

    .line 362
    :catch_0
    move-exception v1

    goto :goto_0
.end method

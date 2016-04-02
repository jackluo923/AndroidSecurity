.class Lae/gov/mol/helper/CustomFragment$TempAsycProcess$1;
.super Ljava/lang/Object;
.source "CustomFragment.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/helper/CustomFragment$TempAsycProcess;->onPostExecute(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$nostra13$universalimageloader$core$assist$FailReason:[I


# instance fields
.field final synthetic this$1:Lae/gov/mol/helper/CustomFragment$TempAsycProcess;


# direct methods
.method static synthetic $SWITCH_TABLE$com$nostra13$universalimageloader$core$assist$FailReason()[I
    .locals 3

    .prologue
    .line 231
    sget-object v0, Lae/gov/mol/helper/CustomFragment$TempAsycProcess$1;->$SWITCH_TABLE$com$nostra13$universalimageloader$core$assist$FailReason:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/nostra13/universalimageloader/core/assist/FailReason;->values()[Lcom/nostra13/universalimageloader/core/assist/FailReason;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/FailReason;->IO_ERROR:Lcom/nostra13/universalimageloader/core/assist/FailReason;

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/assist/FailReason;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/FailReason;->OUT_OF_MEMORY:Lcom/nostra13/universalimageloader/core/assist/FailReason;

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/assist/FailReason;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/FailReason;->UNKNOWN:Lcom/nostra13/universalimageloader/core/assist/FailReason;

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/assist/FailReason;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lae/gov/mol/helper/CustomFragment$TempAsycProcess$1;->$SWITCH_TABLE$com$nostra13$universalimageloader$core$assist$FailReason:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method constructor <init>(Lae/gov/mol/helper/CustomFragment$TempAsycProcess;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/helper/CustomFragment$TempAsycProcess$1;->this$1:Lae/gov/mol/helper/CustomFragment$TempAsycProcess;

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled()V
    .locals 0

    .prologue
    .line 262
    return-void
.end method

.method public onLoadingComplete(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "loadedImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 255
    iget-object v1, p0, Lae/gov/mol/helper/CustomFragment$TempAsycProcess$1;->this$1:Lae/gov/mol/helper/CustomFragment$TempAsycProcess;

    # getter for: Lae/gov/mol/helper/CustomFragment$TempAsycProcess;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;
    invoke-static {v1}, Lae/gov/mol/helper/CustomFragment$TempAsycProcess;->access$2(Lae/gov/mol/helper/CustomFragment$TempAsycProcess;)Lae/gov/mol/helper/CustomFragmentActivity;

    move-result-object v1

    const v2, 0x7f040006

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 256
    .local v0, "anim":Landroid/view/animation/Animation;
    iget-object v1, p0, Lae/gov/mol/helper/CustomFragment$TempAsycProcess$1;->this$1:Lae/gov/mol/helper/CustomFragment$TempAsycProcess;

    # getter for: Lae/gov/mol/helper/CustomFragment$TempAsycProcess;->mImageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lae/gov/mol/helper/CustomFragment$TempAsycProcess;->access$3(Lae/gov/mol/helper/CustomFragment$TempAsycProcess;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 257
    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    .line 258
    return-void
.end method

.method public onLoadingFailed(Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 2
    .param p1, "failReason"    # Lcom/nostra13/universalimageloader/core/assist/FailReason;

    .prologue
    .line 239
    invoke-static {}, Lae/gov/mol/helper/CustomFragment$TempAsycProcess$1;->$SWITCH_TABLE$com$nostra13$universalimageloader$core$assist$FailReason()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/assist/FailReason;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 251
    :goto_0
    return-void

    .line 241
    :pswitch_0
    iget-object v0, p0, Lae/gov/mol/helper/CustomFragment$TempAsycProcess$1;->this$1:Lae/gov/mol/helper/CustomFragment$TempAsycProcess;

    # getter for: Lae/gov/mol/helper/CustomFragment$TempAsycProcess;->this$0:Lae/gov/mol/helper/CustomFragment;
    invoke-static {v0}, Lae/gov/mol/helper/CustomFragment$TempAsycProcess;->access$4(Lae/gov/mol/helper/CustomFragment$TempAsycProcess;)Lae/gov/mol/helper/CustomFragment;

    move-result-object v0

    const-string v1, "Input/Output error"

    iput-object v1, v0, Lae/gov/mol/helper/CustomFragment;->message:Ljava/lang/String;

    goto :goto_0

    .line 244
    :pswitch_1
    iget-object v0, p0, Lae/gov/mol/helper/CustomFragment$TempAsycProcess$1;->this$1:Lae/gov/mol/helper/CustomFragment$TempAsycProcess;

    # getter for: Lae/gov/mol/helper/CustomFragment$TempAsycProcess;->this$0:Lae/gov/mol/helper/CustomFragment;
    invoke-static {v0}, Lae/gov/mol/helper/CustomFragment$TempAsycProcess;->access$4(Lae/gov/mol/helper/CustomFragment$TempAsycProcess;)Lae/gov/mol/helper/CustomFragment;

    move-result-object v0

    const-string v1, "Out Of Memory error"

    iput-object v1, v0, Lae/gov/mol/helper/CustomFragment;->message:Ljava/lang/String;

    goto :goto_0

    .line 247
    :pswitch_2
    iget-object v0, p0, Lae/gov/mol/helper/CustomFragment$TempAsycProcess$1;->this$1:Lae/gov/mol/helper/CustomFragment$TempAsycProcess;

    # getter for: Lae/gov/mol/helper/CustomFragment$TempAsycProcess;->this$0:Lae/gov/mol/helper/CustomFragment;
    invoke-static {v0}, Lae/gov/mol/helper/CustomFragment$TempAsycProcess;->access$4(Lae/gov/mol/helper/CustomFragment$TempAsycProcess;)Lae/gov/mol/helper/CustomFragment;

    move-result-object v0

    const-string v1, "Unknown error"

    iput-object v1, v0, Lae/gov/mol/helper/CustomFragment;->message:Ljava/lang/String;

    goto :goto_0

    .line 239
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onLoadingStarted()V
    .locals 0

    .prologue
    .line 235
    return-void
.end method

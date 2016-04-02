.class Lcom/gov/mol/imageloader/MyImageLoader$1;
.super Landroid/support/v4/util/LruCache;
.source "MyImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gov/mol/imageloader/MyImageLoader;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gov/mol/imageloader/MyImageLoader;


# direct methods
.method constructor <init>(Lcom/gov/mol/imageloader/MyImageLoader;I)V
    .locals 0
    .param p2, "$anonymous0"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gov/mol/imageloader/MyImageLoader$1;->this$0:Lcom/gov/mol/imageloader/MyImageLoader;

    .line 53
    invoke-direct {p0, p2}, Landroid/support/v4/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/gov/mol/imageloader/MyImageLoader$1;->sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method protected sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/gov/mol/imageloader/MyImageLoader$1;->this$0:Lcom/gov/mol/imageloader/MyImageLoader;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/gov/mol/imageloader/MyImageLoader;->access$2(Lcom/gov/mol/imageloader/MyImageLoader;I)V

    .line 58
    iget-object v0, p0, Lcom/gov/mol/imageloader/MyImageLoader$1;->this$0:Lcom/gov/mol/imageloader/MyImageLoader;

    # getter for: Lcom/gov/mol/imageloader/MyImageLoader;->byteCounts:I
    invoke-static {v0}, Lcom/gov/mol/imageloader/MyImageLoader;->access$3(Lcom/gov/mol/imageloader/MyImageLoader;)I

    move-result v0

    return v0
.end method

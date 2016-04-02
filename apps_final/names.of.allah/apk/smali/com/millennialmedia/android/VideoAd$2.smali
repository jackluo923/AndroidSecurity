.class Lcom/millennialmedia/android/VideoAd$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/VideoAd;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/VideoAd;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/android/VideoAd$2;->this$0:Lcom/millennialmedia/android/VideoAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd$2;->this$0:Lcom/millennialmedia/android/VideoAd;

    invoke-virtual {v0}, Lcom/millennialmedia/android/VideoAd;->getId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd$2;->this$0:Lcom/millennialmedia/android/VideoAd;

    invoke-virtual {v0}, Lcom/millennialmedia/android/VideoAd;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

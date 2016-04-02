.class final Lcom/appyet/c/m;
.super Lcom/appyet/f/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appyet/f/a",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field a:Landroid/webkit/WebView;

.field b:Ljava/lang/String;

.field c:Landroid/view/View;

.field final synthetic d:Lcom/appyet/c/k;


# direct methods
.method public constructor <init>(Lcom/appyet/c/k;Landroid/webkit/WebView;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-direct {p0}, Lcom/appyet/f/a;-><init>()V

    iput-object p2, p0, Lcom/appyet/c/m;->a:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/appyet/c/m;->c:Landroid/view/View;

    return-void
.end method

.method private varargs f()Ljava/lang/Void;
    .locals 11

    :try_start_0
    iget-object v0, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v0}, Lcom/appyet/c/k;->b(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getArticleStatus()Lcom/appyet/data/FeedItem$ArticleStatusEnum;

    move-result-object v0

    sget-object v1, Lcom/appyet/data/FeedItem$ArticleStatusEnum;->DownloadCompleted:Lcom/appyet/data/FeedItem$ArticleStatusEnum;

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v0}, Lcom/appyet/c/k;->b(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getArticle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v0}, Lcom/appyet/c/k;->c(Lcom/appyet/c/k;)Lcom/appyet/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v1}, Lcom/appyet/c/k;->b(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/manager/d;->a(Lcom/appyet/data/FeedItem;)Lcom/appyet/data/FeedItem;

    :cond_0
    iget-object v0, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v0}, Lcom/appyet/c/k;->b(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getArticle()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string v0, "<?xml version=\"1.0\" encoding=\"UTF-8\"?><!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML Basic 1.1//EN\"\"http://www.w3.org/TR/xhtml-basic/xhtml-basic11.dtd\"><html><head><title></title>"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v1, v3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, user-scalable=no\" />"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<link rel=\"stylesheet\" type=\"text/css\" href=\"file:///android_asset/html/fonts.css\"></link>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v1}, Lcom/appyet/c/k;->c(Lcom/appyet/c/k;)Lcom/appyet/context/ApplicationContext;

    move-result-object v1

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->m:Lcom/appyet/manager/bw;

    iget-object v1, v1, Lcom/appyet/manager/bw;->a:Lcom/appyet/metadata/MetadataTheme;

    iget-object v1, v1, Lcom/appyet/metadata/MetadataTheme;->PrimaryBgColor:Ljava/lang/String;

    const-string v3, "DARK"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<link rel=\"stylesheet\" type=\"text/css\" href=\"file:///android_asset/html/article_dark.css\"></link>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v1}, Lcom/appyet/c/k;->c(Lcom/appyet/c/k;)Lcom/appyet/context/ApplicationContext;

    move-result-object v1

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v1}, Lcom/appyet/manager/bp;->K()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_2
    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v1}, Lcom/appyet/c/k;->d(Lcom/appyet/c/k;)Lcom/appyet/metadata/MetadataModuleFeed;

    move-result-object v1

    iget-boolean v1, v1, Lcom/appyet/metadata/MetadataModuleFeed;->IsTextRTL:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<style>body {direction: rtl; text-align: right;unicode-bidi: bidi-override;}</style>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-nez v2, :cond_3

    const-string v2, ""

    :cond_3
    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v1}, Lcom/appyet/c/k;->d(Lcom/appyet/c/k;)Lcom/appyet/metadata/MetadataModuleFeed;

    move-result-object v1

    iget-boolean v1, v1, Lcom/appyet/metadata/MetadataModuleFeed;->IsIncludeJQuery:Z

    if-nez v1, :cond_4

    const-string v1, "www.youtube.com/embed/"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "www.youtube.com/v/"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v1}, Lcom/appyet/c/k;->b(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getEnclosureLink()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v1}, Lcom/appyet/c/k;->b(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getThumbnailMD5()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v1}, Lcom/appyet/c/k;->c(Lcom/appyet/c/k;)Lcom/appyet/context/ApplicationContext;

    move-result-object v1

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->j:Lcom/appyet/manager/al;

    iget-object v3, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v3}, Lcom/appyet/c/k;->b(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appyet/data/FeedItem;->getThumbnailMD5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/appyet/manager/al;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<script type=\"text/javascript\" src=\"file:///android_asset/html/jquery-1.8.3.min.js\"></script>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    const-string v1, "www.youtube.com/embed/"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "www.youtube.com/v/"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<script type=\"text/javascript\" src=\"file:///android_asset/html/webview.js\"></script>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7
    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v1}, Lcom/appyet/c/k;->b(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getEnclosureLink()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v1}, Lcom/appyet/c/k;->b(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getThumbnailMD5()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v1}, Lcom/appyet/c/k;->c(Lcom/appyet/c/k;)Lcom/appyet/context/ApplicationContext;

    move-result-object v1

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->j:Lcom/appyet/manager/al;

    iget-object v3, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v3}, Lcom/appyet/c/k;->b(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appyet/data/FeedItem;->getThumbnailMD5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/appyet/manager/al;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<script type=\"text/javascript\">$(document).ready(function() {$(\'img[src$=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v1}, Lcom/appyet/c/k;->b(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getThumbnail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"]\').css(\"display\", \"none\");});</script>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_8
    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v1}, Lcom/appyet/c/k;->d(Lcom/appyet/c/k;)Lcom/appyet/metadata/MetadataModuleFeed;

    move-result-object v1

    iget-object v1, v1, Lcom/appyet/metadata/MetadataModuleFeed;->ExtraHTMLHeader:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v1}, Lcom/appyet/c/k;->d(Lcom/appyet/c/k;)Lcom/appyet/metadata/MetadataModuleFeed;

    move-result-object v1

    iget-object v1, v1, Lcom/appyet/metadata/MetadataModuleFeed;->ExtraHTMLHeader:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v1}, Lcom/appyet/c/k;->d(Lcom/appyet/c/k;)Lcom/appyet/metadata/MetadataModuleFeed;

    move-result-object v1

    iget-object v1, v1, Lcom/appyet/metadata/MetadataModuleFeed;->ExtraHTMLHeader:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</head>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v0}, Lcom/appyet/c/k;->b(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getIsRead()Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "appyet_title appyet_title_read"

    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "<body><div class=\"appyet_frame\"><div class=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v1}, Lcom/appyet/c/k;->b(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</div><p class=\"appyet_subtitle\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v1}, Lcom/appyet/c/k;->c(Lcom/appyet/c/k;)Lcom/appyet/context/ApplicationContext;

    move-result-object v1

    invoke-static {v1}, Lcom/appyet/manager/ar;->b(Lcom/appyet/context/ApplicationContext;)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ar"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<span class=\"time\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v1}, Lcom/appyet/c/k;->c(Lcom/appyet/c/k;)Lcom/appyet/context/ApplicationContext;

    move-result-object v1

    iget-object v3, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v3}, Lcom/appyet/c/k;->b(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appyet/data/FeedItem;->getPubDate()Ljava/util/Date;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/appyet/d/a;->b(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</span>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v1}, Lcom/appyet/c/k;->b(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getAuthor()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v1}, Lcom/appyet/c/k;->b(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getAuthor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / <span class=\"author\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v1}, Lcom/appyet/c/k;->b(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getAuthor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</span>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_a
    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v1}, Lcom/appyet/c/k;->e(Lcom/appyet/c/k;)Lcom/appyet/data/Feed;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v1}, Lcom/appyet/c/k;->e(Lcom/appyet/c/k;)Lcom/appyet/data/Feed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/data/Feed;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v1}, Lcom/appyet/c/k;->e(Lcom/appyet/c/k;)Lcom/appyet/data/Feed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/data/Feed;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_b

    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v1}, Lcom/appyet/c/k;->d(Lcom/appyet/c/k;)Lcom/appyet/metadata/MetadataModuleFeed;

    move-result-object v1

    iget-boolean v1, v1, Lcom/appyet/metadata/MetadataModuleFeed;->IsShowPublisher:Z

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / <span class=\"publisher\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v1}, Lcom/appyet/c/k;->e(Lcom/appyet/c/k;)Lcom/appyet/data/Feed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/data/Feed;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</span>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_b
    :goto_4
    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v1}, Lcom/appyet/c/k;->b(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getEnclosureLink()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    new-instance v1, Ljava/text/DecimalFormat;

    const-string v3, "#.#"

    invoke-direct {v1, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v3}, Lcom/appyet/c/k;->b(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appyet/data/FeedItem;->getEnclosureLength()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_1f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    invoke-virtual {v1, v7, v8}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    const v4, 0x7f08008b

    invoke-virtual {v3, v4}, Lcom/appyet/c/k;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    :goto_5
    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v1}, Lcom/appyet/c/k;->b(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getEnclosureType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v1}, Lcom/appyet/c/k;->b(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getEnclosureType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v4, "audio"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v1}, Lcom/appyet/c/k;->c(Lcom/appyet/c/k;)Lcom/appyet/context/ApplicationContext;

    move-result-object v1

    const v4, 0x7f08005c

    invoke-virtual {v1, v4}, Lcom/appyet/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "<br>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v1}, Lcom/appyet/c/k;->b(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getEnclosureLength()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_c
    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v1}, Lcom/appyet/c/k;->b(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getEnclosureDuration()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v1}, Lcom/appyet/c/k;->b(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getEnclosureDuration()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v3, v1

    invoke-static {v3, v4}, Lcom/appyet/d/a;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</p>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v1}, Lcom/appyet/c/k;->b(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getEnclosureLink()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    const-string v1, "file:///android_asset/html/podcast_background.png"

    iget-object v3, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v3}, Lcom/appyet/c/k;->b(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appyet/data/FeedItem;->getThumbnailMD5()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v3}, Lcom/appyet/c/k;->c(Lcom/appyet/c/k;)Lcom/appyet/context/ApplicationContext;

    move-result-object v3

    iget-object v3, v3, Lcom/appyet/context/ApplicationContext;->j:Lcom/appyet/manager/al;

    iget-object v4, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v4}, Lcom/appyet/c/k;->b(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/appyet/data/FeedItem;->getThumbnailMD5()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/appyet/manager/al;->g(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v3}, Lcom/appyet/c/k;->c(Lcom/appyet/c/k;)Lcom/appyet/context/ApplicationContext;

    move-result-object v3

    iget-object v3, v3, Lcom/appyet/context/ApplicationContext;->j:Lcom/appyet/manager/al;

    iget-object v4, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v4}, Lcom/appyet/c/k;->b(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/appyet/data/FeedItem;->getThumbnailMD5()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/appyet/manager/al;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "<p><a href=\'appyet.podcast://none\'><img class=\'appyet_podcastimg\' src=\'file:///android_asset/html/video.png\' style=\"background:url(\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')\"/></a></p>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_f
    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v1}, Lcom/appyet/c/k;->e(Lcom/appyet/c/k;)Lcom/appyet/data/Feed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/data/Feed;->getLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "://gdata.youtube.com/feeds/base/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v1}, Lcom/appyet/c/k;->e(Lcom/appyet/c/k;)Lcom/appyet/data/Feed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/data/Feed;->getLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "://www.youtube.com/rss/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_24

    :cond_10
    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v1}, Lcom/appyet/c/k;->b(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getLink()Ljava/lang/String;

    move-result-object v1

    const-string v3, "(?:videos\\/|v=)([\\w-]+)"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result v3

    if-eqz v3, :cond_23

    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<p><a href=\'appyet.youtube:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'><img class=\'appyet_youtubeimg\' src=\'file:///android_asset/html/youtube_btn_play.png\' style=\"background:url(\'http://i.ytimg.com/vi/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/0.jpg\')\"/></a></p>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v1

    :try_start_2
    const-string v0, ";\"><span>(.*?)</span>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result v3

    if-eqz v3, :cond_22

    const/4 v3, 0x1

    :try_start_3
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<p>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "</p>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v0

    :goto_7
    :try_start_4
    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v1}, Lcom/appyet/c/k;->d(Lcom/appyet/c/k;)Lcom/appyet/metadata/MetadataModuleFeed;

    move-result-object v1

    iget-boolean v1, v1, Lcom/appyet/metadata/MetadataModuleFeed;->IsShowViewWebsite:Z

    if-eqz v1, :cond_11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<p><a class=\"appyet_visitwebsite\" href=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v1}, Lcom/appyet/c/k;->b(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    const v2, 0x7f0800b9

    invoke-virtual {v1, v2}, Lcom/appyet/c/k;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</a></p>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_11
    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v1}, Lcom/appyet/c/k;->d(Lcom/appyet/c/k;)Lcom/appyet/metadata/MetadataModuleFeed;

    move-result-object v1

    iget-boolean v1, v1, Lcom/appyet/metadata/MetadataModuleFeed;->IsDisQusComment:Z

    if-eqz v1, :cond_12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<p><a class=\"appyet_viewcomments\" href=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v1}, Lcom/appyet/c/k;->g(Lcom/appyet/c/k;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    const v2, 0x7f0800c4

    invoke-virtual {v1, v2}, Lcom/appyet/c/k;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</a></p>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</div></body></html>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/c/m;->b:Ljava/lang/String;

    :goto_8
    const/4 v0, 0x0

    return-object v0

    :cond_13
    iget-object v0, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v0}, Lcom/appyet/c/k;->b(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v0}, Lcom/appyet/c/k;->c(Lcom/appyet/c/k;)Lcom/appyet/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v1}, Lcom/appyet/c/k;->b(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appyet/manager/d;->a(Lcom/appyet/data/FeedItem;)Lcom/appyet/data/FeedItem;

    :cond_14
    iget-object v0, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v0}, Lcom/appyet/c/k;->b(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/data/FeedItem;->getDescription()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<link rel=\"stylesheet\" type=\"text/css\" href=\"file:///android_asset/html/article_light.css\"></link>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_0
    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-virtual {v1}, Lcom/appyet/c/k;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0d000d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_16

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<link rel=\"stylesheet\" type=\"text/css\" href=\"file:///android_asset/html/article_tablet_extra_small.css\"></link>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<link rel=\"stylesheet\" type=\"text/css\" href=\"file:///android_asset/html/article_extra_small.css\"></link>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_1
    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-virtual {v1}, Lcom/appyet/c/k;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0d000d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_17

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<link rel=\"stylesheet\" type=\"text/css\" href=\"file:///android_asset/html/article_tablet_small.css\"></link>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<link rel=\"stylesheet\" type=\"text/css\" href=\"file:///android_asset/html/article_small.css\"></link>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_2
    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-virtual {v1}, Lcom/appyet/c/k;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0d000d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_18

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<link rel=\"stylesheet\" type=\"text/css\" href=\"file:///android_asset/html/article_tablet_medium.css\"></link>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<link rel=\"stylesheet\" type=\"text/css\" href=\"file:///android_asset/html/article_medium.css\"></link>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_3
    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-virtual {v1}, Lcom/appyet/c/k;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0d000d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_19

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<link rel=\"stylesheet\" type=\"text/css\" href=\"file:///android_asset/html/article_tablet_large.css\"></link>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<link rel=\"stylesheet\" type=\"text/css\" href=\"file:///android_asset/html/article_large.css\"></link>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_4
    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-virtual {v1}, Lcom/appyet/c/k;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0d000d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<link rel=\"stylesheet\" type=\"text/css\" href=\"file:///android_asset/html/article_tablet_extra_large.css\"></link>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<link rel=\"stylesheet\" type=\"text/css\" href=\"file:///android_asset/html/article_extra_large.css\"></link>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_1b
    const-string v0, "appyet_title appyet_title_unread"

    goto/16 :goto_3

    :cond_1c
    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v1}, Lcom/appyet/c/k;->e(Lcom/appyet/c/k;)Lcom/appyet/data/Feed;

    move-result-object v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v1}, Lcom/appyet/c/k;->e(Lcom/appyet/c/k;)Lcom/appyet/data/Feed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/data/Feed;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v1}, Lcom/appyet/c/k;->e(Lcom/appyet/c/k;)Lcom/appyet/data/Feed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/data/Feed;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1d

    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v1}, Lcom/appyet/c/k;->d(Lcom/appyet/c/k;)Lcom/appyet/metadata/MetadataModuleFeed;

    move-result-object v1

    iget-boolean v1, v1, Lcom/appyet/metadata/MetadataModuleFeed;->IsShowPublisher:Z

    if-eqz v1, :cond_1d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<span class=\"publisher\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v1}, Lcom/appyet/c/k;->e(Lcom/appyet/c/k;)Lcom/appyet/data/Feed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/data/Feed;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</span> / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1d
    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v1}, Lcom/appyet/c/k;->b(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getAuthor()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v1}, Lcom/appyet/c/k;->b(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getAuthor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<span class=\"author\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v1}, Lcom/appyet/c/k;->b(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getAuthor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</span> / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<span class=\"time\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v1}, Lcom/appyet/c/k;->c(Lcom/appyet/c/k;)Lcom/appyet/context/ApplicationContext;

    move-result-object v1

    iget-object v3, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v3}, Lcom/appyet/c/k;->b(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appyet/data/FeedItem;->getPubDate()Ljava/util/Date;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/appyet/d/a;->b(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</span>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_1f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v7}, Lcom/appyet/c/k;->b(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;

    move-result-object v7

    invoke-virtual {v7}, Lcom/appyet/data/FeedItem;->getEnclosureLength()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-double v7, v7

    const-wide/high16 v9, 0x4130000000000000L    # 1048576.0

    div-double/2addr v7, v9

    invoke-virtual {v1, v7, v8}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    const v4, 0x7f08008b

    invoke-virtual {v3, v4}, Lcom/appyet/c/k;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    goto/16 :goto_5

    :cond_20
    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v1}, Lcom/appyet/c/k;->b(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getEnclosureType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v4, "video"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v1}, Lcom/appyet/c/k;->c(Lcom/appyet/c/k;)Lcom/appyet/context/ApplicationContext;

    move-result-object v1

    const v4, 0x7f08005d

    invoke-virtual {v1, v4}, Lcom/appyet/context/ApplicationContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_6

    :cond_21
    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v1}, Lcom/appyet/c/k;->c(Lcom/appyet/c/k;)Lcom/appyet/context/ApplicationContext;

    move-result-object v1

    const v4, 0x7f08005e

    invoke-virtual {v1, v4}, Lcom/appyet/context/ApplicationContext;->getString(I)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v1

    goto/16 :goto_6

    :catch_0
    move-exception v0

    :try_start_5
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_22
    move-object v0, v1

    goto/16 :goto_7

    :catch_1
    move-exception v1

    :goto_9
    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<span class=\"appyet_article\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</span>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :cond_23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<span class=\"appyet_article\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</span>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :cond_24
    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v1}, Lcom/appyet/c/k;->e(Lcom/appyet/c/k;)Lcom/appyet/data/Feed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/data/Feed;->getLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "://gdata.youtube.com/feeds/api/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v1}, Lcom/appyet/c/k;->b(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getThumbnail()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v1}, Lcom/appyet/c/k;->b(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/data/FeedItem;->getThumbnail()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move-result-object v1

    :try_start_7
    const-string v3, "vi/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    const-string v4, "/0.jpg"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v1}, Lcom/appyet/c/k;->b(Lcom/appyet/c/k;)Lcom/appyet/data/FeedItem;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://www.youtube.com/watch?v="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/appyet/data/FeedItem;->setLink(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v1}, Lcom/appyet/c/k;->e(Lcom/appyet/c/k;)Lcom/appyet/data/Feed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appyet/data/Feed;->getLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v4, "://gdata.youtube.com/feeds/api/playlists"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_27

    const-string v1, "(?i)\\b((?:https?://|www\\d{0,3}[.]|[a-z0-9.\\-]+[.][a-z]{2,4}/)(?:[^\\s()<>]+|\\(([^\\s()<>]+|(\\([^\\s()<>]+\\)))*\\))+(?:\\(([^\\s()<>]+|(\\([^\\s()<>]+\\)))*\\)|[^\\s`!()\\[\\]{};:\'\".,<>?\u00ab\u00bb\u201c\u201d\u2018\u2019]))"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v4, "<a href=\"$1\">$1</a>"

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    move-result-object v1

    :goto_a
    :try_start_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "<p><a href=\'appyet.youtube:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'><img class=\'appyet_youtubeimg\' src=\'file:///android_asset/html/youtube_btn_play.png\' style=\"background:url(\'http://i.ytimg.com/vi/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/0.jpg\')\"/></a></p>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<p>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    const-string v4, "<br />"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</p>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    move-result-object v0

    goto/16 :goto_7

    :catch_2
    move-exception v1

    move-object v1, v2

    :goto_b
    :try_start_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<span class=\"appyet_article\">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</span>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :cond_25
    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v1}, Lcom/appyet/c/k;->d(Lcom/appyet/c/k;)Lcom/appyet/metadata/MetadataModuleFeed;

    move-result-object v1

    iget-boolean v1, v1, Lcom/appyet/metadata/MetadataModuleFeed;->IsViewImageOnTouch:Z

    if-eqz v1, :cond_26

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<span class=\"appyet_article\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v1}, Lcom/appyet/c/k;->f(Lcom/appyet/c/k;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/appyet/c/k;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</span>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :cond_26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<span class=\"appyet_article\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</span>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    move-result-object v0

    goto/16 :goto_7

    :catch_3
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto/16 :goto_8

    :catch_4
    move-exception v2

    goto :goto_b

    :catch_5
    move-exception v0

    move-object v0, v1

    goto/16 :goto_9

    :cond_27
    move-object v1, v2

    goto/16 :goto_a

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method protected final a()V
    .locals 2

    iget-object v0, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v0}, Lcom/appyet/c/k;->i(Lcom/appyet/c/k;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 6

    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Lcom/appyet/f/a;->a(Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/appyet/c/m;->a:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/appyet/c/m;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/appyet/c/m;->d:Lcom/appyet/c/k;

    invoke-static {v1}, Lcom/appyet/c/k;->h(Lcom/appyet/c/k;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/c/m;->b:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/appyet/c/m;->f()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

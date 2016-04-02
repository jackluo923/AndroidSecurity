.class final Lcom/appyet/c/a/n;
.super Lcom/appyet/f/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appyet/f/a",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field a:Landroid/webkit/WebView;

.field b:Ljava/lang/String;

.field c:Landroid/view/View;

.field final synthetic d:Lcom/appyet/c/a/l;


# direct methods
.method public constructor <init>(Lcom/appyet/c/a/l;Landroid/webkit/WebView;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/c/a/n;->d:Lcom/appyet/c/a/l;

    invoke-direct {p0}, Lcom/appyet/f/a;-><init>()V

    iput-object p2, p0, Lcom/appyet/c/a/n;->a:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/appyet/c/a/n;->c:Landroid/view/View;

    return-void
.end method

.method private varargs f()Ljava/lang/Boolean;
    .locals 8

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/appyet/c/a/n;->d:Lcom/appyet/c/a/l;

    invoke-static {v1}, Lcom/appyet/c/a/l;->c(Lcom/appyet/c/a/l;)Lcom/appyet/context/ApplicationContext;

    move-result-object v1

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->p:Lcom/appyet/manager/an;

    iget-object v3, p0, Lcom/appyet/c/a/n;->d:Lcom/appyet/c/a/l;

    invoke-static {v3}, Lcom/appyet/c/a/l;->b(Lcom/appyet/c/a/l;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Lcom/appyet/c/a/n;->d:Lcom/appyet/c/a/l;

    invoke-static {v5}, Lcom/appyet/c/a/l;->c(Lcom/appyet/c/a/l;)Lcom/appyet/context/ApplicationContext;

    move-result-object v5

    iget-object v5, v5, Lcom/appyet/context/ApplicationContext;->o:Lcom/appyet/context/g;

    iget-object v5, v5, Lcom/appyet/context/g;->b:Lcom/appyet/a/a/e;

    iget-object v5, v5, Lcom/appyet/a/a/e;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/appyet/c/a/n;->d:Lcom/appyet/c/a/l;

    invoke-static {v6}, Lcom/appyet/c/a/l;->d(Lcom/appyet/c/a/l;)I

    move-result v6

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/appyet/manager/an;->a(JLjava/lang/String;I)Ljava/util/List;

    move-result-object v3

    const-string v1, "<?xml version=\"1.0\" encoding=\"UTF-8\"?><!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML Basic 1.1//EN\"\"http://www.w3.org/TR/xhtml-basic/xhtml-basic11.dtd\"><html><head><title></title>"

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, user-scalable=no\" />"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "<link rel=\"stylesheet\" type=\"text/css\" href=\"file:///android_asset/html/fonts.css\"></link>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/appyet/c/a/n;->d:Lcom/appyet/c/a/l;

    invoke-static {v4}, Lcom/appyet/c/a/l;->c(Lcom/appyet/c/a/l;)Lcom/appyet/context/ApplicationContext;

    move-result-object v4

    iget-object v4, v4, Lcom/appyet/context/ApplicationContext;->m:Lcom/appyet/manager/bw;

    iget-object v4, v4, Lcom/appyet/manager/bw;->a:Lcom/appyet/metadata/MetadataTheme;

    iget-object v4, v4, Lcom/appyet/metadata/MetadataTheme;->PrimaryBgColor:Ljava/lang/String;

    const-string v5, "DARK"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "<link rel=\"stylesheet\" type=\"text/css\" href=\"file:///android_asset/html/forum/forum_dark.css\"></link>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v4, p0, Lcom/appyet/c/a/n;->d:Lcom/appyet/c/a/l;

    invoke-static {v4}, Lcom/appyet/c/a/l;->c(Lcom/appyet/c/a/l;)Lcom/appyet/context/ApplicationContext;

    move-result-object v4

    iget-object v4, v4, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v4}, Lcom/appyet/manager/bp;->K()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "</head><body><div class=\"posts\">"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v3, :cond_a

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_a

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v1

    move v1, v2

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/a/a/c;

    add-int/lit8 v3, v1, 0x1

    iget-object v1, v0, Lcom/appyet/a/a/c;->g:Ljava/util/Date;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v5}, Lcom/appyet/d/a;->a(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/appyet/c/a/n;->d:Lcom/appyet/c/a/l;

    invoke-static {v1}, Lcom/appyet/c/a/l;->c(Lcom/appyet/c/a/l;)Lcom/appyet/context/ApplicationContext;

    move-result-object v1

    iget-object v5, v0, Lcom/appyet/a/a/c;->g:Ljava/util/Date;

    invoke-static {v1, v5}, Lcom/appyet/d/a;->d(Lcom/appyet/context/ApplicationContext;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    iget-object v5, v0, Lcom/appyet/a/a/c;->f:Ljava/lang/String;

    if-eqz v5, :cond_8

    iget-object v5, v0, Lcom/appyet/a/a/c;->f:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_8

    iget-object v5, v0, Lcom/appyet/a/a/c;->f:Ljava/lang/String;

    :goto_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "<div class=\"post\">"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "<div class=\"posthead\"><img src=\""

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" class=\"postavatar\"><div class=\"postauthor\">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/appyet/a/a/c;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</div><div class=\"postindex\">&nbsp;/&nbsp;#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/appyet/c/a/n;->d:Lcom/appyet/c/a/l;

    invoke-static {v5}, Lcom/appyet/c/a/l;->d(Lcom/appyet/c/a/l;)I

    move-result v5

    mul-int/lit8 v5, v5, 0xa

    add-int/2addr v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</div><div class=\"postdate\">&nbsp;/&nbsp;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "</div></div>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "<div class=\"postbody\">"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/appyet/a/a/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</div>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<div class=\"postfooter\"></div>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</div><hr/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v1, v3

    move-object v4, v0

    goto/16 :goto_2

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "<link rel=\"stylesheet\" type=\"text/css\" href=\"file:///android_asset/html/forum/forum_light.css\"></link>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_0
    iget-object v4, p0, Lcom/appyet/c/a/n;->d:Lcom/appyet/c/a/l;

    invoke-virtual {v4}, Lcom/appyet/c/a/l;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "<link rel=\"stylesheet\" type=\"text/css\" href=\"file:///android_asset/html/article_tablet_extra_small.css\"></link>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "<link rel=\"stylesheet\" type=\"text/css\" href=\"file:///android_asset/html/article_extra_small.css\"></link>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_1
    iget-object v4, p0, Lcom/appyet/c/a/n;->d:Lcom/appyet/c/a/l;

    invoke-virtual {v4}, Lcom/appyet/c/a/l;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "<link rel=\"stylesheet\" type=\"text/css\" href=\"file:///android_asset/html/article_tablet_small.css\"></link>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "<link rel=\"stylesheet\" type=\"text/css\" href=\"file:///android_asset/html/article_small.css\"></link>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_2
    iget-object v4, p0, Lcom/appyet/c/a/n;->d:Lcom/appyet/c/a/l;

    invoke-virtual {v4}, Lcom/appyet/c/a/l;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "<link rel=\"stylesheet\" type=\"text/css\" href=\"file:///android_asset/html/article_tablet_medium.css\"></link>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "<link rel=\"stylesheet\" type=\"text/css\" href=\"file:///android_asset/html/article_medium.css\"></link>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_3
    iget-object v4, p0, Lcom/appyet/c/a/n;->d:Lcom/appyet/c/a/l;

    invoke-virtual {v4}, Lcom/appyet/c/a/l;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "<link rel=\"stylesheet\" type=\"text/css\" href=\"file:///android_asset/html/article_tablet_large.css\"></link>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "<link rel=\"stylesheet\" type=\"text/css\" href=\"file:///android_asset/html/article_large.css\"></link>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_4
    iget-object v4, p0, Lcom/appyet/c/a/n;->d:Lcom/appyet/c/a/l;

    invoke-virtual {v4}, Lcom/appyet/c/a/l;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "<link rel=\"stylesheet\" type=\"text/css\" href=\"file:///android_asset/html/article_tablet_extra_large.css\"></link>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "<link rel=\"stylesheet\" type=\"text/css\" href=\"file:///android_asset/html/article_extra_large.css\"></link>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_7
    iget-object v1, p0, Lcom/appyet/c/a/n;->d:Lcom/appyet/c/a/l;

    invoke-static {v1}, Lcom/appyet/c/a/l;->c(Lcom/appyet/c/a/l;)Lcom/appyet/context/ApplicationContext;

    move-result-object v1

    iget-object v5, v0, Lcom/appyet/a/a/c;->g:Ljava/util/Date;

    invoke-static {v1, v5}, Lcom/appyet/d/a;->b(Lcom/appyet/context/ApplicationContext;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    :cond_8
    iget-object v5, p0, Lcom/appyet/c/a/n;->d:Lcom/appyet/c/a/l;

    invoke-static {v5}, Lcom/appyet/c/a/l;->c(Lcom/appyet/c/a/l;)Lcom/appyet/context/ApplicationContext;

    move-result-object v5

    iget-object v5, v5, Lcom/appyet/context/ApplicationContext;->m:Lcom/appyet/manager/bw;

    iget-object v5, v5, Lcom/appyet/manager/bw;->a:Lcom/appyet/metadata/MetadataTheme;

    iget-object v5, v5, Lcom/appyet/metadata/MetadataTheme;->PrimaryBgColor:Ljava/lang/String;

    const-string v7, "DARK"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "file:///android_asset/html/forum/default_avatar_dark.png"

    goto/16 :goto_4

    :cond_9
    const-string v5, "file:///android_asset/html/forum/default_avatar_light.png"

    goto/16 :goto_4

    :cond_a
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/appyet/c/a/n;->b:Ljava/lang/String;

    :goto_5
    return-object v0

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</div></body></html>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/c/a/n;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_5

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_5

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

    iget-object v0, p0, Lcom/appyet/c/a/n;->d:Lcom/appyet/c/a/l;

    invoke-static {v0}, Lcom/appyet/c/a/l;->f(Lcom/appyet/c/a/l;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/c/a/n;->d:Lcom/appyet/c/a/l;

    invoke-static {v0}, Lcom/appyet/c/a/l;->e(Lcom/appyet/c/a/l;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 8

    const/4 v7, 0x0

    const/16 v6, 0x8

    check-cast p1, Ljava/lang/Boolean;

    invoke-super {p0, p1}, Lcom/appyet/f/a;->a(Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/appyet/c/a/n;->a:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/appyet/c/a/n;->b:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/appyet/c/a/n;->d:Lcom/appyet/c/a/l;

    invoke-static {v0}, Lcom/appyet/c/a/l;->e(Lcom/appyet/c/a/l;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/c/a/n;->a:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/c/a/n;->d:Lcom/appyet/c/a/l;

    invoke-static {v0}, Lcom/appyet/c/a/l;->f(Lcom/appyet/c/a/l;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    :cond_1
    iget-object v0, p0, Lcom/appyet/c/a/n;->d:Lcom/appyet/c/a/l;

    invoke-static {v0}, Lcom/appyet/c/a/l;->e(Lcom/appyet/c/a/l;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/c/a/n;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/c/a/n;->d:Lcom/appyet/c/a/l;

    invoke-static {v0}, Lcom/appyet/c/a/l;->f(Lcom/appyet/c/a/l;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/appyet/c/a/n;->d:Lcom/appyet/c/a/l;

    invoke-static {v0}, Lcom/appyet/c/a/l;->e(Lcom/appyet/c/a/l;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/c/a/n;->a:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/appyet/c/a/n;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/appyet/c/a/n;->d:Lcom/appyet/c/a/l;

    invoke-static {v1}, Lcom/appyet/c/a/l;->g(Lcom/appyet/c/a/l;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/c/a/n;->b:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/appyet/c/a/n;->f()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

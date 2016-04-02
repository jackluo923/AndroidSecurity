.class public Lcom/alipay/mobile/mpass/badge/shortcut/impl/AndroidHomeBadger;
.super Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadger;
.source "AndroidHomeBadger.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadger;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected executeBadge(I)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/shortcut/impl/AndroidHomeBadger;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/alipay/mobile/mpass/badge/util/ImageUtil;->drawBadgeOnAppIcon(Landroid/content/Context;I)[B

    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/alipay/mobile/mpass/badge/shortcut/impl/AndroidHomeBadger;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/mpass/badge/shortcut/impl/AndroidHomeBadger;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "app_name"

    const-string/jumbo v4, "string"

    invoke-virtual {p0}, Lcom/alipay/mobile/mpass/badge/shortcut/impl/AndroidHomeBadger;->getContextPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 32
    const-string/jumbo v2, "content://com.android.launcher.settings/favorites?notify=true"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 33
    iget-object v3, p0, Lcom/alipay/mobile/mpass/badge/shortcut/impl/AndroidHomeBadger;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 34
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 35
    const-string/jumbo v5, "iconType"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 36
    const-string/jumbo v5, "itemType"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 37
    const-string/jumbo v5, "icon"

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 38
    const-string/jumbo v0, "title=?"

    new-array v5, v7, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {v3, v2, v4, v0, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 39
    return-void
.end method

.method protected getContentUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const-string/jumbo v0, "content://com.android.launcher.settings/favorites?notify=true"

    return-object v0
.end method

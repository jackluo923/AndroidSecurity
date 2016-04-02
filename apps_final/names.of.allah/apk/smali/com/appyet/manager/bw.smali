.class public final Lcom/appyet/manager/bw;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/appyet/metadata/MetadataTheme;

.field private b:Lcom/appyet/context/ApplicationContext;

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Lcom/appyet/context/ApplicationContext;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appyet/manager/bw;->a:Lcom/appyet/metadata/MetadataTheme;

    iput-object p1, p0, Lcom/appyet/manager/bw;->b:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {p0}, Lcom/appyet/manager/bw;->a()V

    return-void
.end method

.method private static c()Lcom/appyet/metadata/MetadataTheme;
    .locals 3

    const/16 v2, 0xf

    new-instance v0, Lcom/appyet/metadata/MetadataTheme;

    invoke-direct {v0}, Lcom/appyet/metadata/MetadataTheme;-><init>()V

    const-string v1, "Light Theme"

    iput-object v1, v0, Lcom/appyet/metadata/MetadataTheme;->Name:Ljava/lang/String;

    const-string v1, "LIGHT"

    iput-object v1, v0, Lcom/appyet/metadata/MetadataTheme;->PrimaryBgColor:Ljava/lang/String;

    const-string v1, "97e6ef36-cf61-43c5-a012-67dcf183c973"

    iput-object v1, v0, Lcom/appyet/metadata/MetadataTheme;->Guid:Ljava/lang/String;

    const-string v1, "#DDDDDD"

    iput-object v1, v0, Lcom/appyet/metadata/MetadataTheme;->ActionBarBgColor:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/appyet/metadata/MetadataTheme;->ActionBarFgColor:Z

    const-string v1, "#E2E2E0"

    iput-object v1, v0, Lcom/appyet/metadata/MetadataTheme;->LeftMenuBgColor:Ljava/lang/String;

    const/16 v1, 0x14

    iput-short v1, v0, Lcom/appyet/metadata/MetadataTheme;->LeftMenuIconSize:S

    const-string v1, "#999999"

    iput-object v1, v0, Lcom/appyet/metadata/MetadataTheme;->LeftMenuGroupTextColor:Ljava/lang/String;

    const/16 v1, 0xe

    iput-short v1, v0, Lcom/appyet/metadata/MetadataTheme;->LeftMenuGroupTextSize:S

    const-string v1, "#494949"

    iput-object v1, v0, Lcom/appyet/metadata/MetadataTheme;->LeftMenuItemTextColor:Ljava/lang/String;

    iput-short v2, v0, Lcom/appyet/metadata/MetadataTheme;->LeftMenuItemTextSize:S

    iput-short v2, v0, Lcom/appyet/metadata/MetadataTheme;->LeftMenuItemVerticalPadding:S

    const-string v1, "#888888"

    iput-object v1, v0, Lcom/appyet/metadata/MetadataTheme;->LeftMenuBadgeBgColor:Ljava/lang/String;

    const-string v1, "#FFFFFF"

    iput-object v1, v0, Lcom/appyet/metadata/MetadataTheme;->LeftMenuBadgeTextColor:Ljava/lang/String;

    const/16 v1, 0xa

    iput-short v1, v0, Lcom/appyet/metadata/MetadataTheme;->LeftMenuBadgeTextSize:S

    const-string v1, "#DADAD8"

    iput-object v1, v0, Lcom/appyet/metadata/MetadataTheme;->LeftMenuDividerColor:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/appyet/manager/bw;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v0, v0, Lcom/appyet/metadata/Metadata;->MetadataThemes:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/manager/bw;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v0, v0, Lcom/appyet/metadata/Metadata;->MetadataThemes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/appyet/manager/bw;->c()Lcom/appyet/metadata/MetadataTheme;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/manager/bw;->a:Lcom/appyet/metadata/MetadataTheme;

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/appyet/manager/bw;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v0}, Lcom/appyet/manager/bp;->F()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/appyet/manager/bw;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v0, v0, Lcom/appyet/metadata/Metadata;->MetadataThemes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/metadata/MetadataTheme;

    iget-object v3, v0, Lcom/appyet/metadata/MetadataTheme;->Guid:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput-object v0, p0, Lcom/appyet/manager/bw;->a:Lcom/appyet/metadata/MetadataTheme;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/appyet/manager/bw;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v0, v0, Lcom/appyet/metadata/Metadata;->MetadataThemes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/metadata/MetadataTheme;

    iget-object v2, v0, Lcom/appyet/metadata/MetadataTheme;->Guid:Ljava/lang/String;

    iget-object v3, p0, Lcom/appyet/manager/bw;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v3, v3, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v3, v3, Lcom/appyet/metadata/Metadata;->MetadataSetting:Lcom/appyet/metadata/MetadataSetting;

    iget-object v3, v3, Lcom/appyet/metadata/MetadataSetting;->DefaultThemeGuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iput-object v0, p0, Lcom/appyet/manager/bw;->a:Lcom/appyet/metadata/MetadataTheme;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/appyet/manager/bw;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v0, v0, Lcom/appyet/metadata/Metadata;->MetadataThemes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/appyet/manager/bw;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v0, v0, Lcom/appyet/metadata/Metadata;->MetadataThemes:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/metadata/MetadataTheme;

    iput-object v0, p0, Lcom/appyet/manager/bw;->a:Lcom/appyet/metadata/MetadataTheme;

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/appyet/manager/bw;->c()Lcom/appyet/metadata/MetadataTheme;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/manager/bw;->a:Lcom/appyet/metadata/MetadataTheme;

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/appyet/manager/bw;->a:Lcom/appyet/metadata/MetadataTheme;

    iget-boolean v0, v0, Lcom/appyet/metadata/MetadataTheme;->ActionBarFgColor:Z

    if-eqz v0, :cond_0

    const v0, 0x7f07006e

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTheme(I)V

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f07006d

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTheme(I)V

    goto :goto_0
.end method

.method public final a(ZLandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 5

    const v4, 0x7f090041

    const v3, 0x7f090044

    const v2, 0x7f090042

    if-eqz p2, :cond_0

    iget v0, p0, Lcom/appyet/manager/bw;->d:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    if-eqz p7, :cond_1

    iget-object v0, p0, Lcom/appyet/manager/bw;->a:Lcom/appyet/metadata/MetadataTheme;

    iget-object v0, v0, Lcom/appyet/metadata/MetadataTheme;->PrimaryBgColor:Ljava/lang/String;

    const-string v1, "DARK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/appyet/manager/bw;->d:I

    invoke-virtual {p7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    iget v0, p0, Lcom/appyet/manager/bw;->d:I

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    if-eqz p4, :cond_3

    iget v0, p0, Lcom/appyet/manager/bw;->d:I

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    if-eqz p5, :cond_4

    iget v0, p0, Lcom/appyet/manager/bw;->d:I

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    if-eqz p6, :cond_5

    iget v0, p0, Lcom/appyet/manager/bw;->d:I

    invoke-virtual {p6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_5
    if-nez p1, :cond_7

    if-eqz p2, :cond_6

    iget v0, p0, Lcom/appyet/manager/bw;->c:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_6
    if-eqz p7, :cond_7

    iget-object v0, p0, Lcom/appyet/manager/bw;->a:Lcom/appyet/metadata/MetadataTheme;

    iget-object v0, v0, Lcom/appyet/metadata/MetadataTheme;->PrimaryBgColor:Ljava/lang/String;

    const-string v1, "DARK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/appyet/manager/bw;->c:I

    invoke-virtual {p7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/appyet/manager/bw;->a:Lcom/appyet/metadata/MetadataTheme;

    iget-object v0, v0, Lcom/appyet/metadata/MetadataTheme;->PrimaryBgColor:Ljava/lang/String;

    const-string v1, "DARK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    if-eqz p2, :cond_8

    iget-object v0, p0, Lcom/appyet/manager/bw;->b:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v0}, Lcom/appyet/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_8
    if-eqz p7, :cond_9

    iget-object v0, p0, Lcom/appyet/manager/bw;->b:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v0}, Lcom/appyet/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_9
    if-eqz p3, :cond_a

    iget-object v0, p0, Lcom/appyet/manager/bw;->b:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v0}, Lcom/appyet/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_a
    if-eqz p4, :cond_b

    iget-object v0, p0, Lcom/appyet/manager/bw;->b:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v0}, Lcom/appyet/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_b
    if-eqz p5, :cond_c

    iget-object v0, p0, Lcom/appyet/manager/bw;->b:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v0}, Lcom/appyet/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_c
    if-eqz p6, :cond_d

    iget-object v0, p0, Lcom/appyet/manager/bw;->b:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v0}, Lcom/appyet/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_d
    if-nez p1, :cond_f

    if-eqz p2, :cond_e

    iget-object v0, p0, Lcom/appyet/manager/bw;->b:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v0}, Lcom/appyet/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_e
    if-eqz p7, :cond_f

    iget-object v0, p0, Lcom/appyet/manager/bw;->b:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v0}, Lcom/appyet/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_f
    :goto_2
    return-void

    :cond_10
    iget-object v0, p0, Lcom/appyet/manager/bw;->b:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v0}, Lcom/appyet/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_11
    iget-object v0, p0, Lcom/appyet/manager/bw;->b:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v0}, Lcom/appyet/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    :cond_12
    if-eqz p2, :cond_13

    iget-object v0, p0, Lcom/appyet/manager/bw;->b:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v0}, Lcom/appyet/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_13
    if-eqz p7, :cond_14

    iget-object v0, p0, Lcom/appyet/manager/bw;->b:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v0}, Lcom/appyet/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_14
    if-eqz p3, :cond_15

    iget-object v0, p0, Lcom/appyet/manager/bw;->b:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v0}, Lcom/appyet/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_15
    if-eqz p4, :cond_16

    iget-object v0, p0, Lcom/appyet/manager/bw;->b:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v0}, Lcom/appyet/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_16
    if-eqz p5, :cond_17

    iget-object v0, p0, Lcom/appyet/manager/bw;->b:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v0}, Lcom/appyet/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_17
    if-eqz p6, :cond_18

    iget-object v0, p0, Lcom/appyet/manager/bw;->b:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v0}, Lcom/appyet/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_18
    if-nez p1, :cond_f

    if-eqz p2, :cond_19

    iget-object v0, p0, Lcom/appyet/manager/bw;->b:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v0}, Lcom/appyet/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_19
    if-eqz p7, :cond_f

    iget-object v0, p0, Lcom/appyet/manager/bw;->b:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v0}, Lcom/appyet/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/appyet/manager/bw;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v0}, Lcom/appyet/manager/bp;->G()I

    move-result v0

    iput v0, p0, Lcom/appyet/manager/bw;->c:I

    iget-object v0, p0, Lcom/appyet/manager/bw;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v0}, Lcom/appyet/manager/bp;->H()I

    move-result v0

    iput v0, p0, Lcom/appyet/manager/bw;->d:I

    iget-object v0, p0, Lcom/appyet/manager/bw;->b:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v0}, Lcom/appyet/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/appyet/manager/bw;->e:I

    return-void
.end method

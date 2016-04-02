.class final Lcom/appyet/activity/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/appyet/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/appyet/activity/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/activity/o;->a:Lcom/appyet/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/appyet/activity/o;->a:Lcom/appyet/activity/MainActivity;

    invoke-static {v0}, Lcom/appyet/activity/MainActivity;->b(Lcom/appyet/activity/MainActivity;)Lcom/appyet/context/ApplicationContext;

    move-result-object v0

    iget-object v1, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    iget-object v0, p0, Lcom/appyet/activity/o;->a:Lcom/appyet/activity/MainActivity;

    invoke-static {v0}, Lcom/appyet/activity/MainActivity;->b(Lcom/appyet/activity/MainActivity;)Lcom/appyet/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v0, v0, Lcom/appyet/metadata/Metadata;->MetadataThemes:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/metadata/MetadataTheme;

    iget-object v0, v0, Lcom/appyet/metadata/MetadataTheme;->Guid:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/appyet/manager/bp;->b(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/appyet/activity/o;->a:Lcom/appyet/activity/MainActivity;

    invoke-static {v0}, Lcom/appyet/activity/MainActivity;->b(Lcom/appyet/activity/MainActivity;)Lcom/appyet/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->m:Lcom/appyet/manager/bw;

    invoke-virtual {v0}, Lcom/appyet/manager/bw;->a()V

    iget-object v0, p0, Lcom/appyet/activity/o;->a:Lcom/appyet/activity/MainActivity;

    invoke-virtual {v0}, Lcom/appyet/activity/MainActivity;->finish()V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/appyet/activity/o;->a:Lcom/appyet/activity/MainActivity;

    const-class v2, Lcom/appyet/activity/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/appyet/activity/o;->a:Lcom/appyet/activity/MainActivity;

    invoke-virtual {v1, v0}, Lcom/appyet/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

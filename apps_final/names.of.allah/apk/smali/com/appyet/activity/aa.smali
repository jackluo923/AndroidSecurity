.class final Lcom/appyet/activity/aa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lcom/appyet/activity/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/appyet/activity/SettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/activity/aa;->a:Lcom/appyet/activity/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/appyet/activity/aa;->a:Lcom/appyet/activity/SettingsActivity;

    const-string v1, "SETTINGS_NOTIFICATIONS_RINGTONEV3"

    invoke-virtual {v0, v1}, Lcom/appyet/activity/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/appyet/activity/aa;->a:Lcom/appyet/activity/SettingsActivity;

    const-string v1, "SETTINGS_NOTIFICATIONS_VIBRATEV3"

    invoke-virtual {v0, v1}, Lcom/appyet/activity/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/appyet/activity/aa;->a:Lcom/appyet/activity/SettingsActivity;

    const-string v1, "SETTINGS_NOTIFICATIONS_FLASHLIGHTV3"

    invoke-virtual {v0, v1}, Lcom/appyet/activity/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    const/4 v0, 0x1

    return v0
.end method

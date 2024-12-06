.class public Lcom/mega/app/engineeringmode/advanced/MasterClearHelper;
.super Ljava/lang/Object;
.source "MasterClearHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MasterClearHelper"

.field private static final WIPE_USERDATA_NEXT_PROPERTY:Ljava/lang/String; = "sys.state.monitor.wipe_userdata_next"

.field private static final WIPE_USERDATA_PROPERTY:Ljava/lang/String; = "sys.state.monitor.wipe_userdata"

.field private static final WIPE_USERDATA_WITH_PROP:Z = true


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/mega/app/engineeringmode/advanced/MasterClearHelper;->mContext:Landroid/content/Context;

    .line 71
    return-void
.end method

.method private doMasterClear()V
    .locals 4

    .line 154
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.FACTORY_RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 157
    const-string v1, "android.intent.extra.REASON"

    const-string v2, "MasterClearHelper"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    const-string v1, "android.intent.extra.WIPE_EXTERNAL_STORAGE"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 159
    const-string v1, "com.android.internal.intent.extra.WIPE_ESIMS"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 160
    iget-object v1, p0, Lcom/mega/app/engineeringmode/advanced/MasterClearHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return-void
.end method

.method private isDeviceStillBeingProvisioned()Z
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/MasterClearHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isOemUnlockedAllowed()Z
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/mega/app/engineeringmode/advanced/MasterClearHelper;->mContext:Landroid/content/Context;

    const-string v1, "oem_lock"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/oemlock/OemLockManager;

    .line 146
    invoke-virtual {v0}, Landroid/service/oemlock/OemLockManager;->isOemUnlockAllowed()Z

    move-result v0

    .line 145
    return v0
.end method

.method private shouldWipePersistentDataBlock(Landroid/service/persistentdata/PersistentDataBlockManager;)Z
    .locals 4
    .param p1, "pdbManager"    # Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 114
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 115
    return v0

    .line 118
    :cond_0
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/advanced/MasterClearHelper;->isDeviceStillBeingProvisioned()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    return v0

    .line 123
    :cond_1
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/advanced/MasterClearHelper;->isOemUnlockedAllowed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 124
    return v0

    .line 126
    :cond_2
    iget-object v1, p0, Lcom/mega/app/engineeringmode/advanced/MasterClearHelper;->mContext:Landroid/content/Context;

    .line 127
    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 130
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->isFactoryResetProtectionPolicySupported()Z

    move-result v2

    if-nez v2, :cond_3

    .line 131
    return v0

    .line 136
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getFactoryResetProtectionPolicy(Landroid/content/ComponentName;)Landroid/app/admin/FactoryResetProtectionPolicy;

    move-result-object v2

    .line 137
    .local v2, "frpPolicy":Landroid/app/admin/FactoryResetProtectionPolicy;
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    .line 138
    invoke-virtual {v2}, Landroid/app/admin/FactoryResetProtectionPolicy;->isNotEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 139
    return v0

    .line 141
    :cond_4
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public performFactoryReset()V
    .locals 2

    .line 80
    const-string v0, "MasterClearHelper"

    const-string v1, "Factory reset with prop!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const-string v0, "sys.state.monitor.wipe_userdata"

    const-string v1, "true"

    invoke-static {v0, v1}, Lcom/mega/app/engineeringmode/common/Util;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public performFactoryResetNext()V
    .locals 2

    .line 74
    const-string v0, "MasterClearHelper"

    const-string v1, "Factory reset next boot with prop!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const-string v0, "sys.state.monitor.wipe_userdata_next"

    const-string v1, "true"

    invoke-static {v0, v1}, Lcom/mega/app/engineeringmode/common/Util;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

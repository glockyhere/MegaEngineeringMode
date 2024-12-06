.class public Lcom/mega/nexus/content/pm/MegaPackageManager;
.super Ljava/lang/Object;
.source "MegaPackageManager.java"


# static fields
.field public static final DELETE_ALL_USERS:I = 0x2

.field public static final INSTALL_ALL_USERS:I = 0x40


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearApplicationUserData(Landroid/content/pm/PackageManager;Ljava/lang/String;Lcom/mega/nexus/content/pm/MegaIPackageDataObserver;)V
    .locals 1
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Lcom/mega/nexus/content/pm/MegaIPackageDataObserver;

    .line 96
    if-nez p2, :cond_0

    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    goto :goto_0

    .line 99
    :cond_0
    new-instance v0, Lcom/mega/nexus/content/pm/MegaPackageManager$1;

    invoke-direct {v0, p2}, Lcom/mega/nexus/content/pm/MegaPackageManager$1;-><init>(Lcom/mega/nexus/content/pm/MegaIPackageDataObserver;)V

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    .line 107
    :goto_0
    return-void
.end method

.method private static convertUserId(I)I
    .locals 1
    .param p0, "userId"    # I

    .line 153
    const/4 v0, -0x2

    if-eq p0, v0, :cond_1

    const/4 v0, -0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    move v0, p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 153
    :goto_1
    return v0
.end method

.method public static deleteApplicationCacheFiles(Landroid/content/pm/PackageManager;Ljava/lang/String;Lcom/mega/nexus/content/pm/MegaIPackageDataObserver;)V
    .locals 1
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Lcom/mega/nexus/content/pm/MegaIPackageDataObserver;

    .line 113
    if-nez p2, :cond_0

    .line 114
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    goto :goto_0

    .line 116
    :cond_0
    new-instance v0, Lcom/mega/nexus/content/pm/MegaPackageManager$2;

    invoke-direct {v0, p2}, Lcom/mega/nexus/content/pm/MegaPackageManager$2;-><init>(Lcom/mega/nexus/content/pm/MegaIPackageDataObserver;)V

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    .line 125
    :goto_0
    return-void
.end method

.method public static getApplicationInfoAsUser(Landroid/content/pm/PackageManager;Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    .locals 1
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 34
    invoke-static {p3}, Lcom/mega/nexus/content/pm/MegaPackageManager;->convertUserId(I)I

    move-result p3

    .line 35
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getComponentEnabledSettingAsUser(Landroid/content/ComponentName;I)I
    .locals 1
    .param p0, "componentName"    # Landroid/content/ComponentName;
    .param p1, "userId"    # I

    .line 141
    :try_start_0
    invoke-static {p1}, Lcom/mega/nexus/content/pm/MegaPackageManager;->convertUserId(I)I

    move-result v0

    move p1, v0

    .line 142
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/pm/IPackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 146
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x2

    return v0
.end method

.method public static getPackageInfoAsUser(Landroid/content/pm/PackageManager;Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    .locals 1
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 44
    invoke-static {p3}, Lcom/mega/nexus/content/pm/MegaPackageManager;->convertUserId(I)I

    move-result p3

    .line 45
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getPackageUidAsUser(Landroid/content/pm/PackageManager;Ljava/lang/String;I)I
    .locals 1
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 53
    invoke-static {p2}, Lcom/mega/nexus/content/pm/MegaPackageManager;->convertUserId(I)I

    move-result p2

    .line 54
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static paramInstallAllUser(Landroid/content/pm/PackageInstaller$SessionParams;)Landroid/content/pm/PackageInstaller$SessionParams;
    .locals 1
    .param p0, "params"    # Landroid/content/pm/PackageInstaller$SessionParams;

    .line 159
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 160
    return-object p0
.end method

.method public static queryBroadcastReceiversAsUser(Landroid/content/pm/PackageManager;Landroid/content/Intent;II)Ljava/util/List;
    .locals 1
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 88
    invoke-static {p3}, Lcom/mega/nexus/content/pm/MegaPackageManager;->convertUserId(I)I

    move-result p3

    .line 89
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static queryIntentActivitiesAsUser(Landroid/content/pm/PackageManager;Landroid/content/Intent;II)Ljava/util/List;
    .locals 1
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 62
    invoke-static {p3}, Lcom/mega/nexus/content/pm/MegaPackageManager;->convertUserId(I)I

    move-result p3

    .line 63
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static queryIntentContentProvidersAsUser(Landroid/content/pm/PackageManager;Landroid/content/Intent;II)Ljava/util/List;
    .locals 1
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 80
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->queryIntentContentProvidersAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static queryIntentServicesAsUser(Landroid/content/pm/PackageManager;Landroid/content/Intent;II)Ljava/util/List;
    .locals 1
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 71
    invoke-static {p3}, Lcom/mega/nexus/content/pm/MegaPackageManager;->convertUserId(I)I

    move-result p3

    .line 72
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static setComponentEnabledSettingAsUser(Landroid/content/ComponentName;III)V
    .locals 1
    .param p0, "componentName"    # Landroid/content/ComponentName;
    .param p1, "newState"    # I
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .line 130
    :try_start_0
    invoke-static {p3}, Lcom/mega/nexus/content/pm/MegaPackageManager;->convertUserId(I)I

    move-result v0

    move p3, v0

    .line 131
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 136
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

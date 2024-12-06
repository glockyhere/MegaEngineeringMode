.class public final Lcom/mega/nexus/bluetooth/MegaBluetoothAdapter;
.super Ljava/lang/Object;
.source "MegaBluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/nexus/bluetooth/MegaBluetoothAdapter$RoleSwitchListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addRoleSwitchListener(Landroid/bluetooth/BluetoothAdapter;Lcom/mega/nexus/bluetooth/MegaBluetoothAdapter$RoleSwitchListener;)V
    .locals 0
    .param p0, "adapter"    # Landroid/bluetooth/BluetoothAdapter;
    .param p1, "listener"    # Lcom/mega/nexus/bluetooth/MegaBluetoothAdapter$RoleSwitchListener;

    .line 55
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAdapter;->addRoleSwitchListener(Landroid/bluetooth/BluetoothAdapter$RoleSwitchListener;)V

    .line 56
    return-void
.end method

.method public static connectAllEnabledProfiles(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p0, "adapter"    # Landroid/bluetooth/BluetoothAdapter;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 71
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAdapter;->connectAllEnabledProfiles(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method public static disconnectAllEnabledProfiles(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p0, "adapter"    # Landroid/bluetooth/BluetoothAdapter;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 76
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAdapter;->disconnectAllEnabledProfiles(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method public static featureRoleSwitchSupported(Landroid/bluetooth/BluetoothAdapter;)Z
    .locals 1
    .param p0, "adapter"    # Landroid/bluetooth/BluetoothAdapter;

    .line 42
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->featureRoleSwitchSupported()Z

    move-result v0

    return v0
.end method

.method public static getConnectionState(Landroid/bluetooth/BluetoothAdapter;)I
    .locals 1
    .param p0, "adapter"    # Landroid/bluetooth/BluetoothAdapter;

    .line 18
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getConnectionState()I

    move-result v0

    return v0
.end method

.method public static getCurrentAvRole(Landroid/bluetooth/BluetoothAdapter;)I
    .locals 1
    .param p0, "adapter"    # Landroid/bluetooth/BluetoothAdapter;

    .line 50
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getCurrentAvRole()I

    move-result v0

    return v0
.end method

.method public static getDiscoveryEndMillis(Landroid/bluetooth/BluetoothAdapter;)J
    .locals 2
    .param p0, "adapter"    # Landroid/bluetooth/BluetoothAdapter;

    .line 26
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getDiscoveryEndMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getSupportedProfiles(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "adapter"    # Landroid/bluetooth/BluetoothAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothAdapter;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 38
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getSupportedProfiles()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getUuids(Landroid/bluetooth/BluetoothAdapter;)[Landroid/os/ParcelUuid;
    .locals 1
    .param p0, "adapter"    # Landroid/bluetooth/BluetoothAdapter;

    .line 14
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    return-object v0
.end method

.method public static removeRoleSwitchListener(Landroid/bluetooth/BluetoothAdapter;Lcom/mega/nexus/bluetooth/MegaBluetoothAdapter$RoleSwitchListener;)V
    .locals 0
    .param p0, "adapter"    # Landroid/bluetooth/BluetoothAdapter;
    .param p1, "listener"    # Lcom/mega/nexus/bluetooth/MegaBluetoothAdapter$RoleSwitchListener;

    .line 60
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAdapter;->removeRoleSwitchListener(Landroid/bluetooth/BluetoothAdapter$RoleSwitchListener;)V

    .line 61
    return-void
.end method

.method public static setDiscoverableTimeout(Landroid/bluetooth/BluetoothAdapter;I)V
    .locals 0
    .param p0, "adapter"    # Landroid/bluetooth/BluetoothAdapter;
    .param p1, "timeout"    # I

    .line 22
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAdapter;->setDiscoverableTimeout(I)V

    .line 23
    return-void
.end method

.method public static setScanMode(Landroid/bluetooth/BluetoothAdapter;I)Z
    .locals 1
    .param p0, "adapter"    # Landroid/bluetooth/BluetoothAdapter;
    .param p1, "mode"    # I

    .line 30
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    move-result v0

    return v0
.end method

.method public static setScanMode(Landroid/bluetooth/BluetoothAdapter;II)Z
    .locals 2
    .param p0, "adapter"    # Landroid/bluetooth/BluetoothAdapter;
    .param p1, "mode"    # I
    .param p2, "duration"    # I

    .line 34
    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(IJ)Z

    move-result v0

    return v0
.end method

.method public static switchAvRole(Landroid/bluetooth/BluetoothAdapter;I)Z
    .locals 1
    .param p0, "adapter"    # Landroid/bluetooth/BluetoothAdapter;
    .param p1, "role"    # I

    .line 46
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAdapter;->switchAvRole(I)Z

    move-result v0

    return v0
.end method

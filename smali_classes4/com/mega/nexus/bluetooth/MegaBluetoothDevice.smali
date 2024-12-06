.class public Lcom/mega/nexus/bluetooth/MegaBluetoothDevice;
.super Ljava/lang/Object;
.source "MegaBluetoothDevice.java"


# static fields
.field public static final ACCESS_ALLOWED:I = 0x1

.field public static final ACCESS_REJECTED:I = 0x2

.field public static final ACCESS_UNKNOWN:I = 0x0

.field public static final ACTION_ALIAS_CHANGED:Ljava/lang/String; = "android.bluetooth.device.action.ALIAS_CHANGED"

.field public static final ACTION_BATTERY_LEVEL_CHANGED:Ljava/lang/String; = "android.bluetooth.device.action.BATTERY_LEVEL_CHANGED"

.field public static ACTION_DISAPPEARED:Ljava/lang/String; = null

.field public static final ACTION_NAME_CHANGED:Ljava/lang/String; = "android.bluetooth.device.action.NAME_CHANGED"

.field public static final ACTION_PAIRING_CANCEL:Ljava/lang/String; = "android.bluetooth.device.action.PAIRING_CANCEL"

.field public static final ACTION_UUID:Ljava/lang/String; = "android.bluetooth.device.action.UUID"

.field public static final BOND_SUCCESS:I = 0x0

.field public static final EXTRA_REASON:Ljava/lang/String; = "android.bluetooth.device.extra.REASON"

.field public static final PAIRING_VARIANT_CONSENT:I = 0x3

.field public static final PAIRING_VARIANT_DISPLAY_PASSKEY:I = 0x4

.field public static final PAIRING_VARIANT_DISPLAY_PIN:I = 0x5

.field public static final PAIRING_VARIANT_OOB_CONSENT:I = 0x6

.field public static final PAIRING_VARIANT_PASSKEY:I = 0x1

.field public static final PAIRING_VARIANT_PIN_16_DIGITS:I = 0x7

.field public static final UNBOND_REASON_AUTH_FAILED:I = 0x1

.field public static final UNBOND_REASON_AUTH_REJECTED:I = 0x2

.field public static final UNBOND_REASON_AUTH_TIMEOUT:I = 0x6

.field public static final UNBOND_REASON_DISCOVERY_IN_PROGRESS:I = 0x5

.field public static final UNBOND_REASON_REMOTE_AUTH_CANCELED:I = 0x8

.field public static final UNBOND_REASON_REMOTE_DEVICE_DOWN:I = 0x4

.field public static final UNBOND_REASON_REPEATED_ATTEMPTS:I = 0x7


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    sget-object v0, Lcom/mega/nexus/bluetooth/MegaBluetoothDeviceAdapter;->ACTION_DISAPPEARED:Ljava/lang/String;

    sput-object v0, Lcom/mega/nexus/bluetooth/MegaBluetoothDevice;->ACTION_DISAPPEARED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelBondProcess(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 52
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->cancelBondProcess()Z

    move-result v0

    return v0
.end method

.method public static convertPinToBytes(Ljava/lang/String;)[B
    .locals 1
    .param p0, "pin"    # Ljava/lang/String;

    .line 100
    invoke-static {p0}, Landroid/bluetooth/BluetoothDevice;->convertPinToBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getAliasName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 1
    .param p0, "bluetoothDevice"    # Landroid/bluetooth/BluetoothDevice;

    .line 92
    invoke-static {p0}, Lcom/mega/nexus/bluetooth/MegaBluetoothDeviceAdapter;->getAliasName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMessageAccessPermission(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 80
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getMessageAccessPermission()I

    move-result v0

    return v0
.end method

.method public static getPhonebookAccessPermission(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 68
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    move-result v0

    return v0
.end method

.method public static getSimAccessPermission(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 88
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getSimAccessPermission()I

    move-result v0

    return v0
.end method

.method public static isBluetoothDock(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 60
    invoke-static {p0}, Lcom/mega/nexus/bluetooth/MegaBluetoothDeviceAdapter;->isBluetoothDock(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method public static isBondingInitiatedLocally(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 64
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isBondingInitiatedLocally()Z

    move-result v0

    return v0
.end method

.method public static isConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p0, "bluetoothDevice"    # Landroid/bluetooth/BluetoothDevice;

    .line 48
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result v0

    return v0
.end method

.method public static removeBond(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 56
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    move-result v0

    return v0
.end method

.method public static setMessageAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 1
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p1, "value"    # I

    .line 76
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDevice;->setMessageAccessPermission(I)Z

    move-result v0

    return v0
.end method

.method public static setPairingConfirmation(Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 1
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p1, "confirm"    # Z

    .line 96
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDevice;->setPairingConfirmation(Z)Z

    move-result v0

    return v0
.end method

.method public static setPasskey(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 1
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p1, "passkey"    # I

    .line 104
    invoke-static {p0, p1}, Lcom/mega/nexus/bluetooth/MegaBluetoothDeviceAdapter;->setPasskey(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v0

    return v0
.end method

.method public static setPhonebookAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 1
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p1, "value"    # I

    .line 72
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    move-result v0

    return v0
.end method

.method public static setRemoteOutOfBandData(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 108
    invoke-static {p0}, Lcom/mega/nexus/bluetooth/MegaBluetoothDeviceAdapter;->setRemoteOutOfBandData(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method public static setSimAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 1
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p1, "value"    # I

    .line 84
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDevice;->setSimAccessPermission(I)Z

    move-result v0

    return v0
.end method

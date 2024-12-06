.class public Lcom/mega/nexus/bluetooth/MegaBluetoothManager;
.super Ljava/lang/Object;
.source "MegaBluetoothManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static factoryReset(Landroid/bluetooth/BluetoothManager;)V
    .locals 1
    .param p0, "manager"    # Landroid/bluetooth/BluetoothManager;

    .line 13
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 14
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->factoryReset()Z

    .line 16
    return-void
.end method

.method public static openGattServer(Landroid/bluetooth/BluetoothManager;Landroid/content/Context;Landroid/bluetooth/BluetoothGattServerCallback;I)Landroid/bluetooth/BluetoothGattServer;
    .locals 1
    .param p0, "bluetoothManager"    # Landroid/bluetooth/BluetoothManager;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Landroid/bluetooth/BluetoothGattServerCallback;
    .param p3, "transport"    # I

    .line 20
    invoke-virtual {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothManager;->openGattServer(Landroid/content/Context;Landroid/bluetooth/BluetoothGattServerCallback;I)Landroid/bluetooth/BluetoothGattServer;

    move-result-object v0

    return-object v0
.end method

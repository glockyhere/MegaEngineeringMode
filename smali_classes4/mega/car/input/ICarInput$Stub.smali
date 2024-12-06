.class public abstract Lmega/car/input/ICarInput$Stub;
.super Landroid/os/Binder;
.source "ICarInput.java"

# interfaces
.implements Lmega/car/input/ICarInput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/car/input/ICarInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmega/car/input/ICarInput$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "mega.car.input.ICarInput"

.field static final TRANSACTION_customEventDownReport:I = 0x4

.field static final TRANSACTION_forceCustomEventDownReport:I = 0x6

.field static final TRANSACTION_releaseInputEventCapture:I = 0x3

.field static final TRANSACTION_requestInputEventCapture:I = 0x2

.field static final TRANSACTION_requestInputEventCaptureWithLevel:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 44
    const-string v0, "mega.car.input.ICarInput"

    invoke-virtual {p0, p0, v0}, Lmega/car/input/ICarInput$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmega/car/input/ICarInput;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 52
    if-nez p0, :cond_0

    .line 53
    const/4 v0, 0x0

    return-object v0

    .line 55
    :cond_0
    const-string v0, "mega.car.input.ICarInput"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 56
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lmega/car/input/ICarInput;

    if-eqz v1, :cond_1

    .line 57
    move-object v1, v0

    check-cast v1, Lmega/car/input/ICarInput;

    return-object v1

    .line 59
    :cond_1
    new-instance v1, Lmega/car/input/ICarInput$Stub$Proxy;

    invoke-direct {v1, p0}, Lmega/car/input/ICarInput$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lmega/car/input/ICarInput;
    .locals 1

    .line 262
    sget-object v0, Lmega/car/input/ICarInput$Stub$Proxy;->sDefaultImpl:Lmega/car/input/ICarInput;

    return-object v0
.end method

.method public static setDefaultImpl(Lmega/car/input/ICarInput;)Z
    .locals 2
    .param p0, "impl"    # Lmega/car/input/ICarInput;

    .line 252
    sget-object v0, Lmega/car/input/ICarInput$Stub$Proxy;->sDefaultImpl:Lmega/car/input/ICarInput;

    if-nez v0, :cond_1

    .line 255
    if-eqz p0, :cond_0

    .line 256
    sput-object p0, Lmega/car/input/ICarInput$Stub$Proxy;->sDefaultImpl:Lmega/car/input/ICarInput;

    .line 257
    const/4 v0, 0x1

    return v0

    .line 259
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 253
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 63
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    const-string v0, "mega.car.input.ICarInput"

    .line 68
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v1, :cond_7

    const/4 v1, 0x3

    if-eq p1, v1, :cond_6

    const/4 v1, 0x4

    const/4 v3, 0x0

    if-eq p1, v1, :cond_4

    const/4 v1, 0x5

    if-eq p1, v1, :cond_3

    const/4 v1, 0x6

    if-eq p1, v1, :cond_1

    const v1, 0x5f4e5446

    if-eq p1, v1, :cond_0

    .line 129
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 72
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    return v2

    .line 119
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 123
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    move v3, v2

    .line 124
    .local v3, "_arg1":Z
    :cond_2
    invoke-virtual {p0, v1, v3}, Lmega/car/input/ICarInput$Stub;->forceCustomEventDownReport(IZ)V

    .line 125
    return v2

    .line 106
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Z
    :cond_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lmega/car/input/ICarInputCallback$Stub;->asInterface(Landroid/os/IBinder;)Lmega/car/input/ICarInputCallback;

    move-result-object v1

    .line 110
    .local v1, "_arg0":Lmega/car/input/ICarInputCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 112
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 113
    .local v4, "_arg2":I
    invoke-virtual {p0, v1, v3, v4}, Lmega/car/input/ICarInput$Stub;->requestInputEventCaptureWithLevel(Lmega/car/input/ICarInputCallback;II)V

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    return v2

    .line 96
    .end local v1    # "_arg0":Lmega/car/input/ICarInputCallback;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :cond_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 100
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    move v3, v2

    .line 101
    .local v3, "_arg1":Z
    :cond_5
    invoke-virtual {p0, v1, v3}, Lmega/car/input/ICarInput$Stub;->customEventDownReport(IZ)V

    .line 102
    return v2

    .line 88
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Z
    :cond_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lmega/car/input/ICarInputCallback$Stub;->asInterface(Landroid/os/IBinder;)Lmega/car/input/ICarInputCallback;

    move-result-object v1

    .line 91
    .local v1, "_arg0":Lmega/car/input/ICarInputCallback;
    invoke-virtual {p0, v1}, Lmega/car/input/ICarInput$Stub;->releaseInputEventCapture(Lmega/car/input/ICarInputCallback;)V

    .line 92
    return v2

    .line 77
    .end local v1    # "_arg0":Lmega/car/input/ICarInputCallback;
    :cond_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lmega/car/input/ICarInputCallback$Stub;->asInterface(Landroid/os/IBinder;)Lmega/car/input/ICarInputCallback;

    move-result-object v1

    .line 81
    .restart local v1    # "_arg0":Lmega/car/input/ICarInputCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 82
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Lmega/car/input/ICarInput$Stub;->requestInputEventCapture(Lmega/car/input/ICarInputCallback;I)V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    return v2
.end method

.class public abstract Lmega/car/input/ICarInputCallback$Stub;
.super Landroid/os/Binder;
.source "ICarInputCallback.java"

# interfaces
.implements Lmega/car/input/ICarInputCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/car/input/ICarInputCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmega/car/input/ICarInputCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "mega.car.input.ICarInputCallback"

.field static final TRANSACTION_onCustomInputEvent:I = 0x3

.field static final TRANSACTION_onKeyEvent:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 35
    const-string v0, "mega.car.input.ICarInputCallback"

    invoke-virtual {p0, p0, v0}, Lmega/car/input/ICarInputCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmega/car/input/ICarInputCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 43
    if-nez p0, :cond_0

    .line 44
    const/4 v0, 0x0

    return-object v0

    .line 46
    :cond_0
    const-string v0, "mega.car.input.ICarInputCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 47
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lmega/car/input/ICarInputCallback;

    if-eqz v1, :cond_1

    .line 48
    move-object v1, v0

    check-cast v1, Lmega/car/input/ICarInputCallback;

    return-object v1

    .line 50
    :cond_1
    new-instance v1, Lmega/car/input/ICarInputCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lmega/car/input/ICarInputCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lmega/car/input/ICarInputCallback;
    .locals 1

    .line 177
    sget-object v0, Lmega/car/input/ICarInputCallback$Stub$Proxy;->sDefaultImpl:Lmega/car/input/ICarInputCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lmega/car/input/ICarInputCallback;)Z
    .locals 2
    .param p0, "impl"    # Lmega/car/input/ICarInputCallback;

    .line 167
    sget-object v0, Lmega/car/input/ICarInputCallback$Stub$Proxy;->sDefaultImpl:Lmega/car/input/ICarInputCallback;

    if-nez v0, :cond_1

    .line 170
    if-eqz p0, :cond_0

    .line 171
    sput-object p0, Lmega/car/input/ICarInputCallback$Stub$Proxy;->sDefaultImpl:Lmega/car/input/ICarInputCallback;

    .line 172
    const/4 v0, 0x1

    return v0

    .line 174
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 168
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 54
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    const-string v0, "mega.car.input.ICarInputCallback"

    .line 59
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const v1, 0x5f4e5446

    if-eq p1, v1, :cond_0

    .line 94
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 63
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    return v2

    .line 81
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    .line 84
    sget-object v1, Lmega/car/input/CustomInputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmega/car/input/CustomInputEvent;

    .local v1, "_arg0":Lmega/car/input/CustomInputEvent;
    goto :goto_0

    .line 87
    .end local v1    # "_arg0":Lmega/car/input/CustomInputEvent;
    :cond_2
    const/4 v1, 0x0

    .line 89
    .restart local v1    # "_arg0":Lmega/car/input/CustomInputEvent;
    :goto_0
    invoke-virtual {p0, v1}, Lmega/car/input/ICarInputCallback$Stub;->onCustomInputEvent(Lmega/car/input/CustomInputEvent;)V

    .line 90
    return v2

    .line 68
    .end local v1    # "_arg0":Lmega/car/input/CustomInputEvent;
    :cond_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    .line 71
    sget-object v1, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    .local v1, "_arg0":Landroid/view/KeyEvent;
    goto :goto_1

    .line 74
    .end local v1    # "_arg0":Landroid/view/KeyEvent;
    :cond_4
    const/4 v1, 0x0

    .line 76
    .restart local v1    # "_arg0":Landroid/view/KeyEvent;
    :goto_1
    invoke-virtual {p0, v1}, Lmega/car/input/ICarInputCallback$Stub;->onKeyEvent(Landroid/view/KeyEvent;)V

    .line 77
    return v2
.end method

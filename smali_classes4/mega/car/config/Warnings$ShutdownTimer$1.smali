.class Lmega/car/config/Warnings$ShutdownTimer$1;
.super Ljava/lang/Object;
.source "Warnings.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/car/config/Warnings$ShutdownTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lmega/car/config/Warnings$ShutdownTimer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 172
    invoke-virtual {p0, p1}, Lmega/car/config/Warnings$ShutdownTimer$1;->createFromParcel(Landroid/os/Parcel;)Lmega/car/config/Warnings$ShutdownTimer;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmega/car/config/Warnings$ShutdownTimer;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 175
    new-instance v0, Lmega/car/config/Warnings$ShutdownTimer;

    invoke-direct {v0, p1}, Lmega/car/config/Warnings$ShutdownTimer;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 172
    invoke-virtual {p0, p1}, Lmega/car/config/Warnings$ShutdownTimer$1;->newArray(I)[Lmega/car/config/Warnings$ShutdownTimer;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lmega/car/config/Warnings$ShutdownTimer;
    .locals 1
    .param p1, "size"    # I

    .line 180
    new-array v0, p1, [Lmega/car/config/Warnings$ShutdownTimer;

    return-object v0
.end method
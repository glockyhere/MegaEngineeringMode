.class Lmega/car/config/KeyInput$Entry$1;
.super Ljava/lang/Object;
.source "KeyInput.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/car/config/KeyInput$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lmega/car/config/KeyInput$Entry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 121
    invoke-virtual {p0, p1}, Lmega/car/config/KeyInput$Entry$1;->createFromParcel(Landroid/os/Parcel;)Lmega/car/config/KeyInput$Entry;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmega/car/config/KeyInput$Entry;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 124
    new-instance v0, Lmega/car/config/KeyInput$Entry;

    invoke-direct {v0, p1}, Lmega/car/config/KeyInput$Entry;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 121
    invoke-virtual {p0, p1}, Lmega/car/config/KeyInput$Entry$1;->newArray(I)[Lmega/car/config/KeyInput$Entry;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lmega/car/config/KeyInput$Entry;
    .locals 1
    .param p1, "size"    # I

    .line 129
    new-array v0, p1, [Lmega/car/config/KeyInput$Entry;

    return-object v0
.end method

.class final Landroidx/legacy/app/FragmentTabHost$SavedState$1;
.super Ljava/lang/Object;
.source "FragmentTabHost.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/legacy/app/FragmentTabHost$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroidx/legacy/app/FragmentTabHost$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/legacy/app/FragmentTabHost$SavedState;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 114
    new-instance v0, Landroidx/legacy/app/FragmentTabHost$SavedState;

    invoke-direct {v0, p1}, Landroidx/legacy/app/FragmentTabHost$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 111
    invoke-virtual {p0, p1}, Landroidx/legacy/app/FragmentTabHost$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Landroidx/legacy/app/FragmentTabHost$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroidx/legacy/app/FragmentTabHost$SavedState;
    .locals 1
    .param p1, "size"    # I

    .line 119
    new-array v0, p1, [Landroidx/legacy/app/FragmentTabHost$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 111
    invoke-virtual {p0, p1}, Landroidx/legacy/app/FragmentTabHost$SavedState$1;->newArray(I)[Landroidx/legacy/app/FragmentTabHost$SavedState;

    move-result-object p1

    return-object p1
.end method

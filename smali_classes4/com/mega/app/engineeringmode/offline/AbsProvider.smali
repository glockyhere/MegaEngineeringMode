.class public abstract Lcom/mega/app/engineeringmode/offline/AbsProvider;
.super Ljava/lang/Object;
.source "AbsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/app/engineeringmode/offline/AbsProvider$Type;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String;


# instance fields
.field protected mDid:I

.field protected mDidSpinner:Landroid/widget/Spinner;

.field protected mVehicleType:I

.field protected mVehicleTypeName:[Ljava/lang/String;

.field protected mVehicleTypeSpinner:Landroid/widget/Spinner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    const-class v0, Lcom/mega/app/engineeringmode/offline/AbsProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mega/app/engineeringmode/offline/AbsProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/widget/Spinner;Landroid/widget/Spinner;)V
    .locals 2
    .param p1, "did"    # Landroid/widget/Spinner;
    .param p2, "vehicleType"    # Landroid/widget/Spinner;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/mega/app/engineeringmode/offline/AbsProvider;->mDid:I

    .line 13
    iput v0, p0, Lcom/mega/app/engineeringmode/offline/AbsProvider;->mVehicleType:I

    .line 26
    iput-object p1, p0, Lcom/mega/app/engineeringmode/offline/AbsProvider;->mDidSpinner:Landroid/widget/Spinner;

    .line 27
    iput-object p2, p0, Lcom/mega/app/engineeringmode/offline/AbsProvider;->mVehicleTypeSpinner:Landroid/widget/Spinner;

    .line 28
    new-instance v0, Lcom/mega/app/engineeringmode/offline/AbsProvider$1;

    invoke-direct {v0, p0}, Lcom/mega/app/engineeringmode/offline/AbsProvider$1;-><init>(Lcom/mega/app/engineeringmode/offline/AbsProvider;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 40
    iget-object v0, p0, Lcom/mega/app/engineeringmode/offline/AbsProvider;->mVehicleTypeSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/mega/app/engineeringmode/offline/AbsProvider$2;

    invoke-direct {v1, p0}, Lcom/mega/app/engineeringmode/offline/AbsProvider$2;-><init>(Lcom/mega/app/engineeringmode/offline/AbsProvider;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 51
    return-void
.end method


# virtual methods
.method abstract getType()Lcom/mega/app/engineeringmode/offline/AbsProvider$Type;
.end method

.method abstract getVehicleConfig()I
.end method

.method abstract getVehicleType()Ljava/lang/String;
.end method

.method abstract init(Landroid/content/Context;I)V
.end method

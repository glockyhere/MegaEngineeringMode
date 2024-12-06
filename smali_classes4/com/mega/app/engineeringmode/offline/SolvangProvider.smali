.class public Lcom/mega/app/engineeringmode/offline/SolvangProvider;
.super Lcom/mega/app/engineeringmode/offline/AbsProvider;
.source "SolvangProvider.java"


# direct methods
.method constructor <init>(Landroid/widget/Spinner;Landroid/widget/Spinner;)V
    .locals 0
    .param p1, "did"    # Landroid/widget/Spinner;
    .param p2, "vehicleType"    # Landroid/widget/Spinner;

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/mega/app/engineeringmode/offline/AbsProvider;-><init>(Landroid/widget/Spinner;Landroid/widget/Spinner;)V

    .line 16
    return-void
.end method


# virtual methods
.method getType()Lcom/mega/app/engineeringmode/offline/AbsProvider$Type;
    .locals 1

    .line 55
    sget-object v0, Lcom/mega/app/engineeringmode/offline/AbsProvider$Type;->SOLVANG:Lcom/mega/app/engineeringmode/offline/AbsProvider$Type;

    return-object v0
.end method

.method getVehicleConfig()I
    .locals 2

    .line 32
    iget v0, p0, Lcom/mega/app/engineeringmode/offline/SolvangProvider;->mDid:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 40
    const/4 v0, 0x0

    return v0

    .line 36
    :cond_0
    const v0, 0x330ffffe

    return v0

    .line 34
    :cond_1
    const v0, 0x330ffffd

    return v0
.end method

.method getVehicleType()Ljava/lang/String;
    .locals 3

    .line 46
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-w /etc/ecu_conf/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mega/app/engineeringmode/offline/SolvangProvider;->mVehicleTypeName:[Ljava/lang/String;

    iget v2, p0, Lcom/mega/app/engineeringmode/offline/SolvangProvider;->mVehicleType:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    sget-object v1, Lcom/mega/app/engineeringmode/offline/SolvangProvider;->TAG:Ljava/lang/String;

    const-string v2, "get Vehicle type error on solvang"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const/4 v0, 0x0

    return-object v0
.end method

.method init(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vehicleType"    # I

    .line 20
    iget-object v0, p0, Lcom/mega/app/engineeringmode/offline/SolvangProvider;->mDidSpinner:Landroid/widget/Spinner;

    const v1, 0x7f030003

    const v2, 0x1090008

    invoke-static {p1, v1, v2}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 22
    iget-object v0, p0, Lcom/mega/app/engineeringmode/offline/SolvangProvider;->mVehicleTypeSpinner:Landroid/widget/Spinner;

    const v1, 0x7f03000c

    invoke-static {p1, v1, v2}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/app/engineeringmode/offline/SolvangProvider;->mVehicleTypeName:[Ljava/lang/String;

    .line 25
    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/mega/app/engineeringmode/offline/SolvangProvider;->mVehicleTypeName:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-gt p2, v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/mega/app/engineeringmode/offline/SolvangProvider;->mVehicleTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 28
    :cond_0
    return-void
.end method

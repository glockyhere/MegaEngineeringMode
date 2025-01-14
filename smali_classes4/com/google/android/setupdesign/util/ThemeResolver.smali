.class public Lcom/google/android/setupdesign/util/ThemeResolver;
.super Ljava/lang/Object;
.source "ThemeResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupdesign/util/ThemeResolver$ThemeSupplier;,
        Lcom/google/android/setupdesign/util/ThemeResolver$Builder;
    }
.end annotation


# static fields
.field private static defaultResolver:Lcom/google/android/setupdesign/util/ThemeResolver;


# instance fields
.field private final defaultTheme:I

.field private final defaultThemeSupplier:Lcom/google/android/setupdesign/util/ThemeResolver$ThemeSupplier;

.field private final oldestSupportedTheme:Ljava/lang/String;

.field private final useDayNight:Z


# direct methods
.method private constructor <init>(ILjava/lang/String;Lcom/google/android/setupdesign/util/ThemeResolver$ThemeSupplier;Z)V
    .locals 0
    .param p1, "defaultTheme"    # I
    .param p2, "oldestSupportedTheme"    # Ljava/lang/String;
    .param p3, "defaultThemeSupplier"    # Lcom/google/android/setupdesign/util/ThemeResolver$ThemeSupplier;
    .param p4, "useDayNight"    # Z

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput p1, p0, Lcom/google/android/setupdesign/util/ThemeResolver;->defaultTheme:I

    .line 70
    iput-object p2, p0, Lcom/google/android/setupdesign/util/ThemeResolver;->oldestSupportedTheme:Ljava/lang/String;

    .line 71
    iput-object p3, p0, Lcom/google/android/setupdesign/util/ThemeResolver;->defaultThemeSupplier:Lcom/google/android/setupdesign/util/ThemeResolver$ThemeSupplier;

    .line 72
    iput-boolean p4, p0, Lcom/google/android/setupdesign/util/ThemeResolver;->useDayNight:Z

    .line 73
    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Lcom/google/android/setupdesign/util/ThemeResolver$ThemeSupplier;ZLcom/google/android/setupdesign/util/ThemeResolver$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/google/android/setupdesign/util/ThemeResolver$ThemeSupplier;
    .param p4, "x3"    # Z
    .param p5, "x4"    # Lcom/google/android/setupdesign/util/ThemeResolver$1;

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/setupdesign/util/ThemeResolver;-><init>(ILjava/lang/String;Lcom/google/android/setupdesign/util/ThemeResolver$ThemeSupplier;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/setupdesign/util/ThemeResolver;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/setupdesign/util/ThemeResolver;

    .line 33
    iget v0, p0, Lcom/google/android/setupdesign/util/ThemeResolver;->defaultTheme:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/setupdesign/util/ThemeResolver;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/setupdesign/util/ThemeResolver;

    .line 33
    iget-object v0, p0, Lcom/google/android/setupdesign/util/ThemeResolver;->oldestSupportedTheme:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/setupdesign/util/ThemeResolver;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/setupdesign/util/ThemeResolver;

    .line 33
    iget-boolean v0, p0, Lcom/google/android/setupdesign/util/ThemeResolver;->useDayNight:Z

    return v0
.end method

.method private static compareThemes(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "theme1"    # Ljava/lang/String;
    .param p1, "theme2"    # Ljava/lang/String;

    .line 196
    invoke-static {p0}, Lcom/google/android/setupdesign/util/ThemeResolver;->getThemeVersion(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/setupdesign/util/ThemeResolver;->getThemeVersion(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method private static getDayNightThemeRes(Ljava/lang/String;)I
    .locals 3
    .param p0, "theme"    # Ljava/lang/String;

    .line 142
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 143
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v2, "glif_light"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1
    const-string v2, "material"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    :sswitch_2
    const-string v2, "glif_v3"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v2, "glif_v2"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "glif"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_5
    const-string v2, "glif_v3_light"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    goto :goto_0

    :sswitch_6
    const-string v2, "material_light"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_7
    const-string v2, "glif_v2_light"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 155
    :pswitch_0
    sget v0, Lcom/google/android/setupdesign/R$style;->SudThemeMaterial_DayNight:I

    return v0

    .line 152
    :pswitch_1
    sget v0, Lcom/google/android/setupdesign/R$style;->SudThemeGlif_DayNight:I

    return v0

    .line 149
    :pswitch_2
    sget v0, Lcom/google/android/setupdesign/R$style;->SudThemeGlifV2_DayNight:I

    return v0

    .line 146
    :pswitch_3
    sget v0, Lcom/google/android/setupdesign/R$style;->SudThemeGlifV3_DayNight:I

    return v0

    .line 160
    :cond_1
    :goto_1
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x7edf2f90 -> :sswitch_7
        -0x4bb9bc02 -> :sswitch_6
        -0x49f8f44f -> :sswitch_5
        0x3074c2 -> :sswitch_4
        0x6e4af19 -> :sswitch_3
        0x6e4af1a -> :sswitch_2
        0x11d36527 -> :sswitch_1
        0x2dc1f359 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getDefault()Lcom/google/android/setupdesign/util/ThemeResolver;
    .locals 2

    .line 54
    sget-object v0, Lcom/google/android/setupdesign/util/ThemeResolver;->defaultResolver:Lcom/google/android/setupdesign/util/ThemeResolver;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/google/android/setupdesign/util/ThemeResolver$Builder;

    invoke-direct {v0}, Lcom/google/android/setupdesign/util/ThemeResolver$Builder;-><init>()V

    sget v1, Lcom/google/android/setupdesign/R$style;->SudThemeGlif_DayNight:I

    .line 57
    invoke-virtual {v0, v1}, Lcom/google/android/setupdesign/util/ThemeResolver$Builder;->setDefaultTheme(I)Lcom/google/android/setupdesign/util/ThemeResolver$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 58
    invoke-virtual {v0, v1}, Lcom/google/android/setupdesign/util/ThemeResolver$Builder;->setUseDayNight(Z)Lcom/google/android/setupdesign/util/ThemeResolver$Builder;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/google/android/setupdesign/util/ThemeResolver$Builder;->build()Lcom/google/android/setupdesign/util/ThemeResolver;

    move-result-object v0

    sput-object v0, Lcom/google/android/setupdesign/util/ThemeResolver;->defaultResolver:Lcom/google/android/setupdesign/util/ThemeResolver;

    .line 61
    :cond_0
    sget-object v0, Lcom/google/android/setupdesign/util/ThemeResolver;->defaultResolver:Lcom/google/android/setupdesign/util/ThemeResolver;

    return-object v0
.end method

.method private static getThemeRes(Ljava/lang/String;)I
    .locals 3
    .param p0, "theme"    # Ljava/lang/String;

    .line 169
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 170
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v2, "glif_light"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1
    const-string v2, "material"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    :sswitch_2
    const-string v2, "glif_v3"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v2, "glif_v2"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "glif"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_5
    const-string v2, "glif_v3_light"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    goto :goto_0

    :sswitch_6
    const-string v2, "material_light"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_7
    const-string v2, "glif_v2_light"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 186
    :pswitch_0
    sget v0, Lcom/google/android/setupdesign/R$style;->SudThemeMaterial:I

    return v0

    .line 184
    :pswitch_1
    sget v0, Lcom/google/android/setupdesign/R$style;->SudThemeMaterial_Light:I

    return v0

    .line 182
    :pswitch_2
    sget v0, Lcom/google/android/setupdesign/R$style;->SudThemeGlif:I

    return v0

    .line 180
    :pswitch_3
    sget v0, Lcom/google/android/setupdesign/R$style;->SudThemeGlif_Light:I

    return v0

    .line 178
    :pswitch_4
    sget v0, Lcom/google/android/setupdesign/R$style;->SudThemeGlifV2:I

    return v0

    .line 176
    :pswitch_5
    sget v0, Lcom/google/android/setupdesign/R$style;->SudThemeGlifV2_Light:I

    return v0

    .line 174
    :pswitch_6
    sget v0, Lcom/google/android/setupdesign/R$style;->SudThemeGlifV3:I

    return v0

    .line 172
    :pswitch_7
    sget v0, Lcom/google/android/setupdesign/R$style;->SudThemeGlifV3_Light:I

    return v0

    .line 191
    :cond_1
    :goto_1
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x7edf2f90 -> :sswitch_7
        -0x4bb9bc02 -> :sswitch_6
        -0x49f8f44f -> :sswitch_5
        0x3074c2 -> :sswitch_4
        0x6e4af19 -> :sswitch_3
        0x6e4af1a -> :sswitch_2
        0x11d36527 -> :sswitch_1
        0x2dc1f359 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getThemeVersion(Ljava/lang/String;)I
    .locals 6
    .param p0, "theme"    # Ljava/lang/String;

    .line 204
    const/4 v0, -0x1

    if-eqz p0, :cond_1

    .line 205
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x4

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "glif_light"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v5

    goto :goto_1

    :sswitch_1
    const-string v1, "material"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_2
    const-string v1, "glif_v3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_1

    :sswitch_3
    const-string v1, "glif_v2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_1

    :sswitch_4
    const-string v1, "glif"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_5
    const-string v1, "glif_v3_light"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_6
    const-string v1, "material_light"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_7
    const-string v1, "glif_v2_light"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_1

    :goto_0
    move v1, v0

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 217
    :pswitch_0
    return v2

    .line 214
    :pswitch_1
    return v3

    .line 211
    :pswitch_2
    return v4

    .line 208
    :pswitch_3
    return v5

    .line 222
    :cond_1
    :goto_2
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7edf2f90 -> :sswitch_7
        -0x4bb9bc02 -> :sswitch_6
        -0x49f8f44f -> :sswitch_5
        0x3074c2 -> :sswitch_4
        0x6e4af19 -> :sswitch_3
        0x6e4af1a -> :sswitch_2
        0x11d36527 -> :sswitch_1
        0x2dc1f359 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static setDefault(Lcom/google/android/setupdesign/util/ThemeResolver;)V
    .locals 0
    .param p0, "resolver"    # Lcom/google/android/setupdesign/util/ThemeResolver;

    .line 47
    sput-object p0, Lcom/google/android/setupdesign/util/ThemeResolver;->defaultResolver:Lcom/google/android/setupdesign/util/ThemeResolver;

    .line 48
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 131
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/util/ThemeResolver;->resolve(Landroid/content/Intent;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTheme(I)V

    .line 132
    return-void
.end method

.method public resolve(Landroid/content/Intent;)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 83
    nop

    .line 84
    const-string v0, "theme"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {p1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result v1

    .line 83
    invoke-virtual {p0, v0, v1}, Lcom/google/android/setupdesign/util/ThemeResolver;->resolve(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public resolve(Ljava/lang/String;)I
    .locals 1
    .param p1, "theme"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 99
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/setupdesign/util/ThemeResolver;->resolve(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public resolve(Ljava/lang/String;Z)I
    .locals 2
    .param p1, "theme"    # Ljava/lang/String;
    .param p2, "suppressDayNight"    # Z

    .line 111
    iget-boolean v0, p0, Lcom/google/android/setupdesign/util/ThemeResolver;->useDayNight:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    invoke-static {p1}, Lcom/google/android/setupdesign/util/ThemeResolver;->getDayNightThemeRes(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/google/android/setupdesign/util/ThemeResolver;->getThemeRes(Ljava/lang/String;)I

    move-result v0

    .line 112
    .local v0, "themeResource":I
    :goto_0
    if-nez v0, :cond_3

    .line 113
    iget-object v1, p0, Lcom/google/android/setupdesign/util/ThemeResolver;->defaultThemeSupplier:Lcom/google/android/setupdesign/util/ThemeResolver$ThemeSupplier;

    if-eqz v1, :cond_2

    .line 114
    invoke-interface {v1}, Lcom/google/android/setupdesign/util/ThemeResolver$ThemeSupplier;->getTheme()Ljava/lang/String;

    move-result-object p1

    .line 116
    iget-boolean v1, p0, Lcom/google/android/setupdesign/util/ThemeResolver;->useDayNight:Z

    if-eqz v1, :cond_1

    if-nez p2, :cond_1

    invoke-static {p1}, Lcom/google/android/setupdesign/util/ThemeResolver;->getDayNightThemeRes(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lcom/google/android/setupdesign/util/ThemeResolver;->getThemeRes(Ljava/lang/String;)I

    move-result v1

    :goto_1
    move v0, v1

    .line 118
    :cond_2
    if-nez v0, :cond_3

    .line 119
    iget v1, p0, Lcom/google/android/setupdesign/util/ThemeResolver;->defaultTheme:I

    return v1

    .line 123
    :cond_3
    iget-object v1, p0, Lcom/google/android/setupdesign/util/ThemeResolver;->oldestSupportedTheme:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-static {p1, v1}, Lcom/google/android/setupdesign/util/ThemeResolver;->compareThemes(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_4

    .line 124
    iget v1, p0, Lcom/google/android/setupdesign/util/ThemeResolver;->defaultTheme:I

    return v1

    .line 126
    :cond_4
    return v0
.end method

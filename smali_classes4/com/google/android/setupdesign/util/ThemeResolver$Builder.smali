.class public Lcom/google/android/setupdesign/util/ThemeResolver$Builder;
.super Ljava/lang/Object;
.source "ThemeResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/setupdesign/util/ThemeResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private defaultTheme:I

.field private defaultThemeSupplier:Lcom/google/android/setupdesign/util/ThemeResolver$ThemeSupplier;

.field private oldestSupportedTheme:Ljava/lang/String;

.field private useDayNight:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    sget v0, Lcom/google/android/setupdesign/R$style;->SudThemeGlif_DayNight:I

    iput v0, p0, Lcom/google/android/setupdesign/util/ThemeResolver$Builder;->defaultTheme:I

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/setupdesign/util/ThemeResolver$Builder;->oldestSupportedTheme:Ljava/lang/String;

    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/setupdesign/util/ThemeResolver$Builder;->useDayNight:Z

    .line 232
    return-void
.end method

.method public constructor <init>(Lcom/google/android/setupdesign/util/ThemeResolver;)V
    .locals 1
    .param p1, "themeResolver"    # Lcom/google/android/setupdesign/util/ThemeResolver;

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    sget v0, Lcom/google/android/setupdesign/R$style;->SudThemeGlif_DayNight:I

    iput v0, p0, Lcom/google/android/setupdesign/util/ThemeResolver$Builder;->defaultTheme:I

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/setupdesign/util/ThemeResolver$Builder;->oldestSupportedTheme:Ljava/lang/String;

    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/setupdesign/util/ThemeResolver$Builder;->useDayNight:Z

    .line 235
    invoke-static {p1}, Lcom/google/android/setupdesign/util/ThemeResolver;->access$000(Lcom/google/android/setupdesign/util/ThemeResolver;)I

    move-result v0

    iput v0, p0, Lcom/google/android/setupdesign/util/ThemeResolver$Builder;->defaultTheme:I

    .line 236
    invoke-static {p1}, Lcom/google/android/setupdesign/util/ThemeResolver;->access$100(Lcom/google/android/setupdesign/util/ThemeResolver;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/setupdesign/util/ThemeResolver$Builder;->oldestSupportedTheme:Ljava/lang/String;

    .line 237
    invoke-static {p1}, Lcom/google/android/setupdesign/util/ThemeResolver;->access$200(Lcom/google/android/setupdesign/util/ThemeResolver;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/setupdesign/util/ThemeResolver$Builder;->useDayNight:Z

    .line 238
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/setupdesign/util/ThemeResolver;
    .locals 7

    .line 261
    new-instance v6, Lcom/google/android/setupdesign/util/ThemeResolver;

    iget v1, p0, Lcom/google/android/setupdesign/util/ThemeResolver$Builder;->defaultTheme:I

    iget-object v2, p0, Lcom/google/android/setupdesign/util/ThemeResolver$Builder;->oldestSupportedTheme:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/setupdesign/util/ThemeResolver$Builder;->defaultThemeSupplier:Lcom/google/android/setupdesign/util/ThemeResolver$ThemeSupplier;

    iget-boolean v4, p0, Lcom/google/android/setupdesign/util/ThemeResolver$Builder;->useDayNight:Z

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/setupdesign/util/ThemeResolver;-><init>(ILjava/lang/String;Lcom/google/android/setupdesign/util/ThemeResolver$ThemeSupplier;ZLcom/google/android/setupdesign/util/ThemeResolver$1;)V

    return-object v6
.end method

.method public setDefaultTheme(I)Lcom/google/android/setupdesign/util/ThemeResolver$Builder;
    .locals 0
    .param p1, "defaultTheme"    # I

    .line 246
    iput p1, p0, Lcom/google/android/setupdesign/util/ThemeResolver$Builder;->defaultTheme:I

    .line 247
    return-object p0
.end method

.method public setDefaultThemeSupplier(Lcom/google/android/setupdesign/util/ThemeResolver$ThemeSupplier;)Lcom/google/android/setupdesign/util/ThemeResolver$Builder;
    .locals 0
    .param p1, "defaultThemeSupplier"    # Lcom/google/android/setupdesign/util/ThemeResolver$ThemeSupplier;

    .line 241
    iput-object p1, p0, Lcom/google/android/setupdesign/util/ThemeResolver$Builder;->defaultThemeSupplier:Lcom/google/android/setupdesign/util/ThemeResolver$ThemeSupplier;

    .line 242
    return-object p0
.end method

.method public setOldestSupportedTheme(Ljava/lang/String;)Lcom/google/android/setupdesign/util/ThemeResolver$Builder;
    .locals 0
    .param p1, "oldestSupportedTheme"    # Ljava/lang/String;

    .line 251
    iput-object p1, p0, Lcom/google/android/setupdesign/util/ThemeResolver$Builder;->oldestSupportedTheme:Ljava/lang/String;

    .line 252
    return-object p0
.end method

.method public setUseDayNight(Z)Lcom/google/android/setupdesign/util/ThemeResolver$Builder;
    .locals 0
    .param p1, "useDayNight"    # Z

    .line 256
    iput-boolean p1, p0, Lcom/google/android/setupdesign/util/ThemeResolver$Builder;->useDayNight:Z

    .line 257
    return-object p0
.end method
